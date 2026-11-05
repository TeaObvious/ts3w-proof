# Sound-finished callbacks and retirement

All addresses refer to the original PC 1.67 reference identified in the
[native index](../../evidence/native/README.md). Analyst names describe reviewed
roles; they are not recovered original symbols. The twelve function pairs below
contain the full reviewed Ghidra body envelopes and the actual annotated
pseudocode. Instructions establish static control flow, not an observed callback
or a tested audio device.

## Managed producer and registration

The original [ScriptCore.Audio caller IL](managed/ScriptCore.Audio.il.txt) and
[managed decompilation](../../evidence/managed/types/ScriptCore.Audio.cs) show two
different orders:

- `StartSound(string, Delegate)`, token `0x060011F6`, starts first, then registers
  only a nonzero returned handle. The selected object-sound overloads likewise
  register after a nonzero start result.
- `StartSoundById(uint, Delegate)`, token `0x060011F5`, registers a supplied
  nonzero handle **before** calling the native start-by-ID entry. Its later
  Boolean result does not undo registration in that managed body.

The [registered wrapper ASM](../../evidence/native/functions/00863330_ScriptCore_Audio_Audio_SoundFinishedCallbackImpl.asm) ([pseudocode](../../evidence/native/functions/00863330_ScriptCore_Audio_Audio_SoundFinishedCallbackImpl.c)) receives two caller-cleaned stack words: unsigned sound ID and native delegate value. It checks global `0x011D9C40`, derives the audio owner by subtracting `0x27BD0`, checks that owner and calls the store. Missing global/owner performs no registration. The native wrapper returns no success value.

The [store ASM](../../evidence/native/functions/008662C0_Audio_StoreSoundFinishedDelegate.asm) ([pseudocode](../../evidence/native/functions/008662C0_Audio_StoreSoundFinishedDelegate.c)) uses ECX for the owner and `RET 8` for its two stack arguments. It submits `{soundId, delegateValue}` to the map at owner `+0x27D0C`. Its third insertion stack word is unused by the insertion routine; the decompiler's masked sound-ID temporary is not a callback flag.

## Map contract and one-shot consumption

The [unique insertion ASM](../../evidence/native/functions/007F4270_UInt32PairMap_InsertUnique.asm) ([pseudocode](../../evidence/native/functions/007F4270_UInt32PairMap_InsertUnique.c)) hashes an unsigned DWORD key by unsigned division modulo bucket count. A node is twelve bytes: key at `+0`, native payload at `+4`, chain pointer at `+8`. Output is node, bucket pointer and an inserted byte. It consumes three stack slots (`RET 0x0C`), including the unused final word.

If the key already exists, insertion returns the existing node with inserted
false and **does not overwrite its payload**. The audio store ignores that flag.
Thus the first registration wins, including an initially null delegate value.
New insertion copies the pair and increments the node count. Rehash/allocation
helpers do not establish a graceful allocation-failure policy here.

The [lookup ASM](../../evidence/native/functions/00A5B9B0_UInt32PairMap_Find.asm) ([pseudocode](../../evidence/native/functions/00A5B9B0_UInt32PairMap_Find.c)) uses the same unsigned modulo and chain comparison. Missing lookup returns the extra sentinel bucket's iterator. The [erase ASM](../../evidence/native/functions/007420B0_UInt32PairMap_EraseIterator.asm) ([pseudocode](../../evidence/native/functions/007420B0_UInt32PairMap_EraseIterator.c)) requires a valid iterator, computes its successor, unlinks/frees the node and decrements the count. No lock or absent-key admission is supplied by that helper.

The [dispatcher ASM](../../evidence/native/functions/008659F0_Audio_DispatchFinishedSoundCallbackEvent.asm) ([pseudocode](../../evidence/native/functions/008659F0_Audio_DispatchFinishedSoundCallbackEvent.c)) accepts ECX owner and **four** stack arguments, ending in `RET 0x10`:

| Argument | Width and use |
| --- | --- |
| Event key | DWORD; only `0x03A129EE` enters this callback path |
| Sound ID | unsigned DWORD map key and first callback value |
| Object GUID | pointer to a full unsigned 64-bit value |
| Stop reason | unsigned DWORD, passed through as the third callback value |

On the admitted event it looks up the ID, copies the delegate value, then
**erases/frees the node before checking the delegate or managed host**. A missing
entry returns. A null delegate or absent host still consumes an existing entry.
Consequently a later repeated event cannot invoke that removed association unless
another registration has inserted one. A same-ID registration made during the
callback follows removal of the old node and can create a new association.
This describes map ordering; it does not establish general concurrent/reentrant
safety of the manager or delegate runtime.

## Arguments delivered to the managed host

For an available host and nonzero delegate, the dispatcher builds three adjacent
32-byte variants and calls host vtable slot `+0x134` with their count three:

| Position | Semantic value | Variant type word at `+0x0A` | Ordinary inline payload |
| --- | --- | --- | --- |
| 0 | unsigned sound ID | `0x0A` | DWORD at `+0x10` |
| 1 | unsigned object GUID | `0x0C` | DWORDs at `+0x10` and `+0x14` |
| 2 | unsigned stop reason | `0x0A` | DWORD at `+0x10` |

The [UInt32 constructor ASM](../../evidence/native/functions/004F6370_Variant_ConstructUInt32.asm) ([pseudocode](../../evidence/native/functions/004F6370_Variant_ConstructUInt32.c)) and [UInt64 constructor ASM](../../evidence/native/functions/004F63D0_Variant_ConstructUInt64.asm) ([pseudocode](../../evidence/native/functions/004F63D0_Variant_ConstructUInt64.c)) clear the flags/type words, set the variant vtable and call their assignment routines. They do not initialize every padding byte.

The [UInt32 assignment ASM](../../evidence/native/functions/004F5F20_Variant_AssignUInt32.asm) ([pseudocode](../../evidence/native/functions/004F5F20_Variant_AssignUInt32.c)) reads one DWORD and stores tag `0x0A`; the [UInt64 assignment ASM](../../evidence/native/functions/004F6020_Variant_AssignUInt64.asm) ([pseudocode](../../evidence/native/functions/004F6020_Variant_AssignUInt64.c)) reads **both** source DWORDs and stores tag `0x0C`. Existing owned/reference variants take additional cleanup/conversion branches; their complete ownership policy is not inferred from the fresh-value case. Reducing the GUID to a native pointer-sized DWORD would lose original callback data.

The host result is a separate 32-byte output variant. Immediately after the
unknown virtual call, instruction `0x00865AB2` tests mask `0x04` at result flags
`+8` (`[SP+0x18]` in the reviewed stack layout). The pseudocode's reused
`local_88` at this point is a **stack-alias artifact**, not a dereference or
flags test on the erased map node. The actual pseudocode keeps that artifact
with an instruction-level annotation; it has not been replaced by hand-written
idealized C. Concrete host invocation, managed exception propagation and delegate
rooting remain outside this slice.

## Incoming manager event and object retirement

The [manager event ASM](../../evidence/native/functions/00865AF0_Audio_HandleManagerEvent.asm) ([pseudocode](../../evidence/native/functions/00865AF0_Audio_HandleManagerEvent.c)) receives the audio interface at owner `+4`. Its outer event `0x03A127DC` reads the inner event key at payload `+8`, sound ID at `+0x10` and stop reason DWORD at `+0x18`. A separate handle map supplies both owner-GUID words when present; otherwise the local GUID remains zero. It calls the earlier finish helper for a found owner, then invokes the callback dispatcher on owner `this-4`. Other manager branches are retained in the full export without claiming their complete meaning. Several returns specify AL only; the upper EAX bits are not a reliable Boolean result.

The [object-sound finish ASM](../../evidence/native/functions/00942A00_ObjectSound_FinishAndRetire.asm) ([pseudocode](../../evidence/native/functions/00942A00_ObjectSound_FinishAndRetire.c)) provides another direct producer. Given available global audio and an object owner, it copies the owner's GUID words at `+8/+0x0C`, dispatches event `0x03A129EE` with sound ID and stop reason zero, then calls helper `0x008661A0`. With the retire byte set, it subsequently invokes a manager virtual slot and removes the matching active row. Active rows are twenty bytes and compare `(rowId & 0x3FFFFFFF) == soundId`.

The callback therefore precedes this object's selected retirement path. Do not
reverse that ordering when a callback can inspect its sound owner. This branch's
literal reason zero is established; it does not prove that every zero reason
means natural completion or that every explicit stop takes this branch.

## Static limits

The node lifecycle, duplicate rule, erase-before-invoke ordering, callback values,
variant widths and selected producer ordering are statically established. No game
process, audio output or callback execution was observed for this review.
Remaining questions include event-producing voice paths, stop-reason meanings,
handle generation/reuse, callback delivery thread, synchronization, delegate GC
or interface lifetime, world/application shutdown and host failure behavior.
The full bodies and [selected direct calls](../../evidence/native/direct-calls.tsv)
retain surrounding consumers without treating indirect targets as recovered calls.
