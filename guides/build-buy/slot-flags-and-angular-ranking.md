# Slot flags and candidate angular ranking

Reference: shipped original PC1.67 TS3W.exe. Names are analyst assignments.
The selected bodies establish scalar predicates and their actual consumers;
they do not replace the full object, attachment or floor validation paths.

## Canonical functions

| Original responsibility | Complete ASM (annotated Ghidra C) |
| --- | --- |
| Slot/product compatibility | [0x0080d4c0](../../evidence/native/functions/0080D4C0_SlotPlacement_MatchesProductFlags.asm) ([pseudocode](../../evidence/native/functions/0080D4C0_SlotPlacement_MatchesProductFlags.c)) |
| Raw product slot-placement flags | [0x00c97780](../../evidence/native/functions/00C97780_ObjectProduct_GetSlotPlacementFlags.asm) ([pseudocode](../../evidence/native/functions/00C97780_ObjectProduct_GetSlotPlacementFlags.c)) |
| Object-to-product flag resolution | [0x00affdd0](../../evidence/native/functions/00AFFDD0_Object_ReadSlotPlacementFlags.asm) ([pseudocode](../../evidence/native/functions/00AFFDD0_Object_ReadSlotPlacementFlags.c)) |
| Rotation flag intersection | [0x00afc0b0](../../evidence/native/functions/00AFC0B0_SlotPlacement_IntersectRotationFlags.asm) ([pseudocode](../../evidence/native/functions/00AFC0B0_SlotPlacement_IntersectRotationFlags.c)) |
| Host candidate collection and rotation-count consumer | [0x00cca4d0](../../evidence/native/functions/00CCA4D0_SlotCandidates_CollectFromHost.asm) ([pseudocode](../../evidence/native/functions/00CCA4D0_SlotCandidates_CollectFromHost.c)) |
| Candidate insertion and angular ranking | [0x00cca400](../../evidence/native/functions/00CCA400_SlotCandidates_AppendWithAngularDistance.asm) ([pseudocode](../../evidence/native/functions/00CCA400_SlotCandidates_AppendWithAngularDistance.c)) |
| Steering without Sim | [0x00afc3f0](../../evidence/native/functions/00AFC3F0_Object_HasSteeringWithoutSim.asm) ([pseudocode](../../evidence/native/functions/00AFC3F0_Object_HasSteeringWithoutSim.c)) |
| Managed callback and additional floor-test admission | [0x00ccdd60](../../evidence/native/functions/00CCDD60_HandTool_ValidateSlotPlacementAndFloor.asm) ([pseudocode](../../evidence/native/functions/00CCDD60_HandTool_ValidateSlotPlacementAndFloor.c)) |

## Flag domains and actual consumers

C97780 returns the raw product DWORD at+A0. AFFDD0 resolves the object's product
key at+18 and returns that slot-placement word, or0 when the definition is absent.
It is not ObjectTypeFlags. 80D4C0 receives ECX slot and one stack product pointer,
returns Boolean in low AL and cleans4bytes. Both raw words must lack None1;
required product&CFF38 must be nonzero and wholly covered by slot flags, while
02000000 must agree. Null product is refused. This selected mask says nothing
about the use of other authored bits in unrelated paths.

AFC0B0 is cdecl with two DWORD inputs and returns a MASK in EAX. If either
30000000 subset is absent it returns0. Otherwise it selects the common rotation
permission. CCA4D0 consumes bit20000000 as8 orientations, else10000000 as4,
else1; its binary32 increments are0.7853982,1.5707964 or0. Consequently a raw
30000000 result selects8 rather than being interpreted as a count.

CCDD60 retains the original managed placement rule. Valid1 remains required;
bit8 overrides flag compatibility and bit10hex overrides intersections. A later
floor test also requires prior success, slot, manager and clear skip input. Its
selected extra trigger is slot&0C001A00 OR child slot flags&0C000000 OR Steering
without Sim. AFC3F0 reads actual component descriptor masks: Steering100 and Sim80.
These pure conditions do not constitute complete native admission or reproduce
managed gameplay policy. CCDD60 has eight cdecl argument words and a low-byte
result with optional callback-result output.

## Angular ranking and physical instructions

CCA400 is thiscall ECX collector, SIX stack words, RET18hex. It stores a candidate
row and appends through CCA320; no scalar return contract is established.
Its ranking equation uses these exact binary32 constants:

| Value | Bits |
| --- | --- |
| Inverse full turn0.15915494 | 3E22F983 |
| Full turn6.2831855 | 40C90FDB |
| Half turn3.1415927 | 40490FDB |

SUBSS computes candidateYaw minus context+2C referenceYaw. A bitwise7FFFFFFF
mask takes its absolute value. MULSS scales by inverse turn; CVTTSS2SI truncates
to Int32, producing80000000 on masked invalid conversion. CVTSI2SS converts back,
MULSS forms completed turns and SUBSS subtracts them. COMISS compares half turn
against the remainder; JBE selects fullTurn-minus-remainder for greater/equal or
unordered input. Otherwise the remainder is retained. Each float operation is
separate; no division, remainder operator, extra absolute value, clamp or fused
multiply-add is present. Decompiler comparisons alone do not preserve unordered
branch semantics. Floating-point status/trap behavior is not a scalar return.

| Candidate yaw bits | Reference bits | Instruction-derived rank bits |
| --- | --- | --- |
| 427B536E | 00000000 | 39C6C000 |
| 45C45918 | 00000000 | 3D47ED80 |

These values follow the inspected instructions and constants; they are not
observations of a running original process. Complete candidate search radius,
height/intersection tests, object lifetime and callback caching retain their
own contracts. No ordinary gameplay regression or performance result is inferred
from the finite unnormalized-angle examples.
