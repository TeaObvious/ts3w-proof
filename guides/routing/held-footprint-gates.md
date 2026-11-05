# Held-footprint catalog gates and failure collection

Static original PC1.67 instructions, selected explicitly as `/TS3W.exe` in
GhidrAssist. Analyst names are descriptive assignments. No game/placement,
geometry test or script callback was executed for these claims.

## Complete original bodies

| Entry | Analyst name | Canonical full pair |
| --- | --- | --- |
| `0x00b44480` | `Placement_TestObjectsForHeldFootprint` | [ASM](../../evidence/native/functions/00B44480_Placement_TestObjectsForHeldFootprint.asm) ([annotated C](../../evidence/native/functions/00B44480_Placement_TestObjectsForHeldFootprint.c)) |
| `0x00c97760` | `Catalog_ReadTypeMask64` | [ASM](../../evidence/native/functions/00C97760_Catalog_ReadTypeMask64.asm) ([annotated C](../../evidence/native/functions/00C97760_Catalog_ReadTypeMask64.c)) |
| `0x00c97790` | `Catalog_TestIntersectionCategoryMask` | [ASM](../../evidence/native/functions/00C97790_Catalog_TestIntersectionCategoryMask.asm) ([annotated C](../../evidence/native/functions/00C97790_Catalog_TestIntersectionCategoryMask.c)) |
| `0x00c89940` | `PlacementLocation_ReadYawWithRefresh` | [ASM](../../evidence/native/functions/00C89940_PlacementLocation_ReadYawWithRefresh.asm) ([annotated C](../../evidence/native/functions/00C89940_PlacementLocation_ReadYawWithRefresh.c)) |
| `0x00b44a50` | `Placement_ValidateFootprintAndCollectFailures` | [ASM](../../evidence/native/functions/00B44A50_Placement_ValidateFootprintAndCollectFailures.asm) ([annotated C](../../evidence/native/functions/00B44A50_Placement_ValidateFootprintAndCollectFailures.c)) |

All five full Ghidra body envelopes are retained; only the contracts below are
established. `B42180` object-pair geometry and other surrounding validation bodies
are unexpanded. The [FGL boundary contract](find-good-location.md) remains scoped
to its separately reviewed request/search/result paths.

## Context and catalog masks

The held-object test and its immediate validator are cdecl
`(candidateContext, optionalFailures)`. Boolean result is AL; upper EAX bits are
not a result contract. Context00/04 holds object/lot,08/0C/10 local X/Z/int level,
14 scalar yaw,1C held catalog,80 phase byte,98 optional preselected-object input,
9C held-footprint row (allow flags row+18). These are this candidate context,
not every FGL request record. Its full producer/lifetime/mode admission is open.

Catalog type identity is exact UInt64 EDX:EAX: field98 low32,9C high32.
`Catalog_TestIntersectionCategoryMask` returns full EAX0/1 for
`field98 & 0x00100000 || fieldD0 & 0x4000010A`. No high type-word test or further
semantic category expansion. The leaf readers do not guard null catalog.

## Held-row gate order

- Allow bit4 returns ALtrue BEFORE candidate collection. Otherwise collect/copy
  candidate pointers. Empty vector or phase byte80 zero cleans up and returns
  true without individual object tests.
- Null/ignored/related candidates and the separate `AFC7C0`/`B41EE0` path precede
  ordinary catalog gates. Full child semantics are not inferred here. Missing
  other catalog skips the ordinary pair path.
- Allow bit80 plus SAME complete type mask decides the pair before geometry.
  Missing held catalog substitutes mask64 zero, still comparable to other mask0;
  a new nonnull guard is not present in this original test.
- If other catalogD0 has20000, require near yaw AND X AND Z; otherwise refuse.
  If other40000 is clear, then skip this same-type candidate successfully.
  With40000 set, require near yaw/X/Z AND other local integer level DIFFERENT
  from candidate level; otherwise refuse. Same-type refusal does not fall through
  to polygon geometry.
- Other type cases: allow100 plus category-mask predicate skips; allow200 plus
  otherD0 bit4 skips. Remaining tag/category checks and object-pair `B42180` call
  are retained, with full semantic contracts open.

Refusal is ALfalse irrespective of collector presence. Nonnull collector creates
and appends raw record kind11hex; its full allocation/message meaning is open.
Temporary candidate vector storage is freed on selected normal exits. This does
not establish exception containment or coherent world/catalog snapshots.

## Scalar angle and exact comparison

Location getter checks byte2C bit10, calls derived refresh when set, then
`FLD DWORD [this+28]` returns the stored Float32 in x87 ST0. There is no `Atan2`
or matrix conversion in the getter. Refresh calculation, angle range and current
matrix-to-scalar representation equivalence remain open.

Yaw uses x87 subtraction then FLOAT32 store before SSE. X/Z use `SUBSS`.
Broadcast `d`, multiply by original Float32 -1, `MAXPS(-d,d)`, ordered `CMPLEPS`
against exact word37800000 (`2^-16`,0.0000152587890625), and require MOVMSKPS==F.
Equality passes; NaN fails. This is not modulo-angle equality or an arbitrary
epsilon. [Necessary original threshold](../../evidence/objects/held-footprint-intersection-data.tsv)
retains four bytes; existing [transform constants](../../evidence/objects/transform-constants.tsv)
retain FAB218=-1 without another copy. Intrinsic `movmskps(extraout_*,vector)`
integer arguments in actual C are decompiler artifacts: the instruction reads
only the SIMD vector and writes an integer mask. x87/SSE exception environment
and full producer precision remain open beyond these selected operations.

## Immediate validation caller

Surrounding validation children execute in order. First false with collectorNULL
returns immediately. With a collector, retain false and continue following checks,
so more failure records may be collected. Nonzero context98 skips most surrounding
checks, still executing held-object validation. Debug calls are gated by11EDBC1;
full child meanings, failure code allocation and renderer interpretation remain
open. Three scoped cdecl overrides restore the physically pushed second collector
argument which older Ghidra signatures omitted. All original bytes remain intact.

## Open contracts

Full `B42180` other-row gates and geometry, special-object/related/ignore admission,
managed `AllowIntersection` exceptions, catalog/phase/location producers, cached
refresh, concurrent ownership and gameplay outcomes remain unproved here. These
selected masks must not be promoted to the entire placement engine or replace
original managed policy. Retained yaw differs structurally from computing
`Atan2` over a current project matrix; this is a comparison boundary, not an
executed defect or an instruction to remove supported modernizations.

[Other-object leaf selectors](placed-footprint-selectors.md) establish additional distinct catalog masks, required runtime masks and numeric helpers without closing the complete other-object validator.
