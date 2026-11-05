# Native travel databases and transfer — PC 1.67

## Separate storage owners

The original code has three related storage paths. Their ownership and lifetimes differ:

| Storage | Original owner/fields | Purpose and lifetime |
| --- | --- | --- |
| Saved world | LoadSaveManager and World | Save the current home/destination world before unloading; later load the selected world or `save:worldMember`. |
| Temporary travel bin | DownloadContent manager `DAT_011ea6a4`, memory database at `+0x88` | Export/import household content and referenced inventory resources across a world switch. Reset before a new export, acquire/release interfaces around each transfer. |
| TravelDB and export DB | SimStorage reached through owner `+0x664`; slot descriptors `+0x40/+0x74`, database pointers `+0x70/+0xa4` | Retain portable Sim records and other cross-world resources. Paths are configured for the current save; TravelDB uses literal `TravelDB.package`, export storage uses a world-derived `ExportDB.package`. |

The temporary bin is an original `UI/ExportBin/MemoryDB` object. It is not a disk TravelDB renamed to another file. Conversely, `World.DeleteTravelDBResource` is not limited to exported Sims: original consumers include life-event snapshots, data-disc disposal and time-statue destruction. The [bounded managed call edges](managed/call-edges.tsv) expose these adjacent consumers. [Life-event producer/consumer C#](managed/LifeEventManager.travel.cs) ([IL](managed/LifeEventManager.travel.il.txt)) captures photos through World, stores the returned ResourceKey, and deletes a snapshot when the memory becomes invisible.

## Managed payload and key layouts

[ScriptCore.DownloadContent](../../evidence/managed/types/ScriptCore.DownloadContent.cs) exports managed content into a resource-key byte table, a `ulong[]` object-ID table and script bytes. `SaveTravelSim` passes those plus the outfit ResourceKey and an in/out export key. The [native save ASM](../../evidence/native/functions/00997C10_ScriptCore_DownloadContent_DownloadContent_SaveTravelSim.asm) ([annotated pseudocode](../../evidence/native/functions/00997C10_ScriptCore_DownloadContent_DownloadContent_SaveTravelSim.c)) consumes all three array handles, converts both keys, calls the SimStorage writer, and writes the converted export key back **only after Boolean success**. Failure returns AL 0 and leaves that caller key unchanged.

| Representation | Offset 0 | Offset 4 | Offset 8 | Offset 12 |
| --- | --- | --- | --- | --- |
| Managed ResourceKey,16 bytes | TypeId 32 | GroupId 32 | InstanceId low 32 | InstanceId high 32 |
| Native resource key,16 bytes | InstanceId low 32 | InstanceId high 32 | TypeId 32 | GroupId 32 |

The original [ResourceKey C#](../../evidence/managed/types/SimIFace.ResourceKey.cs) ([IL](../../evidence/managed/types/SimIFace.ResourceKey.il.txt)) establishes the managed field order. Native deletion, save and import all use the original reorder rather than reinterpreting one layout as the other.

The [payload producer ASM](../../evidence/native/functions/00997A10_DownloadContent_MarshalSimContentPayload.asm) ([pseudocode](../../evidence/native/functions/00997A10_DownloadContent_MarshalSimContentPayload.c)) receives an explicit result pointer plus the three array handles. It creates Sim content of type `0x04f88964`; populates key-list, object-ID and script-data fields; and returns a 16-byte result with Boolean status in byte 0, host pointer at+4, SimStorage pointer at+8 and content pointer at+12. Object IDs have 8-byte stride and a signed positive-count test. The annotated C records an indirect-call cleanup artifact that substitutes the result pointer for scriptData; the original pushes at `0x00997aac..0x00997ac2` establish the real argument.

## Sim records, dependencies and readers

[SimStorage writer ASM](../../evidence/native/functions/009CB700_SimStorage_SaveTravelSim.asm) ([pseudocode](../../evidence/native/functions/009CB700_SimStorage_SaveTravelSim.c)) has this in ECX, three pointer arguments and RET 12. Null content fails. It keeps the content at+0xf0, opens TravelDB under the owner's critical section if needed, opens the export DB if needed, checks export DB capability bit `0x2`, and invokes [the record/dependency writer ASM](../../evidence/native/functions/009CB0D0_SimStorage_WriteSimRecordAndDependencies.asm) ([pseudocode](../../evidence/native/functions/009CB0D0_SimStorage_WriteSimRecordAndDependencies.c)) with flag 1 and the TravelDB pointer. After that write call it releases the held content and clears+0xf0. Earlier failures do not execute that release in this body; allocation failure/ownership beyond it remain open.

The dependency writer:

- requires a non-null export context;
- reuses a supplied nonzero 64-bit InstanceId and its full key;
- requests a fresh key when the supplied key is absent or its InstanceId is zero;
- uses the flag's low bit for the travel record group;
- writes the Sim content and referenced resources, including special cases for types `0x025ed6f4` and`0x00b2d882`;
- exposes Boolean success from the serialization stages.

The large function's decompiler has indirect-call stack artifacts. Its entry ABI, key selection, masks and constants were checked in original instructions; the full virtual resource/DBPF implementations and every dependency subtype are not claimed decoded.

[GetImportedSimResourceKeys ASM](../../evidence/native/functions/00996340_ScriptCore_DownloadContent_DownloadContent_GetImportedSimResourceKeys.asm) ([pseudocode](../../evidence/native/functions/00996340_ScriptCore_DownloadContent_DownloadContent_GetImportedSimResourceKeys.c)) chooses one of two original predicate functors:

| Predicate | Exact original condition | Evidence |
| --- | --- | --- |
| Normal imports | TypeId`0x04f88964`, GroupId bit 0 clear | [ASM](../../evidence/native/functions/00995400_DownloadContent_IsNonTravelSimKey.asm) ([pseudocode](../../evidence/native/functions/00995400_DownloadContent_IsNonTravelSimKey.c)) |
| Travel imports | TypeId`0x04f88964`, GroupId bit 0 set | [ASM](../../evidence/native/functions/00995420_DownloadContent_IsTravelSimKey.asm) ([pseudocode](../../evidence/native/functions/00995420_DownloadContent_IsTravelSimKey.c)) |

Both predicates take an internal key pointer, return full EAX 0/1 and use RET 4. The parent returns the signed key count and serializes a key table as a 32-bit count plus 16 bytes per key. Other GroupId bits are not rejected by these predicates.

[ImportSimDescription ASM](../../evidence/native/functions/00996110_ScriptCore_DownloadContent_DownloadContent_ImportSimDescriptionImpl.asm) ([pseudocode](../../evidence/native/functions/00996110_ScriptCore_DownloadContent_DownloadContent_ImportSimDescriptionImpl.c)) reads by ResourceKey through the resource host, obtains the Sim content interface, and publishes corresponding script bytes, byte key table and 64-bit object IDs back to the managed caller. Its output marshaling remains a host virtual-call boundary; the annotations distinguish those calls from Ghidra's apparent null-address global artifacts.

[MiniSimDescription C#](managed/MiniSimDescription.travel.cs) ([IL](managed/MiniSimDescription.travel.il.txt)) is an actual consumer of the pair. `SetMemberFields` packs the description's outfit/record under its retained `mTravelKey`. `PackOutfitToDisk` checks that the Everyday outfit is valid but does not inspect SaveTravelSim's Boolean before returning true. `UnpackSim` imports the saved description, restores the MiniSim's stable description ID and runs Fixup; it also does not inspect ImportSimDescription's Boolean as a complete load-success gate. Importing a native record alone does not therefore prove that the resulting Sim is playable.

### Fresh-key generation

[Key-generator ASM](../../evidence/native/functions/0099A2B0_DownloadContent_GenerateUnusedResourceKey.asm) ([pseudocode](../../evidence/native/functions/0099A2B0_DownloadContent_GenerateUnusedResourceKey.c)) normally constructs the instance from two 32-bit generator outputs: first output shifted left 32, OR second output. The original shift helper's ABI is EDX:EAX value and CL count; CL is 32. Ghidra's printed `__allshl(0x20,0)` is not the original numeric formula. Original TypeId/GroupId are retained.

It performs up to 5000 collision attempts against resource-host lookups, owner lookups and an optional supplied key range. Exhaustion returns the last candidate without a separate failure value. Type`0x220557da` takes a distinct helper outside this generator branch. The thin [caller ASM](../../evidence/native/functions/0099A9D0_DownloadContent_GenerateSimRecordKey.asm) ([pseudocode](../../evidence/native/functions/0099A9D0_DownloadContent_GenerateSimRecordKey.c)) supplies no optional range. These are generator rules, not a guarantee of collision-free output under every failure condition.

## Temporary household bin and remapping

The corresponding managed `Bin.ExportHouseholdForTravel` / `ImportHouseholdForTravel` methods are preserved in [C#](managed/Bin.travel.cs) ([IL](managed/Bin.travel.il.txt)).

[Export entry ASM](../../evidence/native/functions/00996080_ScriptCore_DownloadContent_DownloadContent_ExportLotContentsToTravelBinImpl.asm) ([pseudocode](../../evidence/native/functions/00996080_ScriptCore_DownloadContent_DownloadContent_ExportLotContentsToTravelBinImpl.c)) resets the old temporary bin, acquires a new memory database, adapts it as a stream and passes the full 64-bit content ID into [the content export helper ASM](../../evidence/native/functions/00AD4E80_LotContent_ExportHouseholdToTravelDatabase.asm) ([pseudocode](../../evidence/native/functions/00AD4E80_LotContent_ExportHouseholdToTravelDatabase.c)). That helper obtains the source content database, copies dependencies and writes/remaps the selected content into the supplied bin. The registered export entry is void and does not propagate the helper status.

[Import entry ASM](../../evidence/native/functions/00995FF0_ScriptCore_DownloadContent_DownloadContent_ImportHouseholdContentsFromTravelBinImpl.asm) ([pseudocode](../../evidence/native/functions/00995FF0_ScriptCore_DownloadContent_DownloadContent_ImportHouseholdContentsFromTravelBinImpl.c)) acquires the same temporary bin and invokes [the household import helper ASM](../../evidence/native/functions/00AD6150_LotContent_ImportTravelHouseholdAndRemapId.asm) ([pseudocode](../../evidence/native/functions/00AD6150_LotContent_ImportTravelHouseholdAndRemapId.c)). It reads the HouseholdTypeKeyList for type `0x062853a8`, selects its first household entry, obtains the destination content database, generates a fresh content ID, copies resources and applies the original resource`0x00283095` old/new-ID read/write/remap path. Success returns EDX:EAX as the new 64-bit content ID; missing host/database/content yields zero. The managed household reader uses that ID rather than retaining the exported content ID.

The [creator ASM](../../evidence/native/functions/009A1870_DownloadContent_CreateTravelBinMemoryDatabase.asm) ([pseudocode](../../evidence/native/functions/009A1870_DownloadContent_CreateTravelBinMemoryDatabase.c)) allocates a 0xa0-byte MemoryDB, opens it with virtual mode arguments `(3,6,0)` and attaches it to the resource host. Failure detaches/closes/releases and clears the output. [Acquire ASM](../../evidence/native/functions/009A19E0_DownloadContent_AcquireTravelBinDatabase.asm) ([pseudocode](../../evidence/native/functions/009A19E0_DownloadContent_AcquireTravelBinDatabase.c)) writes and retains the database only when present. Callers release its secondary interface after disposing their stream adapter. [Reset ASM](../../evidence/native/functions/009A1980_DownloadContent_ResetTravelBinDatabase.asm) ([pseudocode](../../evidence/native/functions/009A1980_DownloadContent_ResetTravelBinDatabase.c)) detaches it from the resource host, invokes close/reset operations, clears the manager's+0x88 pointer and releases the secondary interface. These paired acquisition and release operations establish the temporary database lifetime.

## Permanent paths, commit and deletion

[Path configuration ASM](../../evidence/native/functions/00AAD150_LoadSave_ConfigureCurrentTravelDatabases.asm) ([pseudocode](../../evidence/native/functions/00AAD150_LoadSave_ConfigureCurrentTravelDatabases.c)) builds the CurrentGame.sims3 path and current-world export name. [SimStorage configuration ASM](../../evidence/native/functions/009CA420_SimStorage_ConfigureTravelAndExportPaths.asm) ([pseudocode](../../evidence/native/functions/009CA420_SimStorage_ConfigureTravelAndExportPaths.c)) resets its auxiliary slot, configures the TravelDB slot with the literal filename under a critical section, configures ExportDB and stores the mode byte. [Slot replacement ASM](../../evidence/native/functions/009CA280_SimStorage_ReplaceDatabaseSlotPath.asm) ([pseudocode](../../evidence/native/functions/009CA280_SimStorage_ReplaceDatabaseSlotPath.c)) detaches/closes/releases an old database before clearing or replacing its path/name. [Open ASM](../../evidence/native/functions/009C9A00_SimStorage_OpenDatabaseSlot.asm) ([pseudocode](../../evidence/native/functions/009C9A00_SimStorage_OpenDatabaseSlot.c)) allocates the original DBPF object and opens its configured slot with mode arguments `(3,2,0)`.

The original save dispatcher calls [commit dispatch ASM](../../evidence/native/functions/009C8B80_SimStorage_CommitOpenDatabases.asm) ([pseudocode](../../evidence/native/functions/009C8B80_SimStorage_CommitOpenDatabases.c)) before saving the world. It invokes virtual+0x24 for each open TravelDB/export database. This proves commit-call ordering, not durable filesystem completion of the virtual implementation.

[Delete entry ASM](../../evidence/native/functions/00785890_ScriptCore_World_World_DeleteTravelDBResource.asm) ([pseudocode](../../evidence/native/functions/00785890_ScriptCore_World_World_DeleteTravelDBResource.c)) converts the 16-byte key and calls [delete dispatch ASM](../../evidence/native/functions/009C8B60_SimStorage_DeleteTravelResource.asm) ([pseudocode](../../evidence/native/functions/009C8B60_SimStorage_DeleteTravelResource.c)). The latter returns AL 0 if no TravelDB is open, otherwise tail-dispatches database vtable+0x40 with the original key pointer. The wrapper assumes its global owner exists and does not add an owner null check.

[Current-game directory reset ASM](../../evidence/native/functions/00AAD630_LoadSave_ResetCurrentGameDirectoryForTravelDatabases.asm) ([pseudocode](../../evidence/native/functions/00AAD630_LoadSave_ResetCurrentGameDirectoryForTravelDatabases.c)) clears paths, processes CurrentGame.sims3 and reconfigures the databases. Its two filesystem retry loops have 10-attempt limits and 500 ms waits. Those waits must not be mistaken for travel animation or routing completion timers.

## Additional loading context

[Load-world scheduling ASM](../../evidence/native/functions/00EC7650_GameState_QueueWorldLoad.asm) ([pseudocode](../../evidence/native/functions/00EC7650_GameState_QueueWorldLoad.c)) and [not-in-world scheduling ASM](../../evidence/native/functions/00EC71B0_GameState_QueueNotInWorld.asm) ([pseudocode](../../evidence/native/functions/00EC71B0_GameState_QueueNotInWorld.c)) are cdecl functions with a state-machine pointer on the stack; ECX is used only when they call the queue. Their caller bridge [not-in-world ASM](../../evidence/native/functions/00EC1330_ScriptCore_GameUtils_GameUtils_TransitionToNotInWorldImpl.asm) ([pseudocode](../../evidence/native/functions/00EC1330_ScriptCore_GameUtils_GameUtils_TransitionToNotInWorldImpl.c)) confirms stack cleanup. The [scene-ready constructor ASM](../../evidence/native/functions/00EC1920_SceneReadyNotifier_Construct.asm) ([pseudocode](../../evidence/native/functions/00EC1920_SceneReadyNotifier_Construct.c)) stores the host event handle and scene mask and returns the notifier pointer in EAX. Scheduling, construction and callback completion are separate states.

## Verification and remaining boundaries

All 34 canonical native pairs in this extension were exported from the explicitly selected original `/TS3W.exe`. Complete function envelopes total 7982 bytes and match the original executable's PE-backed bytes in Ghidra memory. The save/delete/load-world/not-in-world one-byte Ghidra bodies were recovered to their final original RET boundaries; both previously undefined key predicates were defined at verified RET boundaries. Original code bytes were not modified.

This was executed static verification and annotation/export work. No database transaction, save/reload or world travel was executed. Open boundaries include virtual DBPF implementations/durability, all resource-remapping internals, early-failure content ownership, native readiness predicates and callbacks, and original package tuning that overrides managed tunable defaults. The [world-travel contract](world-travel.md) separates those limits from the established managed gameplay stages.
