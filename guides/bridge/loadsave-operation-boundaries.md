# Load/save native operation boundaries

File status, typed native-object handles, native materialization, managed object/task restoration and SaveWorld completion are separate contracts. This reference describes finite static behavior in the [original PC1.67 inputs](../../evidence/reference.json). It does not certify a successful save/quit/reload cycle, a callable reconstructed ABI, or complete subsystem recovery.

The [instruction ledger](../../evidence/native/persistence/save-restore-graph/instruction-evidence.json) preserves 32 historical complete stored definitions across 34 ranges: 11,356 original bytes and 3,750 complete starts. The two gaps of 3/8 bytes remain outside stored ownership. Historical ownership is not a fresh Ghidra snapshot or the true semantic extent. Separately, original contexts at 00743220/007D3CB0 retain 48/96 bytes, including trailing CC bytes: no exact baseline definition or invented C pair is created. Entry-connected control-flow checks assume ordinary call return and do not close exceptions or dynamic transfers.

The [source/coverage index](../../indexes/save-restore-graph.tsv) distinguishes every entry and its existing immutable Legacy ASM/C pair where available. Twelve selected current C reconciliations remain pending; this publication adds **zero canonical native pairs**. Existing generated C/formal names remain projections. The [401 selected direct transfers](../../evidence/native/persistence/save-restore-graph/selected-transfers.tsv) are exact Original E8/E9 sites in these finite scopes, not incoming/indirect closure. The [80 table/key bytes and 534 string bytes](../../evidence/native/persistence/save-restore-graph/tables-keys-and-completion-strings.json) support the concrete readers/writers/process below.

Original managed authority is preserved by [four exact MethodDefs and EH/field operands](../../evidence/managed/persistence/save-restore-graph/selected-control-flow.json), their [complete selected IL](../../evidence/managed/persistence/save-restore-graph/selected-control-flow.il.txt) and [annotated interpretation](../../evidence/managed/persistence/save-restore-graph/selected-control-flow.md). The wider retained managed serializer/stack restoration is linked below and is not replaced by the 219 selected CIL bytes.

## The graph and typed boundary

The entry adapters and the serialization machinery are separate contracts:

| Path | Original physical chain | Result/limit |
| --- | --- | --- |
| file-info token | 743250 → manager AAB460 → host registration type 40h | Existing original adapter rejects missing/empty converted ID; its real output address is a stack local, despite the old C projection. Backend file policy is separate. |
| native reader | 742B60 → host +CCh → concrete reader slot +8 → 7D3CB0 context | Reader token high byte must be 41h; bad tag or null resolution returns FFFFFFFFh. Host itself is not locally null-checked after 769390. The second physical stack word is the ordinal. |
| native writer index | 742BA0 → host +CCh → writer slot +4 → 7D4360 → factory +1Ch → writer slot 0 / 7D4760 | Writer token high byte is 42h or 44h; null/unsupported paths retain FFFFFFFFh. The object input is converted through the selected factory before pointer deduplication. |
| writer creation | retained bounded CreateNativeWriter adapter 742BE0 → 7D42A0 → 7D4750/7D4550 | 9Ch allocation, vtable 0101B290 and registration type 44h are reused original evidence. This adapter's historical one-byte ownership is not repaired. |
| file save | AAF6C0 → AAA810 → header/pre-save/world/post-save stages | EAX stage status, not the SaveWorld callback boolean. |
| file load | AAFB40 → AAB6E0 → AAA3B0 → world C6CDC0 | AL result is actually saved and propagated; generated C register confusion must not erase it. |
| NOBJ materialization | reused world C67710 → 7D4AE0 → service +20 / object +0,+14 | Framing/materialization is separate from the factory-to-handle remap. |
| asynchronous SaveWorld | 743880 → 743670 → job callback 743220 → 743050 → 742FC0 → host +124h | Scheduling, completion notification and final bool delivery are separate from a complete disk-save proof. |

The four high-byte handle tags have different roles. They are not raw pointers
or an interchangeable index space. The writer's tag-to-factory map is also
distinct from the reader's serialized ordinal-to-record vector.

## Reader records, factory map and ordinal remap

7D3FA0 installs reader vtable 0101B26C, zeros the three-word vectors at +C and
+1C, and installs labels at +18/+28. It does not initialize +4/+8; the table load
later writes context and data base. Selected vtable +8 is exactly 7D3CB0.

7D4AE0 reads seven UInt32 header words through the existing byte-order-aware
primitive and accumulates status in context byte +14. It refuses false status,
non-NOBJ magic 4A424F4Eh, a zero masked version, or a masked version above 100h.
Thus `(version & FFFFFF00h)` admits 0100h..01FFh, not only 0101h. Entry, key and
data offsets are added to the captured starting stream position with ordinary
32-bit arithmetic; no local overflow/file-bounds validation is established.

| Reader field/record | Original meaning | Important limit |
| --- | --- | --- |
| reader +4 | active input-context pointer | Assigned after resource-key loading; earlier failure need not undo previous reader state. |
| reader +8 | base position + header data offset | Actual seek services remain dependencies. |
| reader +C/+10/+14 | begin/end/capacity for 16-byte records | Resize helper 7D46D0 initializes only appended records; it does not clear every retained record when shrinking/reusing storage. |
| record +0 | signed serialized data offset | New default FFFFFFFFh; negative skips object creation. |
| record +4 | serialized factory/class identity | New default zero; read before each record offset. |
| record +8 | materialized native object pointer | New default zero; null factory result can remain zero. |
| record +C | creation-attempt marker byte | Set to one before checking the signed offset and requesting an object. |
| record +D | load-suppression/already-handled guard byte | New default zero, tested before child Load; this reader does not set it. The complete external producer/reentrancy contract remains open. |
| reader +1C/+20/+24 | resource-reference vector | Original provider +Ch receives each original TGI key and output slot; success/ownership of all returned references is not inferred. |

Append defaults come from 7D46D0's exact local template: offset -1, identity 0,
object pointer 0, +C/+D bytes 0. The last two bytes of the 16-byte template are
not locally initialized; they are not silently assigned a meaning. The called
vector insertion helper and allocation failures remain dependencies.

The creation/load traversal starts at `objectCount-1` and uses signed JL/JGE;
the serialized-field loops and 7D3CB0's bounds use unsigned JB/JBE. There is no
single universal signedness policy. In particular, this is not a validated
arbitrary-UInt32-count parser: counts with the sign bit set can interact with
the signed reverse loop, allocation and arithmetic without a local sanity cap.

For each reverse record, 7D4AE0 marks +C before the creation attempt. A
nonnegative offset requests factory identity using service +20 with interface
ID **0519DC8Ch** and two zero words. A nonnull returned object receives virtual
slot 0 and is stored at +8. If +D is zero and +8 nonzero, the reader remembers
stream position, seeks `dataBase+offset`, calls object +14 with `(context,
reader)`, then restores the prior position. Missing objects skip this child
call and do **not themselves** clear sticky stream status. The final AL comes
from context +14; factory absence is not unconditionally converted to AL=false.
No rollback of previously created objects is present in this body.

7D3CB0 is a separate lookup/remap, not this materialization loop. Its bounded
physical instructions calculate record count by arithmetic shift of
`end-begin`, compare the input ordinal unsigned, and reject out-of-range/null
object entries with EAX=0. For a nonnull entry it queries registry 593930's
virtual +Ch with `(record.factoryIdentity, **0519E079h**)`. A null query also
returns zero. Otherwise it replaces the caller's ordinal stack word with
`record.objectPointer`, places the returned factory in ECX, and tail-jumps to
factory virtual +18h. The ultimate EAX value is provided by that implementation;
the object pointer is not simply returned. The high-level UInt32 handle
transport and the physical tail inputs are supported, while every factory's
actual mapping, retention and errors remain open.

7D4550 builds the inverse writer tag map from the same 0519E079h interface
family: registry count, bounded enumeration, then factory +10 count and +14
tag. Only AL is retained from each tag result. It uses unsigned minimum of
capacity and returned enumeration count. Each byte tag is found/inserted in
writer +7Ch, and node +4 is assigned the current factory even when the tag
already exists. Consequently later enumerated factories overwrite earlier
associations for duplicate byte tags; no duplicate rejection is visible.
The DIV by bucket count has no local zero guard. No retain/release accompanies
the node assignment here; factory-container ownership and bucket construction
are explicit open dependencies.

7D4360 looks up the high byte of a nonzero native object handle, resolves the
host handle, calls selected factory +1Ch to convert it, then writer slot 0.
7D4760 deduplicates the converted pointer through its map and returns the
existing ordered-vector ordinal; a new entry uses physical object slot 0
around the vector append and slot +4 for temporary cleanup. These observed
slots do not establish a universal COM/atomic/thread policy.

The reused complete 7D4810 writer emits NOBJ version 0101h, stable ordinal
entries and resource keys. A failed object writer resets the sticky status,
rewinds and emits offset -1 for that ordinal. This explains why the reader's
negative-offset skip preserves an index rather than deleting a record. The
world C67710 resource framing and managed context loading remain separate.

## Package header and ordered failure stages

AAA810 physically takes manager ECX, stream stack word and raw mode stack word,
RET8. Its C mode projection must not be treated as a pointer contract. It
opens key 01183E20 (16 original bytes retained) in write mode. It writes:

1. the **low byte of the raw mode word**, through 4DDE30;
2. bytes `53 33 00`, then UInt32 version 4 in context byte order;
3. byte 4, manager buffers +34..38 and +44..48;
4. world caption, selected-helper bool, manager GUID +58/+5C.

The mode byte precedes S3-NUL; a reader starting its signature at byte zero
would be wrong. The selected-helper bool is true when helper 828CF0 is nonnull
and helper byte +981 is zero. Conditional helper calls 834B00/828DF0/829640
occur after closing the header but **before** the final sticky-header check.
Therefore a returned failure code is not a no-side-effects guarantee.

| EAX | Original gate | Reused original SimIFace enum name |
| --- | --- | --- |
| 9 | header resource open returned false | kFailedToCreateHeaderRecord |
| 10 | accumulated header status false | kFailedToWriteHeaderRecord |
| 11 | AAA240 pre-save returned AL=false | kPreSaveCallbackFailure |
| 12 | world C6D2A0 returned AL=false | kWorldFileSaveFailure |
| 13 | AAA280 post-save returned AL=false | kPostSaveCallbackFailure |
| 0 | all local stages passed | kNoError |

AAF6C0 additionally has outer file/path/mode/open/cleanup branches. Its result
must not be reduced to the six child statuses. The complete physical body has
two owned ranges with the three-byte gap retained separately; no claim that
rename/copy operations are atomic or all partial files are removed follows.

The complete 63-byte pre/post dispatchers AAA240 and AAA280 walk the manager's
sentinel-linked list at +20, skipping null node +8 receivers, and call virtual
+0Ch or +14h respectively with the context. They return on the first AL=false;
an empty list returns AL=1. A null `context[0]` returns false before traversal,
but the context pointer itself is not checked. The order is actual linked-list
order, not a deduced sorting or thread policy; callback mutation/reentrancy is
not locally protected. Successful callback AL need not be normalized to one.

The complete 260-byte world-save child C6D2A0 performs setup and resource-copy
calls before its main success chain. C638C0, optional C64640 and three 7D9130
calls are not directly tested for their returned values here. C6BB00 executes
first, then C617E0 executes **even if the first result was false**. It computes
`(firstAL & 1) & secondAL`; only a nonzero result calls C62330, whose AL becomes
the final result. Selected helper CF1A00 cleanup follows. Thus rewriting the
first two calls as an ordinary short-circuit `&&` changes observable call
order. Child stream/manager error propagation remains open beyond these gates.

AAB6E0 physically takes manager ECX and input package stack word, RET4, AL.
Input/world null refuse early. It opens the same header key for reading,
reads the first byte and stores its zero-extended value into context +10, then
reads the three following bytes. **There is no local comparison of those three
bytes to S3-NUL.** Version UInt32 >1 enables a byte and two buffers; caption is
always read; >2 enables bool; >3 enables GUID. The comparisons are unsigned and
there is **no local upper-version rejection**. These are local parser facts,
not proof that every malformed/future-version resource loads successfully.

After closing the header, a true loaded helper flag can clear helper +981 and
call 828E30 before final sticky-status/caption validation. Success requires
nonzero sticky status and a nonnull, nonempty converted caption, then returns
AAA3B0's AL. Existing buffers, GUID or helper effects are not rolled back here.

AAA3B0 requires nonnull world and nonzero `context[0]`; it does not first test
the context pointer. It creates a world/provider context, requires nonnull
provider and positive unsigned 7D9130 result, converts the caption path,
checks AA9DC0 and world C63F10, then obtains a second provider and calls world
C6CDC0(provider,1). Its AL is saved across cleanup. Provider resource keys are
enumerated and removed in reverse order before physical embedded-interface
+4 release calls. This establishes bounded cleanup ordering, not complete
world reconstruction, uniform provider lifetimes or rollback.

AAFB40 preserves AAB6E0's actual AL at AAFCC9 and may clear it after AAF510
failure. A generated false local/uncertain SI projection is not evidence that
the load result is ignored. Before path preparation it writes world +1B4=1
and byte +44=1. The path-preparation failure at AAFBC5 and both-missing-file
route AAFC1E return through AAFBC7/AAFBD3, bypassing the normal +44 clear at
AAFDA1. This body does not clear +1B4 on its normal exit either. No general
claim about eventual values after external cleanup or a runtime failure is
made. AAD150 configures the selected storage owner's paths/enable/mode inputs;
calling it is not evidence of unconditional database writes.

The complete 1,236-byte world-load child C6CDC0 establishes the missing direct
edge to the already retained C67710 table/context loader. It stores the low
byte of its second stack word in world +42 and creates an IO context from its
first stack word. It first requires C60A70, then C65D30. Further setup and a
C64530 callback traversal can alter its BL status. When BL remains nonzero,
an unsigned WORD comparison at C6D079 selects old route C64210 for versions
below 7 and C67710 for versions at least 7. Its optional context argument is
selected from world +44/+190 and the local IO state. The actual C67710 AL
overwrites BL at C6D0A9; it is not ignored.

C62C50 is called after that stage **even when BL is already false**. Its own
false result enters a distinct immediate failure cleanup; if it succeeds but
BL is false, the later failure event/cleanup path is used. On the successful
branch another C64530 traversal with callback C6ACF0 overwrites BL again. Final
shared cleanup writes world +41=BL and +40=0 and returns AL=BL; the earliest
failure exits do not all pass those two stores. Progress callback global
011EDBC8, with state 011EDBCC, is conditionally invoked at several boundaries.
These exact state/callback positions do not close each manager callback, legacy
version route, progress callback implementation or all failure cleanup effects.

## SaveWorld completion, ownership and managed authority

743880 first checks the world global. A null world returns without invoking
the false callback here. It allocates a 40h process and, when allocation
succeeds, installs primary vtable 010023D0 and embedded vtable 010023C0, zeros
+28 and byte +24, and calls primary slot +4. Allocation failure is **not**
locally converted into an immediate safe return: it still calls 743670 with
the resulting null process. External allocation/host assumptions stay open.

743670 obtains host +118h's EDX:EAX yielding identity and stores it at process
+30/+34. It filters lot work through world C63720 and D53750 flag 4, obtains a
job through manager +10h, links process +20h, stores job +20=4, +8=743220 and
+C=process, and submits it. It brackets per-lot D613C0 calls with D4BE80/90 and
uses host +120h with the original callback, then releases the job and calls
host +11Ch. A failed selected setup path returns AL=false; 743880 then builds
a BOOL variant and invokes host +134h, followed by cleanup.

The bounded 743220 callback context accepts three physical stack words. Only
third-word selector 4 calls 743050, with ECX=second word and first word passed on
the stack. A false AL gives EAX=0; other locally returning paths give EAX=1.
No exact function is created from this sequence.

743050 checks process byte +24 and the world text/helper prerequisites. It
performs world C6CA80 and selected string-service lookups, then calls the
original imported **USER32.dll!MessageBoxW** via IAT 00F96800. Selection 3 sets
the local result byte false; selection 2 and other selections use distinct
flags. The original PE import descriptor proves the import name; it is not an
assumed library behavior. These calls do not independently certify a flushed
or reloadable save. Stack-string tables are indexed by the world 6FAA40 result
without a local selector range guard. The complete seven-byte getter 6FAA40
loads world DWORD +1B8; the setters and permitted value domain remain open.
The original key table selects Success for indices 0/1, Warn for 2 and Error
for 3, with matching caption keys. Those labels are data-source evidence, not
proof that the field is always in range or all external save effects succeeded.

743050 delivers the local bool using 742FC0, cleans its temporary string
storage and returns AL. 742FC0 obtains a host if available and sends the bool
variant through +124h using process +30/+34; cleanup tests mask **04h**. It
does not delete the process. 743880's normal tail calls primary slot +8; its
concrete vtable resolves +4 to 00EC1C10 and +8 to 0070A480, with destructor slot
0 at 742E20. The latter resets vtables, calls D4BE70 and conditionally frees
on flag mask 01h. These concrete observations do not close pending-job
reference ownership, embedded slots 743030/743040, cancellation or all thread
interleavings. The producer of process +24 also remains open.

Original ScriptCore SaveWorld (060001FB, 51 IL bytes) checks yielding context,
creates a one-element bool array, passes closure 0600120F to native SaveWorld,
and returns element zero. The freshly checked ten-byte closure CIL is
`ldarg.0; ldfld 04000145; ldc.i4.0; ldarg.1; stelem.i1; ret`.
Thus the array element is actually written by the delegate. A missing callback
is not substituted with a fabricated success, and this static wrapper does
not itself establish scheduling liveness or callback timing.

Original BeginLoadObjects (06000209, 88 IL bytes) creates NativePersistReader,
PersistReader and a FastStreamReader, calls managed PersistReader.Load inside
a disposing finally, and conditionally selects TaskStateCollection. Original
EndLoadObjects (06000216, 70 IL bytes) performs ExecutePostLoads, disposes/clears
the task collection and reader and clears NativePersistReader. Retained raw
LoadObjectStack/RestoreObjectStack/failed-object/request-restore IL remains
separate authority. The native NOBJ framing and handle remap do not replace
that managed object/task restoration machinery.

These managed sequences have failure boundaries too. BeginLoadObjects stores
its reader statics before calling Load; its finally covers the FastStreamReader
only. A null selected TaskStateCollection does not clear an older sTaskStates
value in this method. EndLoadObjects has no enclosing finally: an exception
from ExecutePostLoads prevents the later disposal/clear operations in this
body. Normal-path cleanup ordering is not unconditional exception recovery.


## Existing adapters, writer contracts and evidence use

The immutable [earlier operation reference](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/bridge/loadsave-operation-boundaries.md) retains profile/challenge/passport adapters, file-info/string-variant transport, writer creation and release. Its historical singleton windows and 32 C projections are evidence from that snapshot, not current Research canonical pairs. The [native object-table writer contract](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/guides/persistence/native-object-table-envelope-and-writer.md) and [managed restoration IL](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/managed/selected/save-object-stack/ScriptCore.LoadSaveManager.restoration.il.txt) remain separate authorities. The present instruction/data ledger extends concrete relationships without importing their repositories or 5,054 historical pairs.

File-info type40h, reader41h and writer42h/44h are different handle domains. GetLoadSaveFileInfoID publishes a host variant interpreted by the original StringFromVariantMarshaler. Challenge/passport wrappers convert their physical XML/profile inputs through the host and preserve NotLoaded/backend distinctions. These adapters do not establish full backend file policy. Writer release frees its owned containers/context; destroy separately releases its allocation. Do not merge those ownership operations or assume uniform COM/atomic semantics from virtual slot numbers.

## Explicit remaining boundaries

Current C/Info reconciliation is pending for 00743050,00AAB6E0,00AAA3B0,007D4AE0,007D4550,00AAA810,00AAFB40,00AAF6C0,00743670,00743880,00AAD150 and 00742B60. This does not invalidate the exact Original instructions. No current C is invented for missing exports, and 00743220/007D3CB0 stay bounded no-exact-definition contexts.

Factory-specific handle conversion/retention; writer map ownership and bucket-count invariant; record+D producers; vector/allocation/overflow behavior; provider/resource ownership; progress callbacks and legacy-version children; process+24 and world+1B8 producers; pending-job/embedded-interface lifetime; host callback scheduling/cancellation; full VM/task restoration and exception recovery remain open. Normal cleanup is not an all-path unwind, and a local false result does not roll back earlier effects. No runtime execution, save-file durability or eventual callback is asserted.

## Immutable paired Original references

These existing Legacy pairs are reused as byte/behavior evidence, with their historical projections retained. Each ASM is immediately followed by its actual C; an absent pair is represented only in the instruction ledger/index.

| Entry | Existing ASM and C |
| --- | --- |
| `007D4550` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007d4550.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007d4550.c)) |
| `00AAD150` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00aad150.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00aad150.c)) |
| `00AAA810` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00aaa810.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00aaa810.c)) |
| `00743880` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00743880.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00743880.c)) |
| `00743670` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00743670.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00743670.c)) |
| `00AAF6C0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00aaf6c0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00aaf6c0.c)) |
| `00AAFB40` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00aafb40.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00aafb40.c)) |
| `00742B60` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00742b60.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00742b60.c)) |
| `00742FC0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00742fc0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00742fc0.c)) |
| `007D4AE0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007d4ae0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007d4ae0.c)) |
| `004DD890` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x004dd890.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x004dd890.c)) |
| `004DDE30` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x004dde30.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x004dde30.c)) |
| `005684B0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x005684b0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x005684b0.c)) |
| `007D4810` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007d4810.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007d4810.c)) |
| `00C67710` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00c67710.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00c67710.c)) |
| `007D4360` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007d4360.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007d4360.c)) |
| `007D4760` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x007d4760.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x007d4760.c)) |
| `00742BA0` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00742ba0.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00742ba0.c)) |
| `00743250` | [ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00743250.asm.txt) ([C](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00743250.c)) |
