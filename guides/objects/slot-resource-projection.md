# Slot resource projection, lookup and load completion

This is selected static PC 1.67 evidence using the centrally identified
[original executable](../../references/retained-proof-overview.md). Names are analyst assignments. Memory
layouts below are not a complete RSLT binary grammar. No original loading,
malformed resource, slot, animation or gameplay test was executed.

## Lookup and flag consumers

`SlotComponent_GetByOrdinal` receives ECX component and one UInt32 ordinal,
returns a pointer in EAX and uses RET4. Unsigned comparisons/subtractions visit
these five arrays, then the dereferenced pointer vector `[+0x54,+0x58)`:

| Category, from original allocation labels | Component count / base | Memory row stride |
| --- | --- | --- |
| Routing | `+0x08 / +0x0c` | `0x18` |
| Containment | `+0x10 / +0x14` | `0x20` |
| Effect | `+0x18 / +0x1c` | `0x18` |
| Target | `+0x20 / +0x24` | `0x18` |
| Cone | `+0x28 / +0x2c` | `0x20` |

The vector count is arithmetic-right-shift32 `(end-begin)>>2`. An ordinal
outside the final unsigned range returns null. Selected arrays and vector
elements are assumed valid. [ASM](../../evidence/native/functions/00950110_SlotComponent_GetByOrdinal.asm) ([annotated pseudocode](../../evidence/native/functions/00950110_SlotComponent_GetByOrdinal.c)).

Name lookup rejects zero immediately, sums the five counts and vector count
with wrapping DWORD addition, and scans increasing ordinals. Full DWORD
equality against record `+4` returns the **first** match. It does not calculate
a hash, deduplicate names or check the returned record for null before reading
its name. [ASM](../../evidence/native/functions/009501A0_SlotComponent_FindFirstNameWord.asm) ([annotated pseudocode](../../evidence/native/functions/009501A0_SlotComponent_FindFirstNameWord.c)).
The separate five-byte jump has identical ABI; Ghidra inlines the target body
in its actual thunk pseudocode.
[Thunk ASM](../../evidence/native/functions/00950950_SlotComponent_FindFirstNameWordThunk.asm) ([annotated pseudocode](../../evidence/native/functions/00950950_SlotComponent_FindFirstNameWordThunk.c)).

The setter uses the first name match, ORs the full mask into flags `+8` when
its enabled byte is nonzero, and clears those bits otherwise. Its AL Boolean
reports row existence, including an unchanged or zero mask. The getter tests
`(flags & mask)==mask`, requiring **all** bits; zero mask succeeds only when
the row exists. Missing names return false. Setter RET12, getter RET8.
[Setter ASM](../../evidence/native/functions/00950350_SlotComponent_SetFlagMaskByName.asm) ([annotated pseudocode](../../evidence/native/functions/00950350_SlotComponent_SetFlagMaskByName.c));
[getter ASM](../../evidence/native/functions/00950390_SlotComponent_HasAllFlagBitsByName.asm) ([annotated pseudocode](../../evidence/native/functions/00950390_SlotComponent_HasAllFlagBitsByName.c)).

## Resource attempt and ownership

`SlotComponent_TryResourceAndComplete` has ECX component, no stack arguments,
and returns **AL1 on every ordinary exit**, including a missing key or failed
resource request. Upper EAX bits are not a result. It gets the global resource
manager and, only when component DWORD `+0x38` is nonzero, invokes manager
virtual `+0x0c`: ECX manager, six stack words
`(&component[0x30], &wrapperOut, 0, 0, 0, 0)`. The request's AL controls whether
projection follows; it is not propagated to the caller.

The request precedes clearing/releasing old payload `+0x44`. On request
success it invokes wrapper virtual `+0x0c(0x00adad1d)` and projects the returned
payload with reset byte zero. A successful request with null wrapper/payload
is not locally guarded. The wrapper is released at the end when nonnull.
Failed requests still clear/release old payload ownership, without clearing
the category arrays or counts here. This proves mutation order, not that such
a stale state is reached in an ordinary game workflow or remains usable.
[ASM](../../evidence/native/functions/00950EC0_SlotComponent_TryResourceAndComplete.asm) ([annotated pseudocode](../../evidence/native/functions/00950EC0_SlotComponent_TryResourceAndComplete.c)).

## Projection from an already decoded payload

`SlotComponent_ProjectResource` receives ECX component, payload pointer and
reset byte, RET8, void. A true reset clears key words `+0x30..+0x3c`, invokes
record cleanup and zeros binding word `+0x40`; false skips that cleanup.
Unless the payload is already owned, it retains new, stores `+0x44`, then
releases old through ECX virtual calls. Null is not a valid input: the function
subsequently reads payload `+0x2c` without a guard.

| Payload field | Projection |
| --- | --- |
| Counts `+0x2c..+0x3c`, step4 | Five category counts, in table order |
| Starts `+0x40..+0x50`, step4 | Global ordinal of each category |
| Pointer `+0x54` | DWORD names indexed by global ordinal → row `+4` |
| Pointer `+0x58` | Auxiliary DWORDs by global ordinal → row `+0x10` |
| Pointer `+0x60` | Matrix storage, `0x40` per global ordinal → borrowed pointer at row `+0x0c` |
| Unsigned version `+0x28`, pointer `+0x5c` | Version<4 gives containment row `+0x18` immediate `0x000c0038`; otherwise category-local DWORD |
| Pointer `+0x64` | Category-local cone float32 pairs → row `+0x18/+0x1c` using x87 FLD/FSTP |
| Count `+0x68`, pointer `+0x6c` | `0x1c`-byte mapping rows: global ordinal then auxiliary payload |

It retains matrix pointers without decomposition/copy. Cone float transport is
not an integer bit copy for every exceptional floating-point value. Category
allocation is count×stride plus a four-byte cookie, each overflow step saturated
to `0xffffffff`. Allocation failure does not roll back published counts or
guard later writes. Positive row loops use unsigned comparisons; some inline
constructor countdowns use signed comparisons. No general safe count admission
follows from this allocation expression. A zero count does not explicitly
overwrite its previous base pointer.

Mapping ordinals are dispatched by the category starts without local bounds
validation. Each passes its own row address+4 to a generic helper storing one
DWORD at destination `+0x14`. Thus this use borrows an auxiliary pointer; it does
not decode/copy six floats here. Repeated mappings for one slot overwrite the
pointer in original order. The helper has many unrelated callers, hence its
generic analyst name. [Projection ASM](../../evidence/native/functions/00950970_SlotComponent_ProjectResource.asm) ([annotated pseudocode](../../evidence/native/functions/00950970_SlotComponent_ProjectResource.c));
[field-store ASM](../../evidence/native/functions/009DE4D0_RecordField14_StoreDword.asm) ([annotated pseudocode](../../evidence/native/functions/009DE4D0_RecordField14_StoreDword.c)).

The actual Ghidra C reuses the reset parameter's stack storage for DWORD loop
counters; `_resetState` expressions are not repeated byte truncation. Original
[allocation label bytes](../../evidence/native/slot-projection-data.tsv) establish
the five category names. Their row strides describe memory, not wire lengths.

## Cleanup asymmetry and initialization gates

Cleanup destroys/frees the five array storages using count cookies, clears
all five bases, and clears counts `+0x08/+0x10/+0x18/+0x20`. **It does not write
zero to cone count `+0x28`: instruction `0x009504d9` zeros `+0x20` again.**
Dynamic entries are destroyed with flag0, linked into the `0x011ea128` free
list, and their vector end becomes begin; capacity remains. The key, binding
and payload ownership are not cleared by this local helper. This asymmetry
must not be silently repaired in the exported evidence or promoted to a
recommendation for unsafe reconstruction.
[Cleanup ASM](../../evidence/native/functions/00950410_SlotComponent_ClearRecordStorage.asm) ([annotated pseudocode](../../evidence/native/functions/00950410_SlotComponent_ClearRecordStorage.c)).

The animation refresh obtains the owner's Animation component using registered
mask `0x011dd484`, then invokes interface `component+8` virtual `+0x20` to obtain
a binding word, or uses zero when missing. It attempts resource loading only
if existing binding `+0x40` and the wrapping total slot count are both zero,
then stores the new binding. RET4 proves an unused stack argument omitted by
the earlier decompiler prototype. The explicit binding setter uses the same
load gate before storing its caller's word. Both always return AL1. A retained
cone count can therefore affect these local gates; complete caller invariants
remain unresolved.
[Refresh ASM](../../evidence/native/functions/009517E0_SlotComponent_RefreshAnimationBinding.asm) ([annotated pseudocode](../../evidence/native/functions/009517E0_SlotComponent_RefreshAnimationBinding.c));
[setter ASM](../../evidence/native/functions/00951840_SlotComponent_SetBindingWord.asm) ([annotated pseudocode](../../evidence/native/functions/00951840_SlotComponent_SetBindingWord.c)).

## Limits

The complete RSLT stream reader, matrix/offset consumers, animation binding
semantics, malformed-data policy and all reset callers remain separate work.
Direct projection callers also occur within large character-building functions
at `0x00b1e870`, `0x00b69d80` and `0x00b556e0`; those entire bodies were not
reviewed here. This guide does not establish safe reload, atomic failure,
duplicate-offset rejection or original finite-value validation.

## Actual slot/bone attachment command and point predicate

The registered ordinary `Slots_AttachToSlotWithOffsetImpl`76E650 calls **959E90 at76E99B**, not959F10. Its existing864byte canonical window is bounded, not a newly recovered complete owned body. [Frontend ASM](../../evidence/native/functions/0076E650_ScriptCore_Slots_Slots_AttachToSlotWithOffsetImpl.asm) ([C](../../evidence/native/functions/0076E650_ScriptCore_Slots_Slots_AttachToSlotWithOffsetImpl.c)).

[959E90 ASM](../../evidence/native/functions/00959E90_FUN_00959e90.asm) ([C](../../evidence/native/functions/00959E90_FUN_00959e90.c)) physically receives ECX childTransform and four separate words: parentObject, rawslotname, offsetpointer, occupancybyte. RET10; missing parent/Slots returns3, unavailable9500F0/first matching name950950/point virtual+8(1) returns4. It calls958D90 with explicitbone word0. [959F10 ASM](../../evidence/native/functions/00959F10_FUN_00959f10.asm) ([C](../../evidence/native/functions/00959F10_FUN_00959f10.c)) instead resolves a supplied bone identifier using950960→950200, appends951BC0 only when absent, returns8 on append refusal or2003 on missing virtual+8(1), and passes explicitbone word1. Its four physical words likewise distinguish identifier from offset. The inferred C conflates those operands; it is not an ABI authority.

Both enter the existing [958D90 ASM](../../evidence/native/functions/00958D90_TransformComponent_AttachToSlotPoint.asm) ([C](../../evidence/native/functions/00958D90_TransformComponent_AttachToSlotPoint.c)) with seven words; after its own parent/occupancy/cycle/pose admission and Slot callback it calls the [command producer958B10 ASM](../../evidence/native/functions/00958B10_FUN_00958b10.asm) ([C](../../evidence/native/functions/00958B10_FUN_00958b10.c)). ECX is childTransform; producer stack is explicitbonebyte, point, parentObject/RET0C. The producer has no local Sim-type check. Point virtual+8(3) optionally exposes containment flags:40000000 selects the alternate orientation mode,00800000 forces the height-adjust/static branch. These are distinct flags from the general point flags+8.

Explicitbone selects mode1 or3. Otherwise, with no height-adjust flag, point virtual+10 true selects mode2 or3; false selects4. All five selected point vtables in [file-backed dispatch data](../../evidence/native/animated-slot-dispatch-data.tsv) use the **same** [799BD0 ASM](../../evidence/native/functions/00799BD0_ShaderBytecode_HasGpuObject.asm) ([C](../../evidence/native/functions/00799BD0_ShaderBytecode_HasGpuObject.c)) at+10. Its complete9byte body returnsAL from `DWORD[ECX+10]!=0`. In a point receiver that word is the bone identifier populated by950970 or951BC0. The older ShaderBytecode analyst name describes another caller, not a universal GPU or Sim predicate. A function's name is not sufficient type evidence.

The cycle gate is an ancestor walk, not only a direct self-parent test. At959153 the proposed parent is loaded;959156 compares it with childTransform+4. A match reaches95933C, returning full EAX7/RET1C. Otherwise959163..959175 query Transform mask11EA158 and advance to that ancestor's parent+30;95917D repeats while nonnull. Missing Transform terminates the walk. Thus a proposed parent already descending from the child is refused before the subsequent different-point unlink/publication path. The earlier same-point and occupancy admission retain their own order. The complete958D90 ASM/C pair immediately above contains this instruction evidence; native parent pointers are not a specification for a CLR dictionary lock, but every replacement must account for the full authoritative parent chain, including links owned by different host subsystems. This does not prove concurrent graph mutation is safe or establish every malformed-cycle recovery case.

Modes1/2/3 carry a resolved model index from [80D610 ASM](../../evidence/native/functions/0080D610_FUN_0080d610.asm) ([C](../../evidence/native/functions/0080D610_FUN_0080d610.c)): ECXpoint, stackparent; get Animation component11DD484 and binding via component+8 virtual+20, then tail575C80(binding+28,point+10). Missing prerequisites returnFFFFFFFF. It does **not** transmit the original bone hash as the renderer lookup argument. No owned575C80 implementation is inferred from this tail alone. Mode4 instead copies64bytes from point virtual+18, optionally adjusts through virtual+20 using parent957A90 matrix; that is where the authored RSLT matrix enters this command.

[Position helper80D650 ASM](../../evidence/native/functions/0080D650_FUN_0080d650.asm) ([C](../../evidence/native/functions/0080D650_FUN_0080d650.c)) reads the auxiliary pointer+14 written by950970/9DE4D0. Null writes four zero words; nonnull copies XYZ and duplicatesX into the fourth lane, with EAX preserving the outputpointer. Producer958B10 subsequently forces positionW=1. [Rotation helper80D6B0 ASM](../../evidence/native/functions/0080D6B0_FUN_0080d6b0.asm) ([C](../../evidence/native/functions/0080D6B0_FUN_0080d6b0.c)) similarly reads auxiliary words+0C/+10/+14, duplicates the first lane, or writes zeros. The downstream consumer uses the first three as Euler inputs; it is not a transported quaternionXYZW. Modes2/3 do not copy RSLT matrix in this producer. That fact alone does not prove a Sim-only identity rule or parity of the host's non-Sim inverse-bind conversion: concrete parent bone-query semantics remain to be resolved.

The command9375C04F contains childGUID, parentGUID, mode, resolvedindex/staticmatrix and offset vectors.693380 admits it to the render command channel; no local resource/GPU completion follows. See the existing [pose publication guide](../animation/pose-cache-and-publication.md#attachment-command-reader-and-mode-consumer) for actual reader, state installation and later child-world consumption. Native queues, ownership and model indexes are not a specification for a CLR dictionary key, reference guard, TryEnter or a process environment switch.
