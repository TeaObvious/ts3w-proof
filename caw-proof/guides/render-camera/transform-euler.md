# Original transform quaternion and Euler projection

## Reference and boundaries

These are complete selected CAW1.22.10 Sims3Common.dll bodies. Analyst names
describe instruction-reviewed behavior; they are not recovered symbols. No
editor, transform workload or numerical acceptance test was executed.

| Role | Original ASM and actual annotated Ghidra C |
| --- | --- |
| Compose selected pose | [1074A190 instructions](../../evidence/native/Sims3Common/functions/1074A190_CAW_TransformBuildPoseWithLink.asm) ([pseudocode](../../evidence/native/Sims3Common/functions/1074A190_CAW_TransformBuildPoseWithLink.c)) |
| Copy absolute quaternion | [1074A2E0 instructions](../../evidence/native/Sims3Common/functions/1074A2E0_CAW_TransformCopyAbsoluteQuaternion.asm) ([pseudocode](../../evidence/native/Sims3Common/functions/1074A2E0_CAW_TransformCopyAbsoluteQuaternion.c)) |
| Extract Euler angles | [10763C30 instructions](../../evidence/native/Sims3Common/functions/10763C30_CAW_MatrixRowsToEulerXyz.asm) ([pseudocode](../../evidence/native/Sims3Common/functions/10763C30_CAW_MatrixRowsToEulerXyz.c)) |
| Exported absolute Euler query | [10980B00 instructions](../../evidence/native/Sims3Common/functions/10980B00_TransformComponent_GetAbsoluteEulerRotation.asm) ([pseudocode](../../evidence/native/Sims3Common/functions/10980B00_TransformComponent_GetAbsoluteEulerRotation.c)) |

The four contiguous bodies total986bytes and276instructions. The selected
data words are in [the original numeric data](../../evidence/native/Sims3Common/transform-angle-data.tsv).
The existing [terrain data](../../evidence/native/Sims3Common/terrain-collision-data.tsv)
already retains shared0.5 at10B310EC. No duplicate half word is needed.

## Pose producer and physical ABI

1074A190 receives its owner in ECX and one stackword for an aligned eight-float
output; RET4 cleans that word. EAX returns the supplied output pointer. With
owner+30 zero it copies32bytes from owner+10/+20: quaternion4 then vector4.
Otherwise it calls10749810 using the same owner and a local pose buffer, then
combines the returned and local fields with SIMD product/sum/difference operations.
Vector composition uses stored2.0. The fourth vector lane retains the actual
SIMD arithmetic, including equal-product subtraction; exceptional inputs do not
justify replacing that expression with a universal zero.

1074A2E0 has the same ECX/one-stackword/RET4 convention. It calls1074A190 and
copies the first16bytes to its caller's aligned quaternion output, returning that
pointer in EAX. Neither selected function contains a normalization or identity
fallback. The deeper10749810 link lookup, pose production, cycle behavior and
ownership are unexpanded; a serialized parent identifier alone does not establish
this original live link state.

The original exported10980B00 is cdecl with outputVector3 and component pointer
as two physical stackwords, plain RET. It supplies the component as ECX to the
quaternion copy, builds three aligned four-float matrix rows, and calls10763C30.
Its final external stores copy onlyXYZ12bytes. The intermediate angle output is
16bytes; it must not be allocated as an unpadded three-float buffer for the helper.

## Matrix preparation

The wrapper multiplies every quaternion lane by the binary32 approximation
`0x3FB504F3` of sqrt2. Negative scaled squares plus0.5 and paired products feed
the original SHUFPS/ADDPS/SUBPS sequence. It does not locally normalize the
quaternion. This construction is mathematically related to usual quaternion
matrix equations, but changing multiplication grouping or replacing the sqrt2
route with exact2 products is not instruction-level numerical equivalence.
The actual C preserves the selected scalar expressions and original instructions
retain their SIMD order.

## Euler selection and output

10763C30 is cdecl with two stack pointers, plain RET, and no return-value contract.
Using zero-based row/column names, it computes binary32
`h = sqrt(m00*m00 + m01*m01)` with MULPS, ADDPS and SQRTPS. COMISS compares h
with the stored binary32 word `0x3A83126F`, approximately0.001. JBE selects the
singular branch for less, equal or unordered. Unmasked floating-point exceptions
remain caller-state behavior; there is no local finite-value guard.

| Selection | X | Y | Z | Fourth output lane |
| --- | --- | --- | --- | --- |
| h strictly above threshold | atan2(m12,m22) | atan2(0-m02,h) | atan2(m01,m00) | Z |
| Less/equal/unordered branch | atan2(0-m21,m11) | atan2(0-m02,h) | positive0 | positive0 |

FPATAN consumes the numerator/denominator loaded in that order and computes
atan2(ST1,ST0). Each result is rounded through a binary32 FSTP before SIMD output
packing. Subtractions start from positive zero; replacing these with sign-bit
negation changes exceptional or signed-zero questions. No clamping, wrapping,
null guard or output transaction is present. MXCSR, x87 control state, valid
aligned storage and the actual producer values remain preconditions.

The other direct caller10768E2D and the deeper10749810 producer are static
boundaries. These selected bodies do not establish all parenting/slot semantics,
world-space lifetime or numerical equality to another platform's atan2 routine.
