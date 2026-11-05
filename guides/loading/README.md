# TS3W.exe PC 1.67 — loading, packages and managed resources

This dossier is readable without Ghidra. It contains original PC 1.67 `TS3W.exe` PE32 x86 byte ranges (`native/bytes`), their disassembly (`native/disassembly`), 14 captured Ghidra decompiler exports (`native/pseudocode`), Ghidra xref readbacks, links to managed C# decompilations, P/Invoke metadata, original string bytes, and an address-level direct-call graph. The linked managed files are decompiler output from retail `ScriptCore.dll` in `scripts.package`.

## What is directly supported

| Chain | Evidence and result |
| --- | --- |
| Managed DataFactory object load | In [ScriptCore.DataFactory.cs](../../evidence/managed/types/ScriptCore.DataFactory.cs), `LoadObject(ResourceKey)` calls `DataFactory_GetPrototypeResourceImpl`, obtains a data-class resource, reads native class/assembly names, resolves `Type.GetType`, finds a factory, reads XML, and invokes `LoadXML`. Its visible null branches release the prototype pointer. [registered-boundaries.json](registered-boundaries.json) gives all seven matching verified native registration records, tokens, P/Invoke signatures and original native byte exports. |
| Prototype resource bridge | Registration row `0x0115edf0` stores native pointer `0x00740030` and the managed name string for `DataFactory_GetPrototypeResourceImpl`. [Original instructions](../../evidence/native/functions/00740030_ScriptCore_DataFactory_DataFactory_GetPrototypeResourceImpl.asm) ([annotated pseudocode](../../evidence/native/functions/00740030_ScriptCore_DataFactory_DataFactory_GetPrototypeResourceImpl.c)) call global-interface getter `0x00769390`, then vtable slot `+0x17c` and the resulting interface's slot `+0x34`. The [Ghidra export](native/pseudocode/00740030.c.txt) renders this as a forwarding wrapper; its `void` prototype contradicts the pristine managed `IntPtr` return and must not be treated as an ABI proof. `0x00740060` calls slot `+0x38` for the data-class resource; `0x00740100` calls slot `+0x4c` for XML. These are indirect calls, so the downstream resource implementation is not yet identified. |
| Script package startup | [Original string bytes](native/string-witnesses.json) contain `scripts.package`, `simcore.package`, `gameplay.package` and `Gameplay\GameplayData.package`. Ghidra xrefs place all four in function `0x00769730`; its [decompiler export](native/pseudocode/00769730.c.txt) shows configurable `allscripts`, `systemscripts`, `gameplayscripts` roots, then calls a resource interface for the four paths and returns false on observed failures. Original [raw instructions](../../evidence/native/functions/00769730_ScriptPackages_ConfigureStartupRootsAndLoad.asm) ([annotated pseudocode](../../evidence/native/functions/00769730_ScriptPackages_ConfigureStartupRootsAndLoad.c)) and [xref readback](native/ghidra-xrefs.json) independently show caller site `0x00d77907`. A raw-instruction function candidate begins at `0x00d77820`: its [bounded disassembly](../../evidence/native/functions/00D77820_MonoScriptHost_InitializeAndMountPackages.asm) ([annotated pseudocode](../../evidence/native/functions/00D77820_MonoScriptHost_InitializeAndMountPackages.c)) calls `0x00769730` at `0x00d77907` and, after a checked return, calls `0x00d75bb0` at `0x00d77930`. Ghidra missed this entry; the immediately preceding function ends in `RET`/`INT3`, and this candidate ends at `0x00d77b3a` in `RET 0x10`/`INT3`. |
| Managed image and assembly work | `MonoScriptHost_CheckCoreAssemblyResourceVersions` at `0x00d75bb0` builds ten core S3SA keys and compares each present resource interface's UTF-16 version payload with literal `0.2.0.209`. Absent/mismatched version strings return AL false; failed resource lookup/interface cases are skipped. It does not itself establish resource-to-CLR conversion or trust/signature policy. String xrefs associate `Scratch/MonoscriptHost/LoadImage/BuildStr16` with `0x00d75bb0` and `Scripting/MonoScriptHost/Assemblies` with `0x00d79ee0`. The startup candidate calls the former directly. Their [native bytes](native/bytes/00d75bb0.bin), [disassembly](../../evidence/native/functions/00D75BB0_MonoScriptHost_CheckCoreAssemblyResourceVersions.asm) ([annotated pseudocode](../../evidence/native/functions/00D75BB0_MonoScriptHost_CheckCoreAssemblyResourceVersions.c)), [pseudocode](native/pseudocode/00d75bb0.c.txt), and [assembly-list pseudocode](native/pseudocode/00d79ee0.c.txt) are exported. The latter has an incoming call at `0x00d7e454` in `0x00d7e1a0`. The exact resource-to-CLR image conversion and signature/trust policy remain unresolved; string labels alone do not prove that policy. |
| Packed files and content | `ResourceLoad/PackedFile/RecordRead` has xrefs in helper `0x004a6be0`; its [pseudocode](native/pseudocode/004a6be0.c.txt) allocates the named record-reader object and delegates to `0x004ae1b0`. `ResourceSystem/ResourceMan/DBPF` has xref in `0x004a9470`, whose [export](native/pseudocode/004a9470.c.txt) contains a temporary DBPF path, record transfer, and commit-like calls. The 70-row catalog also includes cache, world-file search, CSV, DownloadContent package import, CAS loads and world-load wrappers. See the [direct-call graph](direct-call-graph.json); virtual calls are intentionally absent. |

`0x00769390` is a global-interface pointer getter: original bytes are `A1 BC 5B 1D 01 C3` (`mov eax,[0x011d5bbc]; ret`). Some decompiler exports preserve an earlier, over-specific `SACS_GetManager` label. Read that name as `GetGlobalInterfacePointer_11D5BBC`; it is used across unrelated subsystems.

## Catalog and evidence format

- [registered-boundaries.json](registered-boundaries.json) lists 70 registration rows selected for loading. Each includes the 8-byte name/function table record, managed token, signature, P/Invoke metadata, export limits, and paths to its `.bin` and `.asm.txt` files. Every one of these 70 ranges reaches the next saved Ghidra entry before the 2,048-byte cap. This does **not** itself prove that the function body is complete: Ghidra has missed entries (as at `0x00d77820`).
- [internal-boundaries.json](internal-boundaries.json) indexes eight selected unregistered helpers and their exported bytes. [direct-call-graph.json](direct-call-graph.json) records 32-bit direct `CALL rel32` edges found in the exported disassembly; it does not include virtual/indirect calls.
- [native/ghidra-decompiler-exports.json](native/ghidra-decompiler-exports.json) indexes the 14 captured pseudocode exports, including warning markers. [native/ghidra-xrefs.json](native/ghidra-xrefs.json) records the queried xrefs, including registration-data and original-string references. [native/string-witnesses.json](native/string-witnesses.json) preserves the exact null-terminated original string bytes and file offsets.
- [ScriptCore.CacheManager.cs](../../evidence/managed/types/ScriptCore.CacheManager.cs), [ScriptCore.GameUtils.cs](../../evidence/managed/types/ScriptCore.GameUtils.cs), and [ScriptCore.DataFactory.cs](../../evidence/managed/types/ScriptCore.DataFactory.cs) provide full managed caller-side decompilations for cache, world-file, CSV, and resource paths. These are matched to the registration records by exact metadata names and tokens, not by a guessed PE export name. `Sims3Common.dll` is the managed P/Invoke module name; the independently audited TS3W.exe registration table supplies the native pointer in this process.

## Boundaries and unresolved questions

The original-byte exports and C# decompilation establish static call paths, not an observed game session. Ghidra pseudocode can assign wrong parameter labels or truncate functions around indirect host calls; the original instruction stream and managed metadata take precedence. The resource interface behind DataFactory's vtable `+0x17c`, exact DBPF index/read implementation, script image extraction, Mono assembly verification and runtime mount order beyond this static path remain open. The `0x004a9470` DBPF helper shows a temporary-file/write path; it is not proof that DataFactory's resource lookup uses that particular function. No full-file reproduction, custom package load, or negative malformed-package test was run for this dossier.

The native instruction windows, registration records, strings and managed code
provide the named static paths for offline inspection.

## Sims3Pack container reader

The [container and entry-stream contract](sims3pack.md) covers header/manifest transfer, original content-type mapping and bounded payload reads. It does not establish complete installation behavior.

## Name/GUID maps

The [NGMP contract](name-guid-maps.md) follows factory selection, bounded row decoding, unique insertion, ordered provider publication and native UTF-16 hashing. Locale and physical provider priority remain open.

## Resource reference tables

The [REFS contract](reference-store.md) follows version-dependent headers, configured handle widths, duplicate replacement and local-key sets through paired native reader/writer paths.

[Handle and ordinal consumers](resource-reference-key-maps.md) retain explicit narrow/wide lookup, wall lane defaults, full-key compositor identity, preset suffixes and SeaLife row state.

[LoadTick and selected pump mechanisms](load-tick-and-pump.md) establish void callback dispatch, elapsed/thread gating and selected service order. They do not close resource staging or simulation readiness.

## State controller and quit request

[Original request, queue/pending dispatch and teardown](state-controller-and-quit.md)
retains eleven complete native bodies and their physical ABI limits. Request
admission is separate from scheduler progress and process termination.

## Installed application startup

The [application startup presentation](application-startup-presentation.md) covers nine complete annotated native bodies, physical callback/timer sequencing, caption transitions and progress clip arithmetic. It distinguishes the large/small installed startup tree from the managed world/save controller and authored host failure panel. Product/text/effect readers remain explicit follow-up boundaries.

The [startup product and loading-text readers](startup-product-and-text-readers.md) define known-product flags/suffixes/ordinals, declared row count and cumulative text admission, and the selected XML/Grow-interface boundaries.


## GameplayData cache verification and signature ownership

The existing [CacheManager managed type](../../evidence/managed/types/ScriptCore.CacheManager.cs)
and [canonical caller IL](../../evidence/managed/callers.il.txt) identify the
actual policy owner. VerifyCache token06000DAD (RVA1128C,121CILbytes) sets
mIsCacheVerified=true and mIsCachingEnabled=false before constructing and
initializing the signature. Init failure returns immediately. Otherwise the
allowed database, successful CacheSignature read, successful signature decode
and equality are all required before the enabled field becomes true. When it
remains false, the original clears the cache and writes its freshly serialized
CacheSignature, but **does not enable caching in that instance/session**. A
newly written matching signature is for a subsequent verification, not a
permission to retain old tuning entries under a synthetic host signature.

LoadTuningData/LoadRawTuningData and SaveTuningData/SaveRawTuningData all verify
when necessary and obey that enabled field. The stream load returns null for
handle0 and disposes its FastStreamReader. Serialize/Deserialize temporarily
set original persistence switches (type remapping false, require persistable
true) and restore them in finally. These are original managed responsibilities;
the native store provides bytes/handles/checksum, not a replacement tuning codec.

[CacheSignature C#](../../evidence/managed/types/ScriptCore.CacheSignature.cs)
pairs Init token06000DAF with the same canonical caller IL and its remaining
methods with [wire/equality/hash/constructor IL](../../evidence/managed/cache-signature-wire.il.json).
Init captures AppDomain.GetAssemblies count, sums nonnull original
Serializer_GetAssemblyHashCode UInt64 results, then asks the exact GameplayData
database for hash64,size64,count32. False checksum returns false; no fake source
identity is generated by this type. Complete native assembly hash and database
checksum algorithms remain separate original paths.

Write token06000DB0 sends Int32 version1, assemblyCount32,
assemblySignatures64, sourceDataHash64, sourceDataSize64 and sourceRecordCount32
through the original FastStreamWriter and returns its byte array. Read
token06000DB1 requires version1 and reads the same fields. It catches IOException
around its reader scope, not arbitrary exceptions; it does not explicitly test
for EOF after the six fields. Equals token06000DB2 checks the type and all five
data fields. GetHashCode token06000DB3 combines their existing primitive hashes;
its behavior is not the native database checksum or a persistent content digest.
Constructor06000DB4 only runs the object constructor.

Provenance: retail scripts.package S3SA073FAA07:00000000:78CF6CF5304D0C4F,
ScriptCore1.0.5129.30674, MVIDda71f9d5-3a90-44c6-8f98-5bafd2fca18a,
SHA2561ac13ea63f60ceb7ba3a91053da85358aa25635aba5d13053904a8e7c1278115.
Package SHA2561fc5e1a7a43c4019595c817631efc9bb5bc3bdfd3925a2a3a65783ad8229a76c.
Installed ILSpy-library decompilation and metadata/CIL were compared to the
retail method bytes; no mod or retargeted image supplies this original rule.
The [seven registered native store bindings](../../api/ScriptCore.CacheManager/README.md)
retain their exact signatures and qualified native exports. Full native
73C890 checksum, empty record/tag behavior, stream/SAFEARRAY ownership, cache
database recovery, cross-process synchronization, path policy and durability
remain open; the managed policy does not certify a host file implementation.
No original execution or cache restart/roundtrip/performance result is claimed.


## Main-menu mod-file list boundary

Registered GameUtils_GetModFilesCount11972A0/import06000266 targets
[EC1770 existing ASM](../../evidence/native/functions/00EC1770_ScriptCore_GameUtils_GameUtils_GetModFilesCount.asm): only
MOVECX,11CEDE0 then tailJMP595730 precedes padding in the16byte window.
[GetModFilesName11972A8/import06000267](../../api/ScriptCore.GameUtils/0x011972a8.md)
targets EC39A0 E9 tail toEC3730. Existing EC3730 C has unaffected register aliases;
its full output/pointer lifetime is not inferred from that rendering. Selected
595CF0(11CEDE0,index) and host+50 string transport remain bounded observations.
Complete595730/595CF0 and all11CEDE0 writer/reset/filter/order/package membership
are precise remaining paths; a registered index API does not prove disk discovery.

Current ScriptModDialogPackages caches DiscoverUserScriptModPackages for the chosen
ModsRoot under a private lock, returns empty while content is disabled, retains
prior cache across reenable and logs only once. Current active-file admission,
path order/cache invalidation/warm publication and log-before-error behavior are
not established original semantics. No decompiled implementation is transferred
into product code and no original package or database changes here.
