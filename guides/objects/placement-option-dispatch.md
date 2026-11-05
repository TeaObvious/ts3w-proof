# Placement options and lot/world dispatch

Reference: [PC 1.67 identity](../../evidence/reference.json). Static original-code
facts, not a travel or tomb gameplay result.

[00C79A80 ASM](../../evidence/native/world/placement/00C79A80_WorldPlacement_TestPositionAndRotation.asm)
([actual annotated C](../../evidence/native/world/placement/00C79A80_WorldPlacement_TestPositionAndRotation.c))
contains the complete dispatcher. The name is analyst-assigned. Options are the
DWORD at `EBP+1C`; the Boolean result is AL. Overlapping SIMD/stack temporaries
in C are not independent state fields.

| Boundary | Input | Original behavior | Remaining boundary |
| --- | --- | --- | --- |
| C79AC6..C79AE0 | Candidate world X/Z, object component mask | Find lot through C687D0. Use lot branch only if lot exists **and** object mask intersects global011EDF08. Otherwise take C7A147. | Position inside a lot alone does not select that path. Mask initialization is separate. |
| `None`, value0 | No option bits | No zero-options refusal or unsupported-query branch. Run ordinary selected tests with waiver bytes clear. | Zero is not unconditional success. Child placement, overlap and terrain tests may reject. |
| C7A147..C7A20D | World branch | Bit200000 bypasses B010F0/C72D10 admission; otherwise either child must return true. Bit400000 additionally invokes C73230 and can reject. | Dispatch and AL predicates do not establish all child routing/footprint semantics. |
| C79E99..C79EB3 | Options | `SHR EDX,9; AND DL,1; MOV [ESP+11D],DL`. Context starts at `ESP+F0`: byte `+2D = (options >> 9) & 1`. | Door-area policy belongs to downstream intersection functions. |
| Lot and final tests | Built context and pose | Invoke B45930. While admitted, invoke83E3E0 overlaps and selected terrain-option checks. | Carrying200 or answering None is not complete host query equivalence. |

Context construction also maps bit40 to `+2C`, bit8000 to `+2E`, bit10000 to
`+2F`, and bit10 to `+30`. For options240, `+2C` and `+2D` are both1; for0
both are0. World-path checks do not consult200; its transfer occurs in the
lot-context path. Preserve this distinction when reusing an off-lot kernel.

The lot path adjusts candidate Y using sampled height and origin and derives
heading from the quaternion. None does not remove that work. The optional result
collector affects diagnostic accumulation, not whether a failing test passes.
Actual travel timing, every downstream door waiver, physics lifetime and original
runtime execution remain outside this evidence.
