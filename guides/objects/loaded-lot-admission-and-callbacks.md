# Loaded-lot object creation and callback ordering

Original PC1.67 TS3W.exe, identified centrally. Names are analyst-assigned roles,
not recovered source symbols. Complete original owned ASM and actual saved,
annotated Ghidra C establish static contracts; no native runtime or host gameplay,
fixture, callback-stress or failure-recovery acceptance is claimed.

| Entry | Analyst role | Complete original code |
| --- | --- | --- |
| 00798D90 | ObjectPlacement_AdmitCreatedOwner | [ASM](../../evidence/native/functions/00798D90_ObjectPlacement_AdmitCreatedOwner.asm) ([C](../../evidence/native/functions/00798D90_ObjectPlacement_AdmitCreatedOwner.c)) |
| 00ACD130 | Lot_AdmitCreatedObject | [ASM](../../evidence/native/functions/00ACD130_Lot_AdmitCreatedObject.asm) ([C](../../evidence/native/functions/00ACD130_Lot_AdmitCreatedObject.c)) |
| 00C8A810 | LocationComponent_ResolveUncontainedWorldPosition | [ASM](../../evidence/native/functions/00C8A810_LocationComponent_ResolveUncontainedWorldPosition.asm) ([C](../../evidence/native/functions/00C8A810_LocationComponent_ResolveUncontainedWorldPosition.c)) |
| 00C8ABE0 | LocationComponent_UpdateForWorldPosition | [ASM](../../evidence/native/functions/00C8ABE0_LocationComponent_UpdateForWorldPosition.asm) ([C](../../evidence/native/functions/00C8ABE0_LocationComponent_UpdateForWorldPosition.c)) |
| 00C8A200 | LocationComponent_NotifyManagedLotUpdate | [ASM](../../evidence/native/functions/00C8A200_LocationComponent_NotifyManagedLotUpdate.asm) ([C](../../evidence/native/functions/00C8A200_LocationComponent_NotifyManagedLotUpdate.c)) |
| 00C71160 | ObjectManager_AdmitAndNotify | [ASM](../../evidence/native/functions/00C71160_ObjectManager_AdmitAndNotify.asm) ([C](../../evidence/native/functions/00C71160_ObjectManager_AdmitAndNotify.c)) |
| 00AB59B0 | Lot_SelectObjectPhysicsContext | [ASM](../../evidence/native/functions/00AB59B0_Lot_SelectObjectPhysicsContext.asm) ([C](../../evidence/native/functions/00AB59B0_Lot_SelectObjectPhysicsContext.c)) |
| 00ACC2B0 | Lot_InsertObjectTileMembership | [ASM](../../evidence/native/functions/00ACC2B0_Lot_InsertObjectTileMembership.asm) ([C](../../evidence/native/functions/00ACC2B0_Lot_InsertObjectTileMembership.c)) |
| 00AB2D40 | Lot_CompleteObjectAdmission | [ASM](../../evidence/native/functions/00AB2D40_Lot_CompleteObjectAdmission.asm) ([C](../../evidence/native/functions/00AB2D40_Lot_CompleteObjectAdmission.c)) |
| 00C6FF70 | ObjectManager_RemoveOwnedObject | [ASM](../../evidence/native/functions/00C6FF70_ObjectManager_RemoveOwnedObject.asm) ([C](../../evidence/native/functions/00C6FF70_ObjectManager_RemoveOwnedObject.c)) |
| 00C6E170 | ObjectManager_NotifyExistingMembersInserted | [ASM](../../evidence/native/functions/00C6E170_ObjectManager_NotifyExistingMembersInserted.asm) ([C](../../evidence/native/functions/00C6E170_ObjectManager_NotifyExistingMembersInserted.c)) |

## Actual loaded-lot caller and virtual slots

798D90 resolves fullGUID, retains the object reference and applies Transform before
selecting the containing, explicit or default world-lot manager. Direction uses
actual RSQRTPS/Newton arithmetic and cross products; generic managed matrix helpers
are not automatically identical. It calls manager virtual+30. After successful
return it dispatches object event0B and releases its retained reference; failure
returns lowALfalse after owned cleanup. The physical bridge uses eleven cdecl
DWORD input slots and ordinary RET; decompiler upper return bits are not success data.

The original [three vtable words](../../evidence/native/data/loaded-lot-admission-vtable-slots.tsv)
establish ACD130, generic manager selectorC71160 and Physics selectorAB59B0.
ACD130 was previously unowned in the selected analysis database; original data
pointer010662D0 and code flow establish its exact entry. It uses ECXlot, one
object stackDWORD, RET4, ALBoolean. Calls virtual74, then ACC2B0; on success calls
AB2D40 and returnsAL1. Failure after eligible generic insertion callsC6FF70 removal
and returnsAL0. That remover first requires the actual current manager pointer
to equal this and the exact object pointer to be present in its vector; otherwise
it leaves the object alone. Only owned membership/maps and references are dropped.
Flag0 from this failure path does not request globalGUID removal. No original byte was changed to define this function.

C71160 rejects already managed objects through68F130, sets manager via934250,
atomically retains a reference, appends rawpointervector, obtains context through
virtual6C and dispatches event15hex with that context. AB59B0 finds Location;
level7FFFFFFF becomes0, flagbit5 adds1, signed clamp to lot minimum precedes
segmented Physics-context selection. Missing Location yields0. Logical level is
not universally the selected Physics floor.

## Tiles, completion and different event orders

ACC2B0 requires Location, admits its selected special owner, calculates actual
compact bounds throughAB8D70 and appends fullGUID pairs through tile/level vectors.
It has original special fireplace, rug, basement and water branches; its live rug
predicate invokes RugManager_AddRugRecord. A generic rectangle/index projection
is not the complete native component/lot admission. Signed level and compact
bound fields must be verified at their actual instructions, not guessed from
float-looking decompiler locals that carry integer bits.

AB2D40 optionally updates Location owner throughC8AD40, marks lot bytes+425/+334,
then dispatches object event9 with lot payload. The selected creation sequence is
therefore generic manager/event15 -> tiles -> completion/event9 -> outerevent0B.
This must not be replaced by a universal B-before15 rule from a different helper.
C6E170 is that other complete loop: existing vector members get0B, then the
virtual6C context and15. Both physical paths are retained separately.
The actual Physics/Model/Tree/router event consumers retain their own ownership,
readiness and notification lifetimes.

## Location and managed callback reentry

C8ABE0 requires allowed hiddenflags result (notFFFFFFFF), global world registry
and Transform. It calls specializedC8A550, otherwise uncontainedC8A810. That resolver
owns actual lot/coordinate/yaw/floor/room and delta fields, including special cases.
Owner transition may raise event0B based on original lot-detail readiness. Delta
flags3Chex callC8A200 BEFORE further nonzero-delta transitionC89A20. Original field
loads and branches are authoritative for signedness/width; current prepared-lot
adapters do not establish all native specialcell/water/room fallback behavior.

C8A200 receives Location inECX (no stack inputs). Owner component-mask gate controls
four Variant arguments: full ownerGUID, full lotGUID, level and room. The registered
world callback ID is **0x11, or17decimal**, not17hex. Local Variant cleanup does not
make the managed callback all-or-nothing. It can reenter object/manager membership;
no CLR revision ticket, snapshot rollback or universal compensating notification
is supplied by this native body.

## Contract boundaries

The selected original functions establish the precise caller, ABI, virtual slots,
state transitions and callback phases. They do not establish all original managed
initialization/purchase decisions, active-game exception semantics, arbitrary
reentrant host compensation or complete hidden-section reuse. Snapshot rollback,
index generations and revision claims are host mechanisms requiring their own
correct ownership; preserving original hooks is separate from copying gameplay policy.

All eleven complete envelopes match pristine original executable bytes. GhidrAssist
annotations/signatures saved clean, original FileBytes unchanged; complete canonical
pair links and lookup indexes checked. Native allocator failures, every child
component, unknown callback dispatch and live GPU output remain separate evidence.
