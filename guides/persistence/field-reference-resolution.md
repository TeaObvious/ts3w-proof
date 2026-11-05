# Task field-reference normalization for stack persistence

`TaskControl_ResolveFieldReference` converts an admitted by-reference field in a
task frame into a `{frame index, field index}` pair identifying an
exact argument or local slot in an earlier frame. It follows one stored pointer;
it does not serialize pointed-to bytes, validate target-type compatibility, or
resolve arbitrary interior/heap addresses. On normal failure it leaves the pair
unchanged. Only an exact earlier-slot match writes both output words and returns
true in `AL`.

This is static PC 1.67 original-code evidence. The complete selected bodies and
runtime-layout observations do not establish original runtime execution,
thread-safe task snapshots, all task-save acceptance or whole persistence
correctness. [Original identity](../../references/pc-167.md),
[original managed inputs](../../evidence/managed/reference-inputs.json) and the
[function lookup](../../indexes/task-field-reference-resolution.tsv) identify
the inputs and limits.

## Exact body coverage and the old export

The original registration at `0x0108D658` contains bytes
`d0 35 d8 00 10 d7 08 01`, binding
`ScriptCore.TaskControl::TaskControl_ResolveFieldReference` to `0x00D835D0`.
Its existing Ghidra body is the union of inclusive ranges `D835D0..D836B9` and
`D836C0..D837AD`: 472 owned bytes / 179 instructions, preserved in
[ASM](../../evidence/native/persistence/field-reference/00D835D0_ScriptCore_TaskControl_TaskControl_ResolveFieldReference.asm)
([annotated pseudocode](../../evidence/native/persistence/field-reference/00D835D0_ScriptCore_TaskControl_TaskControl_ResolveFieldReference.c)).

The legacy 480-byte next-entry window already contained every one of those
owned bytes, plus six skipped alignment bytes at `D836BA..D836BF` and two `CC`
padding bytes at `D837AE..D837AF`. This is an ownership and behavioral-contract
qualification of that old window, not a claim that it omitted part of the body.
No body merge, database reanalysis or byte patch was made.

The operation's two direct helpers are newly captured at their existing bounds:
[task-state lookup ASM](../../evidence/native/persistence/field-reference/00D760C0_FindTaskStateWithOptionalCreation.asm)
([pseudocode](../../evidence/native/persistence/field-reference/00D760C0_FindTaskStateWithOptionalCreation.c)),
284 bytes / 101 instructions, and
[method-body header ASM](../../evidence/native/persistence/field-reference/00E85670_GetOrCreateMethodBodyHeader.asm)
([pseudocode](../../evidence/native/persistence/field-reference/00E85670_GetOrCreateMethodBodyHeader.c)),
330 bytes / 102 instructions. The inverse writer's shared slot locator has
189 bytes / 77 instructions:
[slot-locator ASM](../../evidence/native/persistence/field-reference/00D837B0_LocateTaskFieldSlotAndType.asm)
([pseudocode](../../evidence/native/persistence/field-reference/00D837B0_LocateTaskFieldSlotAndType.c)).
Helper names are analyst-assigned; the registered TaskControl name is original
registration evidence, not a recovered native ABI declaration.

## Original managed input and return contract

The original sequential value type `ScriptCore.TaskFieldReference`, TypeDef
`02000013`, has exactly the two instance fields used here:

```text
.field /* 04000020 */ public int32 mFrameIndex
.field /* 04000021 */ public int32 mFieldIndex
```

Its C# projection is `struct TaskFieldReference { public int mFrameIndex;
public int mFieldIndex; }`. These are signed managed fields, although the native
index admission compares their DWORD bit patterns as unsigned. Neither an
assumed one-based public struct nor a truncated byte field index is justified.
Frame zero can be a successful **resolved target** and is used by other task
accessors; this normalization operation rejects frame zero as its input.
The complete selected original type, import and wrapper appear in the
[IL selection](../../evidence/native/persistence/field-reference/managed-bindings.il.txt)
([matching C# projections](../../evidence/native/persistence/field-reference/managed-bindings.cs.txt)).
The [reference data](../../evidence/native/persistence/field-reference/reference-data.json)
includes the original eight-byte wrapper and 33-byte `ToString` method bodies,
assembly identity, registration bytes and the exact native strings/imports.

The original P/Invoke MethodDef `ScriptCore:06000126` declares
`bool TaskControl_ResolveFieldReference(ulong taskId, ref TaskFieldReference
fieldRef)`, `pinvokeimpl("Sims3Common.dll" winapi)`, `preservesig`, with no explicit
return MarshalAs descriptor in this declaration. Public MethodDef `06000132`
forwards it unchanged in this complete eight-byte original CIL body:

```text
IL_0000: ldarg.0
IL_0001: ldarg.1
IL_0002: call bool ScriptCore.TaskControl::TaskControl_ResolveFieldReference(uint64,valuetype ScriptCore.TaskFieldReference&) /* 06000126 */
IL_0007: ret
```

```csharp
// Original managed wrapper: updates the caller's pair only through the native call.
public static bool ResolveFieldReference(ulong taskId, ref TaskFieldReference fieldRef) =>
    TaskControl_ResolveFieldReference(taskId, ref fieldRef);
```

The x86 entry consumes three physical stack DWORDs: the low/high task-ID words
and the pair pointer, then uses plain `RET`. Actual success/failure instructions
set **AL only**, leaving unrelated upper EAX bits. The generated `uint` or
`undefined4` C return must not be treated as an integer success/failure sentinel.
The exact interop bridge's native-to-managed boolean conversion is not newly
reconstructed here; the actual original caller consumes a managed Boolean.
A nonnull pair pointer, initialized script host and compatible runtime metadata
are preconditions, not validated failure cases.

## Admission and source slot

With a well-formed runtime state:

1. Input `mFrameIndex == 0` returns `AL=0` before host lookup.
2. The current global interface is adjusted by `-8` to the host receiver, then
   `D760C0` is called with the full UInt64 task ID and creation flag zero.
   A primary task-map miss returns zero. This call does not create a task state.
3. The frame index must be unsigned `<= taskState+0x140`, an inclusive highest
   index. `taskState+0x3C+4*index` must hold a nonnull native-frame pointer.
4. For `layout = *(nativeFrame+0)`, field indices below the **byte** count at
   `layout+0x40` select an argument offset from `layout+0x1C` and its type from
   the method signature's type array. Otherwise the count is subtracted and the
   resulting unsigned local index must be below the header's **UInt16** local
   count at `header+0x10`.
5. The local storage address is `frameBase + localOffset + span3E + span36 +
   span34`, with 32-bit address arithmetic; an argument is `frameBase +
   argumentOffset`. `frameBase` is the pointer at native frame `+0x20`.
6. The source runtime-type flags at `type+4` must contain `0x40000000`. Without
   that by-reference admission bit, the operation returns false. It reads the
   DWORD stored in the source slot as the referred address.

The [qualified layout table](../../evidence/native/persistence/field-reference/runtime-layout.tsv)
records each owner, offset and physical width. Runtime type/header/offset arrays
are dynamic inputs, not static lookup tables recovered from the EXE. Field,
frame and span labels in that table are analyst descriptions where no original
managed symbol is shown. No internal span or array ownership is inferred from
its first consumer.

The frame's `layout+8` method pointer is used by this normalization operation.
The shared slot locator `D837B0` instead uses `layout+0x0C`. The existing
GetTaskContext producer first tries `layout+8` and falls back to `layout+0x0C`
when its header helper returns zero. Those pointers cannot be silently collapsed
into one method/type context.

## Earlier-frame search and exact matches

The first candidate is `input frame index - 1`; the loop stops when its
32-bit decremented index becomes signed-negative. Null candidate frame pointers
are skipped. For each candidate, the referred address minus candidate storage
base is a 32-bit wrapping difference, admitted only if unsigned
`difference < UInt16(layout+0x38)`.

| Candidate location | Native decision |
| --- | --- |
| Argument storage region, difference below `span3E` | Search argument-offset array for **exact** equality. First matching ordinal writes the candidate frame and argument ordinal. |
| Intermediate region of width `span34` | Return false for the **whole operation**. This is not a continue-to-next-frame branch. |
| Next intermediate region of width `span36` | Return false for the **whole operation**, likewise. |
| Local storage region of width `span3C` after those preceding regions | Search local-offset array for exact region-relative equality. First matching local writes candidate frame and `UInt16(signature+4) + local ordinal`. |
| Outside span, null frame, or no exact argument/local match | Continue to the next earlier frame, subject to the terminating intermediate-region cases above. |

The reverse argument loop count and the local-index output prefix use a
**UInt16** count at the selected method signature `+4`. The initial source-slot
argument/local split uses the layout's **UInt8** count. Their agreement is a
runtime invariant, not an equality check implemented by this function.

Both successful stores occur only on exact-match paths (`D83781/D83783` for an
argument, `D83795/D837A4` for a local), then set `AL=1`. All normal false-return
paths preserve both pair words. This is not a read of the referred field value,
a type-compatibility test, an arbitrary interior-pointer fixup, or a guarantee
that every earlier frame is searched after an intermediate-span hit. No pointer
reference count or task/frame lifetime is acquired by the resolver.

## Task-state and metadata helpers

`FindTaskStateWithOptionalCreation` (`D760C0`) first looks up the exact UInt64
key in host map `+0xB88` and returns the primary node's `+8` value on a hit,
including a stored null value. Creation flag **low byte** zero makes a miss
return zero without searching secondary maps. A nonzero low byte may inspect
maps `+0x1660/+0x1680`, insert a primary entry and construct/publish a runtime
state through child helpers. Full creation/allocation recovery and map locking
remain outside this bounded consumer path. It has no host-null guard or local
reference-retain operation; passing a null adjusted host is not a documented
safe miss.

`GetOrCreateMethodBodyHeader` (`E85670`) rejects the observed method/implementation
flag combinations (`method+0 & 0x400/0x2000`, implementation low two bits or
`0x1000`) with zero. Otherwise it returns cached `method+0x20`. A miss enters
global critical section `0x011F53A8`, rechecks and either loads/decodes the
MethodDef-backed metadata or constructs derived metadata, then publishes that
cache pointer and leaves. Its child parsing, generic-context, allocation and
assertion behavior are distinct dependencies. This is not a graceful Try API
for every malformed input. `D835D0` does not guard every zero header before
reading its local count, so compatible method metadata remains a precondition.
The original PE import table identifies the two indirect calls as
`KERNEL32.dll!EnterCriticalSection` at IAT `F9612C` and
`LeaveCriticalSection` at `F96130`. Original assertion arguments name
`..\..\mono\mono\metadata\loader.c` and
`mono_metadata_token_table (method->token) == MONO_TABLE_METHOD`.
These original strings support the method/metadata role; they do not by
themselves recover every runtime structure type or the assertion child's
termination behavior.

## Actual persistence producer and inverse consumer

| Original producer/caller | State or result passed onward | Consumer |
| --- | --- | --- |
| `TaskStateCollection.WriteTask` / `060006A2` | A copied frame/field pair for an `IsByRef` field | Wrapper `06000132`, import `06000126`, registered `D835D0` |
| `D835D0` | Full UInt64 task ID, creation flag zero | Primary task-state lookup `D760C0` |
| `D835D0` and slot locator `D837B0` | Their distinct selected method metadata pointer | Cached/lazy header helper `E85670` |
| Successful `D835D0` | Earlier exact-slot pair, boxed by the managed writer | Typed-field persistence |
| `SavedTaskContext.Restore` / `06000691` | The saved boxed pair after task-context restoration | `SetFieldReference` / `D839D0`, using `D837B0` twice |

All 26 static call instructions in the four newly accepted bodies are listed in
[reference data](../../evidence/native/persistence/field-reference/reference-data.json),
including conditional creation, recursive metadata construction, assertions and
indirect calls. These edges expose the remaining child boundaries; they do not
accept those children merely because their caller bodies are complete.

Original `TaskStateCollection.WriteTask`, MethodDef `ScriptCore:060006A2`, uses
this resolver only after `Type.IsByRef` for a saved frame's field. It initializes
frame/field indices at zero and increments them while visiting the original
frame/field arrays. For a byref field it copies the pair, calls public
`06000132` at `IL_0222`, and on false takes `WriteTaskResult.Failed`. Only true
boxes the updated pair at `IL_0233` and sends it to the ordinary typed-field
writer. Non-byref fields instead call `GetFieldValue`.

Reuse the complete 882 original CIL bytes in
[WriteTask IL](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/managed/selected/save-object-stack/ScriptCore.TaskStateCollection.restoration.il.txt)
([annotated managed context](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/managed/selected/save-object-stack/TaskStateCollection.restoration.cs.txt)).
Those saved original bytes were compared directly to the identified original
ScriptCore DLL; the reconstructed source tree supplied search hints only.
A boxed reference pair is a serialized identity, not evidence of a fixed raw
eight-byte wire encoding or automatic repair of arbitrary saved pointers.

On restoration, original `SavedTaskContext.Restore`, MethodDef `06000691`, first
patches saved frames/objects and calls `SetTaskContext`. After that succeeds, it
iterates field data; a boxed `TaskFieldReference` takes `SetFieldReference`,
while ordinary values take `SetFieldValue`:
[complete original Restore IL](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/managed/selected/save-object-stack/ScriptCore.SavedTaskContext.restoration.il.txt)
([annotated managed projection](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/managed/types/ScriptCore.SavedTaskContext.cs)).
Its 235 original CIL bytes were independently matched against the same DLL.

The native inverse `D839D0` uses the shared slot locator twice, requires a source
frame signed-less than the target frame, rejects the current task ID, and requires
the target type's byref bit. It writes the source slot address into the target
slot, or one indirect DWORD from the source when the source itself is byref:
[existing native inverse ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00d839d0.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00d839d0.c)).
This void operation can leave a field unchanged when its guards fail; Restore
has no return-status check for that individual setter. Do not infer successful
native field restoration solely from Restore reaching its final `true`.

`LocateTaskFieldSlotAndType` (`D837B0`) allows frame zero and performs the same
physical argument/local address formulas using its distinct `layout+0x0C`
method metadata pointer. On `AL=1` it writes both type pointer and storage-slot
address. It does not follow byref contents or search earlier frames; its callers
choose the dereference/store behavior. Existing GetFieldValue evidence is
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00d83870.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00d83870.c)).
The native GetTaskContext producer's separate array/count metadata remains
[ASM](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/raw/0x00d84200.asm.txt)
([pseudocode](https://github.com/JJCodes90/OpenTS3-Playtest/blob/cf6f60a42fe8c5bd181495a32161217972cefebc/tools/ts3w-proof/evidence/native/pseudocode/0x00d84200.c)).
Their existing window/ABI limitations are retained; this package does not newly
accept complete task-context construction or the full inverse writer's lifetime.
