# Resident-animation skin storage, rig follow-up and SearchLight policy

Scope: original PC1.67 TS3W.exe and pristine gameplay.package managed assembly.
Actual native functions, original data and actual managed method bodies below are
static evidence. No original/game runtime, GPU or fixture execution occurred.

## Model skin allocation and binary producer

[Skin reader ASM](../../evidence/native/functions/006D7DA0_SkinResource_ReadJointNamesAndBindPose.asm) ([actual annotated C](../../evidence/native/functions/006D7DA0_SkinResource_ReadJointNamesAndBindPose.c)).
Physical ECX skin plus three stack DWORDs, RET0C; second stack slot unused here,
third low byte controls byte swapping of floor(byteLength/4) words. Buffer is the
wrapper's +4 object's +8 field; virtual+1C supplies length. Unsigned length must
be >=12. Count is UInt32 at payload+8. Exact further bound is
`length >= wrap32(count * 0x34 + 0x0C)`; IMUL/ADD precede unsigned CMP/JC with no
separate overflow rejection. Tag/version header words are not checked in this body;
null data with admitted length is not guarded. Do not turn this unsafe original
expression into a statement that native malformed data are always rejected.

On allocator AL success, copy count UInt32 hashes from+12, then consume count
48-byte matrix records after the hash array. Each original sequence of 12 float
lanes becomes four 16-byte rows:

| Output row | Original input lanes |
| --- | --- |
|0|0,4,8,+0|
|1|1,5,9,+0|
|2|2,6,10,+0|
|3|3,7,11,+1|

XORPS supplies zeros; the exact required [original float word](../../evidence/objects/skin-affine/0x00f998f8-skin-affine-one.bin)
is little-endian 0000803F, binary32 one. Source advances0x30, destination0x40;
unsigned loop reloads count at payload+8. After expansion, retained count+0x28
produces wrap32(count*0x44+0x38) for resource-size accounting through731BE0.
Success sets AL1, rejection AL0; upper EAX is not an output contract.

[Storage allocator ASM](../../evidence/native/functions/0070D010_SkinResource_AllocateJointStorage.asm) ([actual annotated C](../../evidence/native/functions/0070D010_SkinResource_AllocateJointStorage.c)).
ECX skin plus UInt32 count, RET4. Unsigned MUL count*4 and count*0x40 with SETO,
NEG/OR saturates an overflowing allocation request to FFFFFFFF. The first request
uses the original JointNameHashes debug identity and six physical stack words;
the second uses BindPose, alignment16 and eight words. Existing inferred allocator
signatures abbreviate these physical arguments in actual C; those foreign
functions were not changed for cosmetic output. Store hash+0x2C and matrix+0x30;
only both allocations succeeding writes count+0x28. Hash failure returns AL0.
Matrix failure frees the newly stored hash, clears+0x2C, returns AL0. The old count
and any previously overwritten arrays are not reset/freed here. Zero-size behavior
belongs to the allocator; this is not a verified general replace-existing API.
Selected native reader consumes AL at6D7E02 after CALL6D7DFD. Both actual prototypes
now express instruction-proven boolean returns; no foreign ABI was changed.

This specific original matrix expansion matches the current third-party
Matrix43 parser's column regrouping followed by ModelSkinStreamDecoder row creation.
It does not establish all MLOD palette-to-rig mapping or current safety-validator
parity. The current parallel source scheduler/generation/identity is a separate
host policy, not recovered from this binary resource reader.

## Rig assignment and optional follow-up

Reuse the complete original [rig assignment ASM](../../evidence/native/functions/0093EB00_AnimationComponent_AssignRigResourceKey.asm) ([actual annotated C](../../evidence/native/functions/0093EB00_AnimationComponent_AssignRigResourceKey.c))
and [typed initializer ASM](../../evidence/native/functions/009407C0_AnimationComponent_InitializeFromParameters.asm) ([actual annotated C](../../evidence/native/functions/009407C0_AnimationComponent_InitializeFromParameters.c)).
The descriptor hash 8415534A carries the actual 8EAF13DE rig interface key.
Assignment clears/releases the old+0x20 interface before lookup, resolves and queries
that IID, and releases its temporary resource. Nonzero low-byte follow-up calls
93DF40 even after failure; initializer9407C0 supplies zero.

[Follow-up ASM](../../evidence/native/functions/0093DF40_AnimationComponent_NotifyRigAndEnsureLookAt.asm) ([actual annotated C](../../evidence/native/functions/0093DF40_AnimationComponent_NotifyRigAndEnsureLookAt.c)).
ECX component, no stack argument consumed, plain RET. Existing inferred fastcall
one-ECX prototype is retained. A nonnull rig dispatches object event0x13 using owner
at+4 and rig at+0x20. If the+0x28 controller is null, owner+0x2C intersects the
runtime mask11EA0FC and actual rig predicate57B690 returns AL nonzero, allocate
0x34 bytes for Animation/LookAtController, initialize via580D80 and store+0x28.
Allocation null stores zero. Existing controller/false mask/false predicate do not
create a replacement. Predicate/constructor internals and all event listeners are
outside this selected body, not inferred current renderer-readiness behavior.

Original world-pose conversion is separately complete:
[pose producer ASM](../../evidence/native/functions/00957910_TransformComponent_GetWorldQuaternionTranslation.asm) ([actual annotated C](../../evidence/native/functions/00957910_TransformComponent_GetWorldQuaternionTranslation.c));
[matrix getter ASM](../../evidence/native/functions/00957A90_TransformComponent_GetWorldMatrix.asm) ([actual annotated C](../../evidence/native/functions/00957A90_TransformComponent_GetWorldMatrix.c)).
Parent/slot composition, aligned64-byte output and original non-normalizing SSE
order remain as documented in [object handling](object-handling.md). Current
System.Numerics quaternion*translation construction is not claimed bit-identical
for nonunit/NaN/SIMD rounding cases.

## Acquisition failure is separate from manager cache policy

The complete93EB00 assignment above initializes its local resource output to0
and clears component+20 before the call. At93EB42 the manager is ECX and its
virtual+0C consumes the six physical words (keypointer,outpointer,0,0,0,0).
TEST AL/JE at93EB44/46 skips the interface query and new installation on false;
the old rig has already been released. A successful load with null output also
selects null. These local failure paths do not preserve the previous rig.
The nonzero follow-up byte is tested separately at93EB88;93DF40 sees the resulting
null binding and does not dispatch event13 or create a controller. Temporary
resource release remains after that optional follow-up.

This component wrapper establishes neither a global negative-result cache nor
its key, lifetime, retry, eviction or world/package reset rules. Those require
the actual manager returned by4AFE80, its virtual+0C target, failure entry writer
and lookup reader, plus reset/destructor callers. No filename-selected error
suppression or managed InvalidDataException category is present in this body;
neither its absence nor ALfalse establishes the complete game's provider/error
policy. Malformed structured resource rejection belongs to the separate57C4B0
reader and its manager/consumer propagation.

The [slot refresh ASM](../../evidence/native/functions/009517E0_SlotComponent_RefreshAnimationBinding.asm) ([annotated C](../../evidence/native/functions/009517E0_SlotComponent_RefreshAnimationBinding.c))
and [explicit binding setter ASM](../../evidence/native/functions/00951840_SlotComponent_SetBindingWord.asm) ([annotated C](../../evidence/native/functions/00951840_SlotComponent_SetBindingWord.c))
are separate consumers: they can attempt resource loading only with an empty
existing binding and zero wrapping total slot count, then store the selected
binding word. The setter always returns AL1; that is not an acknowledgement
that a rig resource was decoded, a bone exists or renderer work completed.
Full Sim/model commit listener951960, concrete resource manager failure
propagation and render-reference/queue teardown remain separate original paths.

## Pristine managed SearchLight controller

Source is gameplay.package S3SA073FAA07:00000000:B9C90FDC6793BC0A,
uncompressed package resource at offset15327130, envelope7736861 bytes. Independently
decrypted original Sims3GameplayObjects.dll is7630848 bytes, SHA256
356dc01b4f1d0817822a2cd6f470cff763307911ed2cf22481eb6446bba512ae,
MVID b67f5f42-2c02-4bc7-9878-87a75e61a538. Envelope game-version string0.2.0.209
is retained as envelope metadata, not mislabeled the installed patch number.
Rebuilt managed project source was a lead only. The DLL and package remain outside
Git; selected necessary original CIL and complete actual decompiled members are here:

- [Eight complete CIL methods](managed/SearchLight.controller.pristine.cil.txt):331 bytes,
  complete original tiny/fat headers, raw method bytes, actual metadata token and
  string joins; tokens06005955/5962/5963/5964/5965/5966/5967/597D.
- [Actual SearchLight members](managed/SearchLight.controller.actual.cs.txt).
- [Actual RabbitHole startup](managed/SearchLightRabbitHole.startup.actual.cs.txt).

TurnOn first writes on=true and SetMaterial(OpenManyLights1). Only null client
acquires SearchLight at signed priority -2/flagfalse, binds actor searchlight, enters
Enter and requests Loop(false). TurnOff first writes false/default, then requests
Exit(false) if a client exists and clears it. Reset calls base then clears client
and restarts only when on. Export calls base, writes bool key 0x0AEF45E7, returns
base result; import calls base, reads that bool with default false, restarts if true
and returns base result. RabbitHole startup calls base startup then removes both
interaction types. The CIL explicitly uses signed ldc.i4.s FE for priority -2,
field address for ReadBool and the exact original string literals.

These are original game-assembly responsibilities and hook identities, not engine
fallback controllers. Current Additive-range exclusion is a presentation adaptation
for recognized fixture assets; these methods do not classify every Additive shader
range as a beam. Actual beam geometry/asset selection, palette binding, all material
state consumers and rendered acceptance are distinct unresolved boundaries.

## Independent examples and evidence limits

Count1 requires64 bytes:12+4+48.63 fails; count 0 still calls allocation. Twelve
input floats 1..12 expand to rows(1,5,9,0),(2,6,10,0),(3,7,11,0),(4,8,12,1).
Overflow uses modulo32 before the unsigned length comparison; it is not checked
arithmetic. Allocation failure returns only ALfalse and does not publish count.
Repeated TurnOn writes material each time while acquiring only for null client;
TurnOff with no client still changes material. Absent imported bool defaults off;
a true value restarts even if base import returned false. These are independent
static expectations, not executed test results.

All three native names are analyst roles. Full owned listing is exported, original
bytes matched pristine PC1.67 PE, and Ghidra saved clean without changing bytes.
No game/build/fixture test or observed GPU acceptance is implied.
