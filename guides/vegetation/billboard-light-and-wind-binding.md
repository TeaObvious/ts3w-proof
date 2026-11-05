# Billboard light and wind binding

Original PC1.67 static evidence. Names are analyst assignments, not recovered
symbols. The existing inferred __thiscall signatures are retained: ECX is the
receiver, two stack words are removed by RET8. Undefined/int/pointer decompiler
types and vector temporaries are not a reconstruction of source declarations.

## Draw receiver and shared batch state

The [billboard variant draw](../../evidence/native/functions/0070F110_Flora_DrawBillboardVariants.asm) ([annotated pseudocode](../../evidence/native/functions/0070F110_Flora_DrawBillboardVariants.c))
returns when receiver+210 and+214 are equal. It computes view-distance/variant
admission, optional state bindings and two selected-technique draw paths.
Context flag8 uses the separate receiver+5A0 vector path. Flag10h computes
receiver+5B0 with SSE grouping:

- scalar=(receiver[+564]-receiver[+568])*shared[+24]+receiver[+568];
- RGB=scalar*shared[+30,+34,+38];
- W=receiver[+56C]*global11D1A20.

These offsets are hexadecimal. Bright/dark endpoint names, the loader that
populates these receiver fields and full color/scalar provenance remain open;
do not reverse the interpolation based solely on a higher-level parameter name.
The actual parameter-slot tests use unsigned bounds before table writes. Snow/
twig binding precedes selected shader-technique draws; cleanup follows them.
Original direct call sites710D05 and711F96 target this draw entry.

## Side factor producer and wind dispatch

The [batch preparation and dispatch](../../evidence/native/functions/007135C0_Flora_PrepareBatchLightWindAndDispatch.asm) ([annotated pseudocode](../../evidence/native/functions/007135C0_Flora_PrepareBatchLightWindAndDispatch.c))
skips an empty submitted range. It prepares camera/light bases, updates time and
shader data, and stores the side factor at receiver+24 for the draw consumer.
The static table wordFFC850 points to this function; this is identifying data,
not a fully resolved runtime dispatch trace.

The horizontal light degeneracy branch713AA4..713ABD compares component-wise
absolute values against binary32 2^-23 using MAXPS/CMPLEPS/MOVMSKPS, masked to
XYZ. It is not a squared-length test. That branch supplies0.5. Otherwise the
horizontal camera/light dot is scaled by0.5 and biased by0.5. Horizontal camera
normalization does not have the same squared-length guard; do not invent one
from a defensive host implementation. RSQRTPS receives two Newton refinements;
this does not establish bit equality with a CLR vector normalization.

Frame RGB is copied into receiver+30. The selected wind count is capped at8;
each matrix contributes three float4 rows whose W lanes are zero. Ordinary
submitted objects dispatch through virtual+18. Context flag80h also publishes
encoded object IDs and clears that slot reference; the final receiver+48 slot
reference is cleared as well. Full resource
construction, shader-slot registration, exact matrix producer and every virtual
implementation remain separate contracts.

[Original constant/table words](../../evidence/native/data/flora-billboard-light-constants.tsv).
The owned bodies contain1270bytes/312instructions and2831bytes/722instructions.
The latter has two owned ranges; three alignment bytes between713E6D and713E70
are not function instructions. Full owned ASM and actual annotated Ghidra C are
paired. Original mapped/imported bytes and ABI/code/flow metadata are preserved;
only analyst names and entry annotations changed. No runtime, graphics, numeric,
concurrency or platform test is established by this static evidence.

Direct-call index rows retain physical E8 destinations. Noncanonical callee
boundaries are not established by this selected export; their target-function
column stays empty rather than asserting a containing function.
