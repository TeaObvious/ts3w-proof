# Load/save native operation boundaries
Uses the [PC 1.67 reference binaries](../../references/retained-proof-overview.md). Native handle transport,
manager save/load dispatch, profile string/variant adaptation and SaveWorld
completion are separate contracts. The [original managed LoadSaveManager](../../evidence/managed/types/ScriptCore.LoadSaveManager.cs)
retains managed serializer authority; a native writer table is not that
serializer or a complete implementation of its object restoration workflow.
## Canonical pairs and stored-body limits
The 32 actual annotated C projections retain their complete exported text,
including warnings and uncertain projected prototypes. Twenty-two existing
bodies contain 5,815 pristine bytes and 2,022 actual Listing instructions. The
DispatchSave envelope also contains three nonowned alignment bytes at 00AAF83D,
represented explicitly as bytes rather than owned instructions.

Ten other entries each have a one-address-byte stored body and **zero actual
Listing instructions**. Their separate pristine PE windows total 388 bytes.
Four of those windows are only five-byte tail jumps; they are not repaired
function bodies. No decoded PE instruction is promoted to existing Listing.
Calling convention, argument widths, stack accounting and AL returns below
come from physical instruction evidence plus pristine managed declarations,
not an assumption that the stored inferred prototype is complete.
| Entry and role | Original ASM (annotated C) | Coverage |
| --- | --- | --- |
| `00742b60` ScriptCore.LoadSaveManager::LoadSaveManager_LoadNativeObject | [ASM](../../evidence/native/functions/00742B60_ScriptCore_LoadSaveManager_LoadSaveManager_LoadNativeObject.asm) ([C](../../evidence/native/functions/00742B60_ScriptCore_LoadSaveManager_LoadSaveManager_LoadNativeObject.c)) | 62 owned bytes / 25 actual Listing instructions |
| `00742ba0` ScriptCore.LoadSaveManager::LoadSaveManager_SaveNativeObject | [ASM](../../evidence/native/functions/00742BA0_ScriptCore_LoadSaveManager_LoadSaveManager_SaveNativeObject.asm) ([C](../../evidence/native/functions/00742BA0_ScriptCore_LoadSaveManager_LoadSaveManager_SaveNativeObject.c)) | 63 owned bytes / 27 actual Listing instructions |
| `00742be0` ScriptCore.LoadSaveManager::LoadSaveManager_CreateNativeWriter | [ASM](../../evidence/native/functions/00742BE0_ScriptCore_LoadSaveManager_LoadSaveManager_CreateNativeWriter.asm) ([C](../../evidence/native/functions/00742BE0_ScriptCore_LoadSaveManager_LoadSaveManager_CreateNativeWriter.c)) | one-byte metadata, zero Listing; 80-byte bounded PE window |
| `00742c40` ScriptCore.LoadSaveManager::LoadSaveManager_SaveGame_Impl | [ASM](../../evidence/native/functions/00742C40_ScriptCore_LoadSaveManager_LoadSaveManager_SaveGame_Impl.asm) ([C](../../evidence/native/functions/00742C40_ScriptCore_LoadSaveManager_LoadSaveManager_SaveGame_Impl.c)) | 77 owned bytes / 36 actual Listing instructions |
| `00742c90` ScriptCore.LoadSaveManager::LoadSaveManager_ResetSaveLocation_Impl | [ASM](../../evidence/native/functions/00742C90_ScriptCore_LoadSaveManager_LoadSaveManager_ResetSaveLocation_Impl.asm) ([C](../../evidence/native/functions/00742C90_ScriptCore_LoadSaveManager_LoadSaveManager_ResetSaveLocation_Impl.c)) | one-byte metadata, zero Listing; 32-byte bounded PE window |
| `00742cb0` ScriptCore.LoadSaveManager::LoadSaveManager_LoadGame_Impl | [ASM](../../evidence/native/functions/00742CB0_ScriptCore_LoadSaveManager_LoadSaveManager_LoadGame_Impl.asm) ([C](../../evidence/native/functions/00742CB0_ScriptCore_LoadSaveManager_LoadSaveManager_LoadGame_Impl.c)) | one-byte metadata, zero Listing; 80-byte bounded PE window |
| `00742d00` ScriptCore.LoadSaveManager::LoadSaveManager_GetCurrentGameGuid_Impl | [ASM](../../evidence/native/functions/00742D00_ScriptCore_LoadSaveManager_LoadSaveManager_GetCurrentGameGuid_Impl.asm) ([C](../../evidence/native/functions/00742D00_ScriptCore_LoadSaveManager_LoadSaveManager_GetCurrentGameGuid_Impl.c)) | one-byte metadata, zero Listing; 48-byte bounded PE window |
| `00742d30` DirectTargetOf_LoadSaveManager_LoadSaveManager_SaveChallengeData | [ASM](../../evidence/native/functions/00742D30_DirectTargetOf_LoadSaveManager_LoadSaveManager_SaveChallengeData.asm) ([C](../../evidence/native/functions/00742D30_DirectTargetOf_LoadSaveManager_LoadSaveManager_SaveChallengeData.c)) | 100 owned bytes / 50 actual Listing instructions |
| `00742da0` DirectTargetOf_LoadSaveManager_LoadSaveManager_SavePassportData | [ASM](../../evidence/native/functions/00742DA0_DirectTargetOf_LoadSaveManager_LoadSaveManager_SavePassportData.asm) ([C](../../evidence/native/functions/00742DA0_DirectTargetOf_LoadSaveManager_LoadSaveManager_SavePassportData.c)) | 100 owned bytes / 50 actual Listing instructions |
| `00742e60` ScriptCore.LoadSaveManager::LoadSaveManager_DestroyNativeWriter | [ASM](../../evidence/native/functions/00742E60_ScriptCore_LoadSaveManager_LoadSaveManager_DestroyNativeWriter.asm) ([C](../../evidence/native/functions/00742E60_ScriptCore_LoadSaveManager_LoadSaveManager_DestroyNativeWriter.c)) | 62 owned bytes / 24 actual Listing instructions |
| `00742ea0` ScriptCore.LoadSaveManager::LoadSaveManager_SaveChallengeData | [ASM](../../evidence/native/functions/00742EA0_ScriptCore_LoadSaveManager_LoadSaveManager_SaveChallengeData.asm) ([C](../../evidence/native/functions/00742EA0_ScriptCore_LoadSaveManager_LoadSaveManager_SaveChallengeData.c)) | one-byte metadata, zero Listing; 5-byte bounded PE window |
| `00742eb0` ScriptCore.LoadSaveManager::LoadSaveManager_SavePassportData | [ASM](../../evidence/native/functions/00742EB0_ScriptCore_LoadSaveManager_LoadSaveManager_SavePassportData.asm) ([C](../../evidence/native/functions/00742EB0_ScriptCore_LoadSaveManager_LoadSaveManager_SavePassportData.c)) | one-byte metadata, zero Listing; 5-byte bounded PE window |
| `00742ef0` ScriptCore.LoadSaveManager::LoadSaveManager_GetCurrentSaveGameInfo_Impl | [ASM](../../evidence/native/functions/00742EF0_ScriptCore_LoadSaveManager_LoadSaveManager_GetCurrentSaveGameInfo_Impl.asm) ([C](../../evidence/native/functions/00742EF0_ScriptCore_LoadSaveManager_LoadSaveManager_GetCurrentSaveGameInfo_Impl.c)) | one-byte metadata, zero Listing; 64-byte bounded PE window |
| `00742f30` ScriptCore.LoadSaveManager::LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl | [ASM](../../evidence/native/functions/00742F30_ScriptCore_LoadSaveManager_LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl.asm) ([C](../../evidence/native/functions/00742F30_ScriptCore_LoadSaveManager_LoadSaveManager_ReleaseLoadSaveFileInfoHandle_Impl.c)) | one-byte metadata, zero Listing; 64-byte bounded PE window |
| `00743250` ScriptCore.LoadSaveManager::LoadSaveManager_CreateLoadSaveFileInfo_Impl | [ASM](../../evidence/native/functions/00743250_ScriptCore_LoadSaveManager_LoadSaveManager_CreateLoadSaveFileInfo_Impl.asm) ([C](../../evidence/native/functions/00743250_ScriptCore_LoadSaveManager_LoadSaveManager_CreateLoadSaveFileInfo_Impl.c)) | 182 owned bytes / 73 actual Listing instructions |
| `00743310` ScriptCore.LoadSaveManager::LoadSaveManager_GetLoadSaveFileInfoID_Impl | [ASM](../../evidence/native/functions/00743310_ScriptCore_LoadSaveManager_LoadSaveManager_GetLoadSaveFileInfoID_Impl.asm) ([C](../../evidence/native/functions/00743310_ScriptCore_LoadSaveManager_LoadSaveManager_GetLoadSaveFileInfoID_Impl.c)) | 223 owned bytes / 69 actual Listing instructions |
| `007433f0` DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadChallengeData | [ASM](../../evidence/native/functions/007433F0_DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadChallengeData.asm) ([C](../../evidence/native/functions/007433F0_DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadChallengeData.c)) | 298 owned bytes / 111 actual Listing instructions |
| `00743520` DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadPassportData | [ASM](../../evidence/native/functions/00743520_DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadPassportData.asm) ([C](../../evidence/native/functions/00743520_DirectTargetOf_LoadSaveManager_LoadSaveManager_LoadPassportData.c)) | 298 owned bytes / 111 actual Listing instructions |
| `00743650` ScriptCore.LoadSaveManager::LoadSaveManager_LoadChallengeData | [ASM](../../evidence/native/functions/00743650_ScriptCore_LoadSaveManager_LoadSaveManager_LoadChallengeData.asm) ([C](../../evidence/native/functions/00743650_ScriptCore_LoadSaveManager_LoadSaveManager_LoadChallengeData.c)) | one-byte metadata, zero Listing; 5-byte bounded PE window |
| `00743660` ScriptCore.LoadSaveManager::LoadSaveManager_LoadPassportData | [ASM](../../evidence/native/functions/00743660_ScriptCore_LoadSaveManager_LoadSaveManager_LoadPassportData.asm) ([C](../../evidence/native/functions/00743660_ScriptCore_LoadSaveManager_LoadSaveManager_LoadPassportData.c)) | one-byte metadata, zero Listing; 5-byte bounded PE window |
| `00743670` SaveWorldProcess_RequestLotJobs | [ASM](../../evidence/native/functions/00743670_SaveWorldProcess_RequestLotJobs.asm) ([C](../../evidence/native/functions/00743670_SaveWorldProcess_RequestLotJobs.c)) | 519 owned bytes / 178 actual Listing instructions |
| `00743880` ScriptCore.LoadSaveManager::LoadSaveManager_SaveWorld | [ASM](../../evidence/native/functions/00743880_ScriptCore_LoadSaveManager_LoadSaveManager_SaveWorld.asm) ([C](../../evidence/native/functions/00743880_ScriptCore_LoadSaveManager_LoadSaveManager_SaveWorld.c)) | 238 owned bytes / 78 actual Listing instructions |
| `007d41f0` PersistWriter_ReleaseOwnedStorage | [ASM](../../evidence/native/functions/007D41F0_PersistWriter_ReleaseOwnedStorage.asm) ([C](../../evidence/native/functions/007D41F0_PersistWriter_ReleaseOwnedStorage.c)) | 173 owned bytes / 58 actual Listing instructions |
| `007d42a0` PersistWriter_ConstructStorage | [ASM](../../evidence/native/functions/007D42A0_PersistWriter_ConstructStorage.asm) ([C](../../evidence/native/functions/007D42A0_PersistWriter_ConstructStorage.c)) | 181 owned bytes / 42 actual Listing instructions |
| `007d4360` PersistWriter_IndexNativeHandle | [ASM](../../evidence/native/functions/007D4360_PersistWriter_IndexNativeHandle.asm) ([C](../../evidence/native/functions/007D4360_PersistWriter_IndexNativeHandle.c)) | 138 owned bytes / 60 actual Listing instructions |
| `007d43f0` PersistWriter_WriteNativeHandle | [ASM](../../evidence/native/functions/007D43F0_PersistWriter_WriteNativeHandle.asm) ([C](../../evidence/native/functions/007D43F0_PersistWriter_WriteNativeHandle.c)) | 158 owned bytes / 67 actual Listing instructions |
| `007d4550` PersistWriter_BuildHandleTagFactoryMap | [ASM](../../evidence/native/functions/007D4550_PersistWriter_BuildHandleTagFactoryMap.asm) ([C](../../evidence/native/functions/007D4550_PersistWriter_BuildHandleTagFactoryMap.c)) | 370 owned bytes / 127 actual Listing instructions |
| `007d4750` PersistWriter_Begin | [ASM](../../evidence/native/functions/007D4750_PersistWriter_Begin.asm) ([C](../../evidence/native/functions/007D4750_PersistWriter_Begin.c)) | 8 owned bytes / 3 actual Listing instructions |
| `007d4760` PersistWriter_IndexNativeObject | [ASM](../../evidence/native/functions/007D4760_PersistWriter_IndexNativeObject.asm) ([C](../../evidence/native/functions/007D4760_PersistWriter_IndexNativeObject.c)) | 165 owned bytes / 63 actual Listing instructions |
| `00aaa810` LoadSave_WriteWorldPackageState | [ASM](../../evidence/native/functions/00AAA810_LoadSave_WriteWorldPackageState.asm) ([C](../../evidence/native/functions/00AAA810_LoadSave_WriteWorldPackageState.c)) | 624 owned bytes / 203 actual Listing instructions |
| `00aaf6c0` LoadSaveManager_DispatchSave | [ASM](../../evidence/native/functions/00AAF6C0_LoadSaveManager_DispatchSave.asm) ([C](../../evidence/native/functions/00AAF6C0_LoadSaveManager_DispatchSave.c)) | 1145 owned bytes / 356 actual Listing instructions |
| `00aafb40` LoadSaveManager_DispatchLoad | [ASM](../../evidence/native/functions/00AAFB40_LoadSaveManager_DispatchLoad.asm) ([C](../../evidence/native/functions/00AAFB40_LoadSaveManager_DispatchLoad.c)) | 631 owned bytes / 211 actual Listing instructions |

## Typed native handles and writer ownership
LoadNativeObject requires reader high tag 41h; SaveNativeObject accepts writer
high tags 42h or 44h. Both resolve through host slot CCh. The reader call uses
slot +8 and the writer index call uses +4; invalid paths retain FFFFFFFFh. The
physical wrappers pass reader/index or writer/object arguments even where a
stored prototype projects only one parameter.

CreateNativeWriter allocates a 9Ch-byte writer, constructs its storage, begins
its factory map and registers type 44h. Its constructor installs vtable
0101B290. Slot zero binds IndexNativeObject; +4 binds IndexNativeHandle; +Ch
binds the separate stream-write route. The original
[data excerpts](../../evidence/native/loadsave-operation-data.tsv) retain this
vtable and the package-header key, totaling 32 necessary data bytes.

IndexNativeHandle first resolves the high-tag factory and converts the native
object through interface +1Ch; only then does slot zero deduplicate the
converted pointer. IndexNativeObject returns an existing ordered-vector index
for a duplicate pointer and acquires/appends only a new entry. Zero or
unsupported handles and null pointers retain the all-ones failure index. The
related WriteNativeHandle path writes to the stream and accumulates status;
it is not the index-return route.

Begin retains physical ECX writer state despite a zero-parameter projection.
It enumerates factory interface 0519E079, obtains counts and byte tags, builds
the writer map and returns AL true. ReleaseOwnedStorage releases containers
and context storage; DestroyNativeWriter separately releases the writer
allocation. These are distinct ownership operations.

The data table separately retains a 96-byte pristine PE reference window at
007D3CB0. That reader target has no stored function/export; the bytes are bounded
evidence only. No matching pseudocode or complete Listing body is invented.
## File info and string/variant boundaries
CreateLoadSaveFileInfo converts a wide ID, rejects missing/empty text and
passes a real stack output pointer to manager 00AAB460 before type-40h
registration. A decompiled null output pointer is a stack-tracking artifact.
GetCurrentSaveGameInfo increments the referenced current-info object before
registration. GetLoadSaveFileInfoID publishes a string variant through host
+50h; the original managed return uses StringFromVariantMarshaler, rather than
an unowned BSTR pointer. ReleaseLoadSaveFileInfoHandle uses host D8h, decrements
the reference and invokes deletion at zero. Its normal return sets AL true even
for an unknown handle; a missing host returns AL false.

Challenge/passport save entries are five-byte transfers to their real bodies.
Those bodies receive XML-wide pointer, uint length and profile-wide pointer as
three physical stack arguments, convert through host +58h and require manager
and nonempty XML before their respective backend calls. Load counterparts
reject empty profile, initialize the result to NotLoaded, call their respective
backend and publish through host +50h with cleanup. The original managed
marshaler remains part of the returned-string contract. These adapter bodies do
not by themselves establish the called backends' complete disk policy.
## Save/load and completion
The registered SaveGame entry is 00742C40 and returns the EAX uint status from
DispatchSave. ResetSaveLocation is a separate entry and dispatch. Current GUID
returns the manager +58h qword in EDX:EAX or zero when unavailable. DispatchSave
retains distinct travel/mode and staged status paths. Its selected package
writer opens the authenticated header resource, writes S3-NUL/version/buffer
and caption/flag/GUID state, then calls additional-state, world-state and final
producers in order. Failure stages return 9, 10, 11, 12 or 13. Those child
producers remain bounded; this is not proof of a complete executed world save.

LoadGame dispatches to the separate manager load body and returns AL bool.
Package/mode/path selection, selected 00AAB6E0 load call and temporary cleanup
remain distinct from save dispatch. A selected call to travel database
configuration 00AAD150 does not imply unconditional database writes.

SaveWorld allocates a 40h-byte process when its world gate permits and submits
the callback to RequestLotJobs. The process captures the yielding identity,
filters selected jobs with flag 4, installs completion target 00743220,
schedules work and enters the original yielding callback path. Failure publishes
a false BOOL variant through host +134h. The original managed consumer expects
completion bool; merely retaining an opaque pointer does not implement this
protocol. Called job execution and later completion remain bounded here.

These static contracts preserve original managed serializer and callback
authority. They do not certify a save/quit/reload cycle, general native-object
serialization, or equivalence of a managed persistence implementation.
