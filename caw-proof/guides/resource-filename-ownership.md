# Original resource filename ownership

Reference: [shipped CAW 1.22.10 Common module](../README.md#original-module-identities).
Analyst-assigned names describe the reviewed native contracts.

## Admission and lifetime

The [config startup](../evidence/native/Sims3Common/functions/103890B0_CAW_ConfigInitializeEditorOverlays.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/103890B0_CAW_ConfigInitializeEditorOverlays.c)) overlays `Default.ini`,
`Default.local.ini`, the application-name INI and its `.local.ini` in that order.
For the editor the latter pair is `worldbuilder.ini` and
`worldbuilder.local.ini`. The [INI reader](../evidence/native/Sims3Common/functions/1038BA40_CAW_ConfigRegistryReadIni.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1038BA40_CAW_ConfigRegistryReadIni.c)) invokes its
[section callback](../evidence/native/Sims3Common/functions/1038BA20_CAW_ConfigRegistryLoadSection.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1038BA20_CAW_ConfigRegistryLoadSection.c)) and
[value callback](../evidence/native/Sims3Common/functions/1038B980_CAW_ConfigRegistryLoadValue.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1038B980_CAW_ConfigRegistryLoadValue.c)); the
[registry writer](../evidence/native/Sims3Common/functions/1038AB80_CAW_ConfigRegistryStoreValue.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1038AB80_CAW_ConfigRegistryStoreValue.c)) overwrites an existing normalized
section/key value. Inheritance is resolved by the reader.

The [resource initialization](../evidence/native/Sims3Common/functions/1052B070_CAW_InitializeConfiguredResourceSystem.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1052B070_CAW_InitializeConfiguredResourceSystem.c)) obtains `ResourceSystem` /
`LoadHashTables` through the [raw value getter](../evidence/native/Sims3Common/functions/1038A530_CAW_ConfigRegistryGetRawValue.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1038A530_CAW_ConfigRegistryGetRawValue.c)).
That getter returns AL success and a borrowed UTF-16 value through its output
pointer. Exact comparison with `L"1"` enables byte +764, exact `L"0"` disables
it, and missing or other values preserve its previous state. Construction starts
with the flag false; this caller does not parse a general boolean.

The [filename-map loader](../evidence/native/Sims3Common/functions/10528650_CAW_ResourceSystemLoadFilenameMaps.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10528650_CAW_ResourceSystemLoadFilenameMaps.c)) runs on lookup when the flag
admits maps and owned list +758 is empty. It enumerates type `0166038C`,
sorts/deduplicates complete resource keys, opens each winning database resource,
and appends the decoded maps in that order. A nonempty list is reused. If no map
was appended, a subsequent lookup can retry. The
[resource-system destructor](../evidence/native/Sims3Common/functions/10528E20_CAW_ResourceSystemDestroy.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10528E20_CAW_ResourceSystemDestroy.c)) releases this owned list;
ordinary package closure or cache flushing does not reconstruct it.

## Map order and names

The [key sort](../evidence/native/Sims3Common/functions/108E5080_CAW_ResourceKeySortAndUnique.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E5080_CAW_ResourceKeySortAndUnique.c)) reaches
[native key comparison](../evidence/native/Sims3Common/functions/103B66D0_CAW_ResourceKeyInsertionSort.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/103B66D0_CAW_ResourceKeyInsertionSort.c)). The physical key words are
instance-low, instance-high, type, group; unsigned comparison order is
instance-low, instance-high, group, type. Thus sorting the instance as one
unsigned 64-bit integer is different. The
[global key enumerator](../evidence/native/Sims3Common/functions/10529060_CAW_ResourceSystemEnumerateSortedKeys.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10529060_CAW_ResourceSystemEnumerateSortedKeys.c)) uses this sort/unique path;
per-database enumeration is a separate virtual method.

The [NMAP reader](../evidence/native/Sims3Common/functions/105221E0_CAW_KeyNameMapRead.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/105221E0_CAW_KeyNameMapRead.c)) consumes version/count and raw name bytes;
it does not reject a non-one version. A malformed later row can leave a decoded
prefix, and the loader appends the map without testing the reader result.
The [map insertion](../evidence/native/Sims3Common/functions/10521DF0_CAW_KeyNameMapInsertFirst.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10521DF0_CAW_KeyNameMapInsertFirst.c)) retains the first duplicate instance,
including an empty name. The [map lookup](../evidence/native/Sims3Common/functions/10521C90_CAW_KeyNameMapFindInstance.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10521C90_CAW_KeyNameMapFindInstance.c)) compares only the
full 64-bit instance. Request type/group do not narrow the associated lookup.
The first map with an instance hit wins; an empty hit is distinct from a miss.

The exported filename converter uses
[UTF-8-to-UTF-16 conversion](../evidence/native/Sims3Common/functions/10926DB0_CAW_FilenameConvertUtf8ToUtf16.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10926DB0_CAW_FilenameConvertUtf8ToUtf16.c)) and
[original encoding conversion](../evidence/native/Sims3Common/functions/10927300_CAW_OriginalStringEncodingConvert.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10927300_CAW_OriginalStringEncodingConvert.c)). Each accepted UTF-8 sequence
produces one UTF-16 unit. Four-byte sequences retain the low 16 bits, rather than
producing a surrogate pair; accepted surrogate code units remain possible.
Malformed or incomplete input stops conversion. The raw name is NUL terminated.
A generic replacement-fallback UTF-8 decoder therefore changes this contract.

## Separate resource-manager names

The [GetNameForKey export](../evidence/native/Sims3Common/functions/1098A460_ResourceMgr_GetNameForKey.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1098A460_ResourceMgr_GetNameForKey.c)) selects its winning database
through [database selection](../evidence/native/Sims3Common/functions/108E5140_CAW_ResourceManagerDatabaseForKey.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E5140_CAW_ResourceManagerDatabaseForKey.c)) and calls
[directory-name query](../evidence/native/Sims3Common/functions/108E4AC0_CAW_ResourceDirectoryNameForKey.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E4AC0_CAW_ResourceDirectoryNameForKey.c)). Only interface type `34728492`
admits that query. The DBPF path yields an empty allocated BSTR, which lets the
retained managed filename wrapper continue to associated filename lookup.
It does not return an authored NMAP name through this API.

The [input-name parser](../evidence/native/Sims3Common/functions/108E4830_CAW_ResourceKeyParseName.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E4830_CAW_ResourceKeyParseName.c)) acquires the global manager for
unresolved nonnumeric extensions only when the supplied type is zero. Its
[full-key name writer](../evidence/native/Sims3Common/functions/108E79E0_CAW_ResourceManagerRememberKeyName.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E79E0_CAW_ResourceManagerRememberKeyName.c)) replaces an owned input-name mapping
at +118; [full-key name removal](../evidence/native/Sims3Common/functions/108E72B0_CAW_ResourceManagerForgetKeyName.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E72B0_CAW_ResourceManagerForgetKeyName.c)) erases it, and the internal
[debug-name formatter](../evidence/native/Sims3Common/functions/108E6E80_CAW_ResourceManagerGetKeyDebugName.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E6E80_CAW_ResourceManagerGetKeyDebugName.c)) consumes it. These are separate from
the global type-name registry and associated NMAP list. The
[FileType config parser](../evidence/native/Sims3Common/functions/108D7E40_CAW_ResourceConfigParse.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108D7E40_CAW_ResourceConfigParse.c)) populates configuration-local
extension tables; that branch does not write the global type-name registry.

## Package close and final references

The [ClosePackage export](../evidence/native/Sims3Common/functions/1098AC80_ResourceMgr_ClosePackage.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1098AC80_ResourceMgr_ClosePackage.c)) accepts one uint database ID
and returns EAX 0/1. It removes the owned ID while holding a temporary database
reference, flushes writable DBPF state, invokes manager virtual +34 and releases
the held reference. Missing manager/ID returns 0. The
[resource-system registration change](../evidence/native/Sims3Common/functions/10529470_CAW_ResourceSystemChangeDatabaseRegistration.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10529470_CAW_ResourceSystemChangeDatabaseRegistration.c)) removes lookup/cache
associations for that database and calls
[manager owner removal](../evidence/native/Sims3Common/functions/108E82E0_CAW_ResourceManagerChangeDatabaseOwner.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108E82E0_CAW_ResourceManagerChangeDatabaseOwner.c)). It does not clear the associated
filename-map list. The selected [original vtable pointers](../evidence/native/Sims3Common/resource-close-data.tsv) identify the dispatch targets.

Removal calls [the DB registration callback](../evidence/native/Sims3Common/functions/108DCCB0_CAW_DbManagerRegistrationChanged.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108DCCB0_CAW_DbManagerRegistrationChanged.c)), which clears
the owning manager and returns AL 1. Original MOV at 108E842D captures that AL
result; Ghidra currently omits the assignment and misleadingly displays a zero
local result. The instructions govern successful close.

The [reference-count getter](../evidence/native/Sims3Common/functions/1093CC80_CAW_DbReferenceCount.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/1093CC80_CAW_DbReferenceCount.c)) identifies the final database
owner. Only count 1 triggers [Shutdown](../evidence/native/Sims3Common/functions/108DCD60_CAW_DbpfShutdown.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108DCD60_CAW_DbpfShutdown.c)) before erasure and
reference release. Other live references preserve the database. Shutdown calls
[DBPF Close](../evidence/native/Sims3Common/functions/108DEDE0_CAW_DbpfClose.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108DEDE0_CAW_DbpfClose.c)) and
[owned IO closure](../evidence/native/Sims3Common/functions/108DE680_CAW_DbpfCloseOwnedIo.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108DE680_CAW_DbpfCloseOwnedIo.c)), whose
[current-stream close](../evidence/native/Sims3Common/functions/108DD840_CAW_DbpfCloseCurrentStream.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108DD840_CAW_DbpfCloseCurrentStream.c)) reaches
[OS-handle close](../evidence/native/Sims3Common/functions/109104C0_CAW_FileStreamCloseOsHandle.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/109104C0_CAW_FileStreamCloseOsHandle.c)): valid HANDLEs are passed to CloseHandle
and reset to INVALID_HANDLE_VALUE. Closure is physical and database-scoped.

Final [database reference release](../evidence/native/Sims3Common/functions/103DB090_CAW_DbReferenceRelease.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/103DB090_CAW_DbReferenceRelease.c)) dispatches
[the deleting destructor](../evidence/native/Sims3Common/functions/108DEDC0_CAW_DbpfDeletingDestructor.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108DEDC0_CAW_DbpfDeletingDestructor.c)) and
[database destruction](../evidence/native/Sims3Common/functions/108DE5D0_CAW_DbpfDestroy.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/108DE5D0_CAW_DbpfDestroy.c)). The embedded
[file-stream destructor](../evidence/native/Sims3Common/functions/10910890_CAW_FileStreamDestroy.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10910890_CAW_FileStreamDestroy.c)) also closes a surviving valid
handle. The separate [stream reference release](../evidence/native/Sims3Common/functions/10910250_CAW_FileStreamReferenceRelease.asm) ([annotated pseudocode](../evidence/native/Sims3Common/functions/10910250_CAW_FileStreamReferenceRelease.c)) owns its
reference count; it is distinct from the explicit CloseHandle method.
