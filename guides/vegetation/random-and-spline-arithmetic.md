# PC tree random preparation and spline evaluation

## Scope and original ABI

Selected PC 1.67 instructions, original constant bytes and actual annotated
Ghidra C establish this static subset. Names are analyst assignments. No game,
RNG, spline, fixture or platform was executed. Other-platform symbols and editor
code are not evidence for these PC rules. Full SPT parsing/cache construction,
recursive branch/leaf offsets and rendered geometry remain open.

The [32-bit conversion dispatcher](../../evidence/native/functions/00F7F620_Compiler_TruncateX87ToLowInt32.asm) ([annotated pseudocode](../../evidence/native/functions/00F7F620_Compiler_TruncateX87ToLowInt32.c)) consumes and pops x87 ST0;
it does not receive meaningful ECX/EDX arguments. Its 28-byte function body
conditionally branches to the separately retained
[117-byte x87 fallback](../../evidence/native/functions/00F7F656_Compiler_TruncateX87ToInt64Fallback.asm) ([annotated pseudocode](../../evidence/native/functions/00F7F656_Compiler_TruncateX87ToInt64Fallback.c)). A feature flag's fast path stores binary64
then uses CVTTSD2SI into EAX, leaving EDX unchanged. The fallback uses FISTP,
reload and sign/carry/borrow correction. Selected normal finite in-range inputs
truncate toward zero. Nonfinite/out-of-range, exception and changed control-word
behavior are not generalized from the decompiler's apparent ROUND/casts.

Ghidra's custom ST0 input and EAX or EDX:EAX output storage removes fabricated
register arguments. Explicit ST0 return storage on floating leaves also removes
an invented hidden return pointer: the original instructions supply neither that
pointer nor a binary32 result store. `float10` is the decompiler's register value,
not a promise that a particular global FPU precision was active.

## Global raw and shuffled sequence

The [raw recurrence](../../evidence/native/functions/007C0C00_TreeRandom_RawGlobal.asm) ([annotated pseudocode](../../evidence/native/functions/007C0C00_TreeRandom_RawGlobal.c)) reads an integer-valued binary64 global at
`0x011d9868`. It converts its value to signed EAX, computes signed truncating
quotient `q = n / 127773` using the original multiply/shift/sign-correction
sequence, then performs low-32-bit arithmetic:

```text
next = n * 16807 - q * 2147483647
if signed(next) <= 0: next += 2147483647
```

FILD loads the signed result, FST stores the global binary64 state, and FMUL
uses stored binary32 reciprocal word `0x30000000` (exactly 2^-31). The result
returns through ST0 without an intervening binary32 store. This is not a runtime
division by a mathematically exact modulus.

The [shuffled draw](../../evidence/native/functions/007C0C50_TreeRandom_NextGlobal.asm) ([annotated pseudocode](../../evidence/native/functions/007C0C50_TreeRandom_NextGlobal.c)) multiplies that ST0 result directly by exact
128 and truncates to select one of the original 128 binary32 entries at
`0x011d9668`. It saves the old entry as binary32, draws Raw again, stores that
replacement as binary32, and returns the old stored value through ST0. There
is no index clamp or independent per-handle state in these leaves.

The current portable Raw():float path adds a binary32 rounding boundary before
selector multiplication. Native x87 arithmetic still depends on its ambient
control word; the selected instructions do not establish universal 24-bit or
64-bit precision. This proves a different explicit rounding location, not a
specific executed sequence failure or safety guarantee for every seed.

The [uniform-range leaf](../../evidence/native/functions/007C0B10_TreeRandom_UniformGlobal.asm) ([annotated pseudocode](../../evidence/native/functions/007C0B10_TreeRandom_UniformGlobal.c)) consumes two binary32 stack endpoints,
returns with RET8, and evaluates `sample * (maximum - minimum) + minimum` using
separate x87 subtraction, multiply and addition. It neither sorts the bounds nor
clamps or checks finite inputs. The returned ST0 value has no final float store.

## Reseeding and lifetime

The [reseed dispatcher](../../evidence/native/functions/007C0B30_TreeRandom_ReseedGlobal.asm) ([annotated pseudocode](../../evidence/native/functions/007C0B30_TreeRandom_ReseedGlobal.c)) has one signed 32-bit stack seed and RET4.
Non-sentinel seeds at most one clamp to one. It then invokes the
[signed-seed table filler](../../evidence/native/functions/007C0D20_TreeRandom_FillFromSignedSeed.asm) ([annotated pseudocode](../../evidence/native/functions/007C0D20_TreeRandom_FillFromSignedSeed.c)), which performs 128 recurrence steps,
stores each sample as binary32 and the ending integer state as binary64. The
filler itself does not clamp its argument.

Sentinel `-1` is a distinct ambient path. It chooses initial 12345 or a prior
shuffled draw times exact binary32 2^31, truncates, calls `_time64(NULL)`, and
uses the signed low time word to form a binary64 ratio. The
[fraction filler](../../evidence/native/functions/007C0C90_TreeRandom_FillFromFraction.asm) ([annotated pseudocode](../../evidence/native/functions/007C0C90_TreeRandom_FillFromFraction.c)) multiplies by exact binary64 2^31, truncates to
its initial signed state and fills the same global table. Zero divisors, time
failure and unsafe numerical admission are not contained by a documented safe
contract here. Rejecting `-1` is an explicit current implementation limitation.

The [handle constructor](../../evidence/native/functions/007C0BE0_TreeRandom_ConstructHandle.asm) ([annotated pseudocode](../../evidence/native/functions/007C0BE0_TreeRandom_ConstructHandle.c)) returns its incoming ECX. It only invokes
ambient reseeding if the process-global initialized byte is clear. Native
handles do not establish independent sequences. The portable instance owners
permit separate streams, but one mutable stream still requires an exclusive
owner or synchronization; instance placement alone is not thread safety.

## Tree preparation producer and consumer

Within the complete [tree computation body](../../evidence/native/functions/007BF130_TreeEngine_ComputeWithPreparedRandom.asm) ([annotated pseudocode](../../evidence/native/functions/007BF130_TreeEngine_ComputeWithPreparedRandom.c)), the reviewed boundary
uses seed at owner `+0x3c`, authored size/variance at `+0x40/+0x44` and CRT seed at
`+0x48`, in this order:

1. Reseed and fill 1000 global binary32 entries with Uniform(0,1).
2. Reseed again; calculate both size endpoints with separate SSE binary32
   subtraction/addition, draw Uniform, then store the computed size as binary32.
3. Call imported `srand` with the CRT seed and store computed size at `+0x4c`.
4. Reseed the main stream a third time before the root branch call.

The caller therefore starts recursive generation after a fresh reseed, not after
the table/size draws. This does not establish authored token/default decoding,
complete imported CRT sequence internals, branch consumption offsets, original
failure containment or complete computation semantics.

## Cached spline consumers and floating boundaries

The [no-variance evaluator](../../evidence/native/functions/007C0DA0_TreeSpline_EvaluateWithoutVariance.asm) ([annotated pseudocode](../../evidence/native/functions/007C0DA0_TreeSpline_EvaluateWithoutVariance.c)) uses MULSS for `position * 499`, then
CVTTSS2SI for signed index truncation. Index 499 reads the final Y entry. Other
indices use the Y values at `owner + index*8 + 4` and `+12`. With original
binary32 reciprocal word `0x3b0355ad`, it performs separate SSE operations:

```text
cachePosition = float(index) * inverse499
fraction = (position - cachePosition) * 499
normalized = fraction * (nextY - Y) + Y
```

Each listed scalar SSE operation has its own binary32 result. Afterwards x87
evaluates `(maximum - minimum) * normalized + minimum` and returns ST0. The leaf
has no finite or [0,1] check. Managed safety admission is a separate policy.

The [variance evaluator](../../evidence/native/functions/007C10B0_TreeSpline_EvaluateWithVariance.asm) ([annotated pseudocode](../../evidence/native/functions/007C10B0_TreeSpline_EvaluateWithVariance.c)) uses the same SSE interpolation and
additionally stores its mapped base with SSE binary32 operations. It samples
Uniform(-variance,variance), with the negative bound formed by SSE subtraction
from exact negative zero. If the incoming flag's low byte is nonzero, x87 scales
that sample by normalized Y; x87 then adds the stored base and returns ST0.
The flag's stack slot is reused for amplitude storage in the original code.

The original [constant bytes](tree-numeric-constants.tsv) retain the float versus
double distinction. These leaves do not prove Bezier tangent construction,
cache-count/target-X construction asymmetry, decimal parsing, ScaledVariance,
complete x87 control state or equivalence of any portable double/extended model.
The retained actual C still has `extraout_ST0` artifacts in table fillers where
the decompiler loses the reciprocal carried below a helper's popped operand;
original FILD/FMUL/FSTP instructions establish that arithmetic.

The [SPT section contract](spt-section-readers.md) separately establishes selected original wire, count, vertex and coordinate-control producers; random/spline arithmetic alone does not establish format admission.
