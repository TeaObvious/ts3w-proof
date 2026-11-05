# Four-lobe source-color accumulation

The selected PC 1.67 function at `0069F490`, named `LightSource_AccumulateFourLobeColor` for analysis, accumulates one supplied source into four destination color rows. It does not establish floor-exclusive ownership or the complete source-provider and map-publication paths. Its complete [176-instruction ASM](../../evidence/native/functions/0069F490_LightSource_AccumulateFourLobeColor.asm) ([C](../../evidence/native/functions/0069F490_LightSource_AccumulateFourLobeColor.c)) contains 683 owned bytes in three inclusive ranges: `0069F490–0069F636`, `0069F640–0069F716`, and `0069F720–0069F74C`. The 701-byte envelope contains 18 unowned gap bytes; those bytes are not instructions in this proof.

## Physical inputs and result boundary

| Physical location | Selected instruction use |
| --- | --- |
| Entry `Stack+4`, then `[EBP+8]` | Sample pointer; an aligned four-float row is read by `MOVAPS 0069F57B`. |
| Entry `Stack+8`, then `[EBP+C]` | Source pointer, copied into ESI; its first word supplies the vtable. |
| Entry `Stack+C`, then `[EBP+10]` | Pointer to four aligned 16-byte destination rows, read and updated in order. |
| `RET 0xC` at `0069F74A` | Callee removes the three argument words. |

The saved analysis signature remains `undefined __stdcall(float*, int*, float*)`, with three existing stack parameter types, an unassigned return storage, and the existing local metadata. The generated C prints `void`; this is not a recovered semantic return declaration. Initial ECX is replaced before use, so the caller's ECX assignment does not make it a recovered fourth input or a `this` receiver.

The [original operand and caller data](../../evidence/rendering/four-lobe-source-color-original-data.tsv) includes exactly eight numeric DWORDs and the bounded raw window `[006A0DE0,006A0E60)`. Its first three bytes belong to an instruction beginning before the window; the remaining 125 bytes contain 30 complete existing instructions. This is caller context, not a complete caller-function export. At `006A0E26`, the caller pushes an output row at pre-push `ESP+40`, a source from an indexed vector rooted at `[EDI+C8]`, and a sample at pre-push `ESP+C0`. EAX is reloaded at `006A0E2B` before the loop index increment. The window does not prove all callers, exclusive floor ownership, or whole map construction.

## Position, normalization, and local source row

The helper calls opaque initializer `006BC2D0`. Source virtual slot `+24` then receives a local scratch pointer and returns a position pointer in EAX. `MOVAPS/SUBPS 0069F57B–0069F581` subtract the supplied sample's four lanes. The squared XYZ length is formed as `(z*z + y*y) + x*x` at `0069F589–0069F5AB`; W does not enter that sum. `RSQRTPS 0069F5BA` supplies the estimate. Each of two refinements has the exact instruction grouping:

```
rSquared = r * r
n = rSquared * squaredLength
residual = 1 - n
halfEstimate = 0.5 * r
correction = residual * halfEstimate
r = correction + r
```

The resulting estimate multiplies the original delta. This is SIMD single-precision instruction behavior, not exact mathematical normalization. Estimate accuracy, CPU differences, MXCSR rounding, denormal handling, and exception masks are separate runtime conditions. No zero-length, infinity, or NaN admission guard is established here.

Source virtual slot `+10` is called at `0069F605` with the sample and local-row pointer. The normalized delta is stored at `0069F600` and reloaded at `0069F61A` across that call: the stack offset changes from `+38` to `+30` because of the two pushed arguments. Consequently, C temporaries such as `fStack_6c`, `fStack_68`, and `in_XMM4` must not be treated as proof of an uninitialized input direction. The actual instruction dataflow supplies it. The four color lanes consumed at `0069F706` are at local row `+10`; the weight dot product uses the normalized source-minus-sample delta, not a direction supplied by that virtual method. Provider internals and initializer behavior remain opaque.

## Lobes, clamp, and accumulation

First use tests bit 0 at `011D12E0`, ORs that bit, and writes four 16-byte rows at `011D12A0–011D12D0`. With `a = float32(0x3F64F766)` and `b = float32(0x3EE4F766)`, their XYZ values in traversal order are `(+a,b,0)`, `(-a,b,0)`, `(0,b,+a)`, and `(0,b,-a)`. Stored W lanes are `+a,-a,0,0`; they do not enter the XYZ dot. This selected lazy initialization is not a thread-safety or exclusive-writer proof.

For each row, `MULPS/SHUFPS/ADDPS 0069F640–0069F65E` calculate `(zTerm + yTerm) + xTerm`, including products with zero coefficients. The lower clamp selects either positive-zero bits or the dot's bits from the sign bit of `(-0 - dot)`; the upper clamp selects that result or `1` from the sign bit of `(1 - lower)`. `SUBSS`, `SAR`, and bitwise selection at `0069F66D–0069F6CD` are authoritative; an ordinary numeric minimum/maximum does not by itself describe signed-zero and NaN behavior.

Weights are stored in row order and summed from positive zero using `ADDSS 0069F6E0`. The two `COMISS` instructions at `0069F6F5/0069F6FA` branch to accumulation for sum greater than `+2^-23`, less than `-2^-23`, or unordered at the first comparison, if the instruction completes under the active exception-mask state. Exact finite threshold equality skips writes. This unordered branch is missing from a plain reading of the generated C's two relational comparisons.

For each of four destinations, `0069F720–0069F736` broadcasts its weight, multiplies it by the four source color lanes, divides by the broadcast sum, adds the existing destination row, and stores all four lanes. The store stride is 16 bytes. This proves four-lane accumulation, not an RGB-only projection, alpha policy, visibility-provider behavior, resource lifecycle, or complete room/map format. The direct call index identifies only the real relative call to `006BC2D0`; the two source virtual calls have no established concrete target here.
