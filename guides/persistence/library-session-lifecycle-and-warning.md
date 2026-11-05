# Library memory-bin lifetime, initialization and actual warning callers

This extends the existing inventory, household property-stream, Library lot-import
and world-travel guides. PC1.67 executable and packaged assembly identities are
in the central native/managed evidence indexes. Eighteen complete selected
managed methods (2364CIL bytes) were checked directly against the original PEs;
no original code was executed. The selected method index includes raw signatures,
tokens, exception regions, actual ILSpy renderings and complete CIL bodies.

## Init and Shutdown are distinct from host catalog cleanup

[9964B0 original bytes/instructions](../../evidence/native/functions/009964B0_ScriptCore_DownloadContent_DownloadContent_InitImpl.asm)
([actual C](../../evidence/native/functions/009964B0_ScriptCore_DownloadContent_DownloadContent_InitImpl.c)) gets the interface
from72F140 and, when present, slot24 string, appends the CustomContent /
ImportsFolderName configuration with Downloads fallback and invokes4DD2F0.
These literals are actual UTF16 data; no Library catalog refresh or Sim-export
queue appears in this selected wrapper. Its existing byte window was compared
with the pristine executable. A fresh MCP128-byte entry read matched; the MCP
address-based disassembly returned zero instructions and is not proof of an
empty function or full transitive directory/fault behavior.

ScriptCore.DownloadContent.Init060000F5 first calls nativeInit, then obtains
GetImportsFolder and caches mImportsFolder. Shutdown060000F6 only calls the
registered shutdown target. Record01181638 targets4B40C0: original first byteC3,
RET, freshly re-read through explicit /TS3W.exe. Therefore host SavedSim/Library
disposal, clearing hiding or resetting exportmode is not original shutdown work.
Registration sharing with other names does not change this no-op body.

## Native travel-bin owner, retain/release and real producers

[996080 export ASM](../../evidence/native/functions/00996080_ScriptCore_DownloadContent_DownloadContent_ExportLotContentsToTravelBinImpl.asm)
([C](../../evidence/native/functions/00996080_ScriptCore_DownloadContent_DownloadContent_ExportLotContentsToTravelBinImpl.c)) checks global scripting host,
resets previous manager+88 database via9A1980, acquires9A19E0 into initially null
out slot and wraps it as stream. Original9960D1..DE pushes two extra zero words,
stream pointer, ID high, ID low and callsAD4E80 with actual content-managerECX.
The inferred C only renders selected ID/adapter arguments; missing trailing words
must not be turned into absence of physical inputs. Their full semantic meaning
remains open. Adapter cleanup precedes secondary-interface release; registered
entry is void and exposes no export status.

[9A1980 reset](../../evidence/native/functions/009A1980_DownloadContent_ResetTravelBinDatabase.asm)
([C](../../evidence/native/functions/009A1980_DownloadContent_ResetTravelBinDatabase.c)) handles owner+88: host detach,
database+1C/+8 when host exists, clear slot and secondary-interface release.
[9A19E0 acquire](../../evidence/native/functions/009A19E0_DownloadContent_AcquireTravelBinDatabase.asm)
([C](../../evidence/native/functions/009A19E0_DownloadContent_AcquireTravelBinDatabase.c)) creates if absent, writes only
nonnull database and retains secondary interface. [995FF0 import](../../evidence/native/functions/00995FF0_ScriptCore_DownloadContent_DownloadContent_ImportHouseholdContentsFromTravelBinImpl.asm)
([C](../../evidence/native/functions/00995FF0_ScriptCore_DownloadContent_DownloadContent_ImportHouseholdContentsFromTravelBinImpl.c)) has no ID input, returns full
EDX:EAX; missing host/database returns0. Its AD6150 call copies/remaps a selected
062853A8 household under fresh ID, then adapter cleanup and secondary release.
Full vector/provider/allocator/lifecycle details require their actual child bodies;
unrecovered ESI/EBP in AD6150 C are not hidden caller-supplied registers.

[Selected managed index](../../evidence/managed/selected/library-content/members.tsv)
joins Bin.ExportHouseholdForTravel06008FFB: reset actors -> Sleep0 -> generateID
-> newHouseholdContents -> StoreHouseholdContents -> travel copy only if true.
ImportHouseholdForTravel06008FFC first requires nonzero travel ID, then successful
ImportHouseholdContents and sets returned contentID. HouseholdContents constructor
06008FCE calls CreateInventories06008FD2; actor/fridge/family nonempty inventories
use StoreInventory06008FD3. The original memory travel bin is separate from
permanent TravelDB.package and whole-world save. A host retained tuple is not
proof of native whole-world teardown/collision/thread or disk persistence parity.

## Warning source: UI prevalidation, not a native import-failure callback

Original UI EditTownPlaceTool.OnSelection06002655 inspects selected UIBinInfo,
validity and LotContentsWillFit. For invalid lot that fits, it schedules
newOneShotFunctionWithParams(WarnLotGeneric,lotInfo) through Simulator.AddObject.
The too-large arm instead schedules WarnTooBig; valid arm schedules PlaceLotTask.
WarnLotGeneric0600265F localizes Ui/Caption/GameEntry/EditTown:LotGenericWarning,
then SimpleMessageDialog.Show with PauseSimulator,(-1,-1),ui_error and close sound.

PlaceLotTask06002657 gates BeginPlaceLotContents and payment, updates routing,
calls PlaceLotContents(refangle,refposition,true), shows/updates placement dialog,
and repeats that call when rotating. Both returned PlaceLotContents Booleans are
POP in complete CIL. Neither arm calls WarnLotGeneric for a false return.
The UI interface's concrete gameplay receiver, native failure propagation,
progress-dialog policy and OneShot task delivery are still unresolved paths.

Reusing this warning method after a host import exception is therefore a host
policy with an unproved trigger, not established original behavior. Passing null
obj does not change this selected WarnLotGeneric body (it ignores obj), but does
not prove that the host's scheduling/frame/receiver lifetime matches original.
No gameplay warning or cancellation/rotation roundtrip was executed.

## Inventory writer and remaining limits

[Inventory guide](inventory-sections-and-live-import.md) now joins native998900
-> complete9B0280 storage, managed export/import and nonzero-loaded/output order.
[Household grammar](household-property-streams-and-bin-records.md),
[Library object import](library-lot-object-import.md) and
[world travel](../travel/world-travel.md) retain their separate format/lifetime
limits. The discovery/provider supplement below now joins selected9A58A0/9A5600/9A23D0/9A2EB0; full equality/insertion/provider/cleanup remains open. Classification9B1780/9B1280,
9AFF40 provider selection, description-key admission, component serialization,
thread/lock/reentry and failure cleanup are not resolved by this session join.

Seventeen existing native canonical ranges/windows were byte-compared; one new
complete220-byte/76-instruction9B0280 pair was needed. Existing exports were reused;
no whole-database analysis, prototype mutation, rename, annotation or save ran.
All asynchronous MCP reads reached terminal results. Inherited database dirty
state was preserved; no current clean-save claim follows from old guide prose.

[Library description candidate/key join](library-description-key-selection.md) now supplies complete9B1780/9B1280 and the bounded type-only predicate read. Native group0 request is distinct from candidate group; concrete provider fallback/iteration and AD5B30/file replacement remain open.


## Actual refresh, discovery and provider acquisition

Six needed existing-function pairs join the registered refresh to name/provider
and file-presence selection. Actual instructions, not the decompiler's omitted
arguments, establish ABI and order. No database function/type/prototype mutation,
reanalysis or save was needed. The original PE identity remains central.

| Entry | Selected original responsibility | Canonical pair |
| --- | --- | --- |
| 9953F0 | Registered RefreshExportBin0600010C | [Existing ASM](../../evidence/native/functions/009953F0_ScriptCore_DownloadContent_DownloadContent_RefreshExportBin.asm) ([C](../../evidence/native/functions/009953F0_ScriptCore_DownloadContent_DownloadContent_RefreshExportBin.c)) |
| 9A5A60 | Reset selected table counts then tail discovery | [ASM](../../evidence/native/functions/009A5A60_FUN_009a5a60.asm) ([C](../../evidence/native/functions/009A5A60_FUN_009a5a60.c)) |
| 9A58A0 | User source first, installed reverse table order | [ASM](../../evidence/native/functions/009A58A0_FUN_009a58a0.asm) ([C](../../evidence/native/functions/009A58A0_FUN_009a58a0.c)) |
| 9A5600 | Directory enumeration and per-file calls | [ASM](../../evidence/native/functions/009A5600_FUN_009a5600.asm) ([C](../../evidence/native/functions/009A5600_FUN_009a5600.c)) |
| 9A23D0 | Literal UTF16 hash/table lookup | [ASM](../../evidence/native/functions/009A23D0_FUN_009a23d0.asm) ([C](../../evidence/native/functions/009A23D0_FUN_009a23d0.c)) |
| 9A2EB0 | One active provider, first present source open | [ASM](../../evidence/native/functions/009A2EB0_FUN_009a2eb0.asm) ([C](../../evidence/native/functions/009A2EB0_FUN_009a2eb0.c)) |
| 4DBD70 | Win32 file-presence predicate | [ASM](../../evidence/native/functions/004DBD70_FUN_004dbd70.asm) ([C](../../evidence/native/functions/004DBD70_FUN_004dbd70.c)) |

9953F0 supplies global bin owner to9A5A60. That function calls9A1FC0 with
owner+38/+3C and resets+40; calls9A3700 with+90/+94 and resets+98; resets+74
then tailJMP9A58A0. The helper bodies' destructors/free/lock behavior are not
inferred from reset count stores.9A58A0 calls9A5600(owner+14,0,0), then walks
11CEDE0 by count595620/reverse index595640 and supplies(path,1,outProduct).
Both callsites push THREE words: filename-directory descriptor, installed flag,
productDWORD. Genuine C omits the product and cannot establish a two-input ABI.

9A5600 is receiverECX/three stackwords/RET0C.4DC130 admits the directory path;
4DA580 receives wildcard *.package and literal2/100000 flags and returns a
linked list. The selected body walks that list; no lexical sort, recursion or
case policy is established without that enumerator. It passes each entry+0C,
installed flag and productDWORD to9A4F40. TESTBL at9A56CA selects user-only
secondary provider/9BCFD0/9A1F40/9A4660 work; it does not test AddPackageAL.
DeletePackage scratch labels are allocation/debug strings, not proof of deletion.
The exact secondary metadata/edit/failure meaning remains open.

9A23D0 receives tableECX,out-iterator,string-descriptor and RET8. It hashes literal
UInt16 units from811C9DC5 with multiply01000193 then XOR, performs unsigned bucket
remainder, calls2050 and returns found/end iterator words. There is no case fold
in this selected hash loop. It is lookup, not insertion:9A4F40 first calls4E50,
then23D0. Full insertion/duplicate/equality/case semantics remain at4E50/2050.
The differing C iterator/base locals must not be treated as native entry layout.

9A2EB0 is ownerECX,filename-descriptor/out-provider, RET8 and meaningfulAL. A
nonnull owner+78 immediately refuses without initializing caller output. It
forms owner+14 user path first.4DBD70 validates nonnull/nonempty, calls actual
GetFileAttributesW via IATF961C8, and admits only attributes!=FFFFFFFF with bit10
clear. Original PE import independently identifies the API. Only a false
file-presence result searches installed paths in reverse table order; first
present candidate jumps to opening. Later provider-read/open failure does not
retry lower sources. Presence is not valid DBPF content or a source-generation
lease. Provider allocation/4A9290, secondary retain/release and virtual4/18(1,3,0)
follow. Success writes output and retains it; owner+78 independently retains the
provider. Failure clears the owner's current name range, closes virtual8, clears
owner+78 and releases it. Exact allocator/virtual failure and thread/exception
semantics are not inferred from C's null-pointer or uint artifacts.

Existing [9A4F40 classification ASM](../../evidence/native/functions/009A4F40_LibraryBin_AddPackageAndClassifyProvenance.asm)
([qualified C](../../evidence/native/functions/009A4F40_LibraryBin_AddPackageAndClassifyProvenance.c)) now has inline ABI /
iterator/time/lifetime notes. It clears two modification-time words before open,
then stores a64bit4DBEC0 result. Later conditional virtual1C→virtual8/clear/release
and stream/output cleanup are visible; full virtual1C meaning and exception paths
remain open. The existing bin formatter9A3230 consumes metadata time/category;
this is not proof of a file-length+mtime read-coherence guard, global mount cache
or all-resource snapshot transaction.

The six new pairs have489owned instructions/1411owned bytes in1412 envelope
bytes.9A5600 has exactly two owned ranges5600..569E and56A0..5826 inclusive;
the intervening9A569F byte90 is nonowned alignment, explicitly retained as such.
All owned and envelope bytes compare directly to the pristine PE/independent
decode. No whole-directory runtime, concurrent replacement, allocator injection,
Native/CLR filesystem equivalence or package/sample execution is claimed.

Remaining source-coherence questions: native4DA580 order/filter and filename
normalization;4E50/2050 insertion/equality/case;4DC130 directory predicate;
4DBEC0 timestamp epoch/error;4A9290/provider virtuals and conditional owner+78
retirement; secondary user-only manifest/edit helpers; complete OS sharing /
replacement/ABA behavior. Current length/time pre/post attestations in a host
must state these as unresolved counterparts rather than automatically accepted
original policy or atomic content-generation identity.


### Modification/category writer and formatter pointer bases

The reused [9A3230 formatter ASM](../../evidence/native/functions/009A3230_LibraryBin_FormatPackageRecord.asm)
([qualified C](../../evidence/native/functions/009A3230_LibraryBin_FormatPackageRecord.c)) was freshly inspected
through explicit MCP:180owned instructions, retained551bytes match the PE.
9A323B reads n=*inputIterator,9A324D derives b=n+10.9A32BF reads category[b+240]
(therefore n+250);9A3319/331F read time high/low[b+23C]/[b+238] (n+24C/n+248).
9A4F40 writer likewise adds10 to lookup output before stores. Older unqualified
record+250/+248 descriptions must name the node/derived base; no second field or
complete recovered C layout is inferred. Existing9A4F40 retained1641bytes and
9953F0 bounded155byte window also compare directly, without repeated exports.
The modification time is metadata consumed by formatting, not a source-generation
attestation or proven equivalence to FileInfo.Length/UTC ticks.

[Original thumbnail availability comparison](../ui/image-request-and-key-derivation.md#availability-descriptor-loop-and-native-library-comparison) now joins D4E5D0/D4CFB0 to actual Library9A16B0/9A1F80 lower boundaries. Full tag/service DWORD writer-reader/native cache/provider semantics remain open; host catalog-owner/path/stamp cache is not inferred original equivalence.
