# Parametric tone program associated with CAS gamma

Original PC1.67 shader archive identity is centralized in the
[reference overview](../../references/retained-proof-overview.md). The indexed
[program record](../../evidence/shaders/cas-gamma/program.tsv) identifies
one-based10828/slot10827, PSHD, capabilityFF0F, payload15055796 and184bytes.
These are shader archive offsets, not executable function addresses.

The [complete original instruction/token listing](../../evidence/shaders/cas-gamma/PS10828.asm.txt) ([explicit analyst arithmetic translation](../../evidence/shaders/cas-gamma/PS10828.c))
contains all46DWORDs, including version, declarations, zero constant and END.
The translation is not a native Ghidra export or an original source file.
The [native one-based resolver](../../evidence/native/functions/0079AB70_ShaderDatabase_ResolveOneBasedProgram.asm) ([actual annotated Ghidra C](../../evidence/native/functions/0079AB70_ShaderDatabase_ResolveOneBasedProgram.c))
establishes subtract-one indexing; its admission/virtual calls are separate from
this bounded shader calculation.

## Exact program inputs and operations

Sample RGBA from texture s0 using t0. The shader defines c1=(0,0,0,0).
It does not define c0: that bank must come from the live selected parameter
producer. MAD0044 computes numerator=c0.rgb*sample.rgb+sample.rgb.
ADD0058 computes denominator=sample.rgb+c0.rgb. Three scalar RCPs at0068/0074/0080
compute reciprocal components, MUL008C multiplies numerator by those reciprocals.
MOV009C writes zero alpha from c1.x and MOV00A8 writes RGBA to oC0.

The real-number algebra is x*(c0+1)/(x+c0), but this algebra must not erase
the authored multiply-add/add/reciprocal/multiply sequence when comparing ports.
A fixed x*1.4/(x+0.4) has that shape only for c0=(0.4,0.4,0.4); the program body
is not proof that c0 always has that value. No saturation, alpha blend, gamma
color-space conversion or additional Fresnel term appears in these instructions.
Those may belong to pass/sampler/render-target state, which is not decoded here.

## Evidence limits

Static archive offsets, full program length, every token, operand lane and
parameter-versus-immediate distinction are checked. The original executable
resolver pair remains unchanged. A constructor address mentioned by existing
consumer comments is not accepted as a live c0 producer from its label alone.
Follow the authored CAS PASS selection and its constant-upload consumer before
claiming live CAS curve/default equivalence. Shader MAD/reciprocal precision and
actual pixels require separate GPU acceptance; no game or shader execution ran.
