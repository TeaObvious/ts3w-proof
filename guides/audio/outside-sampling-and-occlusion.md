# Outside sampling and the reused occlusion boundary

Static original PC1.67 instruction review, explicit `/TS3W.exe` in GhidrAssist.
Analyst names describe selected bodies; no original bytes changed. No game,
fixture, decoder, audio device or rendering acceptance was executed.

## Complete original bodies

| Entry | Analyst name | Original pair |
| --- | --- | --- |
| `0086E170` | `AudioOutside_LoadTuning` | [ASM](../../evidence/native/functions/0086E170_AudioOutside_LoadTuning.asm) ([actual annotated C](../../evidence/native/functions/0086E170_AudioOutside_LoadTuning.c)) |
| `0086E2C0` | `AudioOutside_Construct` | [ASM](../../evidence/native/functions/0086E2C0_AudioOutside_Construct.asm) ([actual annotated C](../../evidence/native/functions/0086E2C0_AudioOutside_Construct.c)) |
| `0086E3F0` | `AudioOutside_AppendThirteenSamplePoints` | [ASM](../../evidence/native/functions/0086E3F0_AudioOutside_AppendThirteenSamplePoints.asm) ([actual annotated C](../../evidence/native/functions/0086E3F0_AudioOutside_AppendThirteenSamplePoints.c)) |
| `0086E630` | `AudioOutside_UpdateSampledValue` | [ASM](../../evidence/native/functions/0086E630_AudioOutside_UpdateSampledValue.asm) ([actual annotated C](../../evidence/native/functions/0086E630_AudioOutside_UpdateSampledValue.c)) |
| `00870050` | `Audio_ComputeOcclusion` | [ASM](../../evidence/native/functions/00870050_Audio_ComputeOcclusion.asm) ([actual annotated C](../../evidence/native/functions/00870050_Audio_ComputeOcclusion.c)) |

The five envelopes contain2709 original bytes; actual function bodies2702.
`0086E630` has a seven-byte skipped alignment instruction inside its envelope.
Occlusion ends after `RET18` at`00870437`, exclusive`0087043A`; six following INT3
bytes are padding outside the complete body.
Actual C retains instruction annotations; no hand-reconstructed C is substituted.

## Identity, inputs and defaults

[Selected original data](../../evidence/audio/outside-sampling-data.tsv) binds
main vtable`0102ADC8` slots+10/+18/+2C to loader/name getter/update. The selected
getter's string is`outside`; its full getter algorithm is outside this body set.
Constructor sets counter+24=0, signed cadence divisor+28=1, Float32 radius+2C=2,
and Float32 squared-distance threshold+30=10000. Constructor defaults do not prove
what a failed primitive admission does. Existing
[transform constants](../../evidence/objects/transform-constants.tsv) supply2,
-1 and1; [numeric constants](../../evidence/shaders/overlap-native-constants.tsv)
supply Float32 unsigned-integer correction2^32.

Loader: ECX receiver, no explicit stack arguments, AL Boolean result, RET.
Resource virtual+1C receives four stack words: instance low`CD2F3090`,
high`A5E415DF`, resource-pointer output, type`001407EC`. It releases an optional
resource on failure. Success reads cadence property`CB3F671D` via virtual+28,
radius`2E65B70F` via+30 (both read statuses ignored), and maximum-distance
`03593710` via+30. Only successful maximum-distance read executes **one MULSS
square** and Float32 store+30. It then preserves common-loader`008A61F0` AL,
releases the resource and returns. Reader grammar/default/error and common-loader
semantics remain exact static leads, not a demonstrated codec/runtime limitation.

The distance property is a distance in the game's coordinate domain; its stored
consumer threshold has squared-distance units. Physical metre calibration is not
established by these selected bodies.

## Thirteen-point producer

`0086E3F0` is cdecl, three words: aligned four-lane center pointer, Float32 radius,
vector pointer. It appends center, six half-phase ring points, then six zero-phase
ring points, **at the same radius**. It has no sample-count parameter.

Stored angle step bits`3F860A92`=1.0471975803375244; half phase bits`3F060A92`
=0.5235987901687622. For the first loop, signed FILD plus optional2^32 correction
converts ordinal; x87 multiplies step, adds half phase, then stores one Float32
angle. The second omits the phase add. FSIN and FCOS results each store Float32
before SSE scale/add. Appended lanes are
`center+(sin*radius,0*radius,cos*radius,sin*radius)`; retaining zero multiplication
matters for exceptional inputs. Literal pi expressions and MathF trigonometry are
not established as instruction-equivalent. Grow helper`006C8840`, FPU setup and
exceptional-domain callers remain static leads. Another selected caller`0086EA60`
is in unexpanded primitive`0086E990`; water/pond equivalence is not proved.

## Update consumer and publication

ECX receiver plus two physically present but unused stack words; all returns
clean8bytes. Counter increments as DWORD; CDQ/IDIV by signed cadence+28 skips
nonzero remainder. This is **call-count cadence**. Missing world skips publication.
A selected current-world row with signed field+39C<0 publishes0 through virtual+38.
The semantic owner of that field and the full scheduler remain unexpanded.

Audio service virtual+18 yields point index2 then index1. Producer roles must be
established before naming them eye/focus/ear. SSE distance reduction is
`(dz²+dy²)+dx²` with instruction rounding. COMISS then JB chooses near for ordered
less **or unordered**. Ordered greater/equal publishes1; equality is far.

Near generates13 points around index2. For each world lot with a room manager,
`0086E0E0` cull precedes original world-to-local`00AB71A0`. Inclusive local
X/Z bounds0..signed dimensions reject unordered values. Floor`00AB61B0`<0
counts a hit directly; otherwise AX from room query`00B482C0` must be nonzero.
The loops are lots then points, without per-point early break/dedup. Total hits
<=13 therefore needs an additional lot-domain proof. There is no local clamp.
Hitcount and actual vector pointcount use signed FILD plus2^32 correction;
x87 computes`1-hitcount/pointcount` and stores one Float32 argument to virtual+38.
The full cull and producer chain, possible overlapping lots, scheduling and output
consumer are remaining static leads. Count13, square units and evaluation order
are established without executing the game.

## Occlusion input and output

ECX sound plus six stack words (four Float32 position lanes, optional template,
optional byte output), ST0 result and RET18. It queries placements2/3/1, examines
three clear-path candidates, then uses minimum of two signed absolute floor
separations. Repeated MULSS applies per-floor attenuation, not Pow. Same-floor
G or`G+(1-G)*.5` follows the original walls flag. A previous-occluded to clear
transition may restore properties`647A7836`/`49EB68DB` when a backend exists and
there is no output pointer; supplying the pointer takes the byte-output path.
Full place producers, walls state, base-gain body and backend properties remain
unexpanded static owners.

Original`00870280` is inside this floor-distance arithmetic, not a circle helper.
Actual C can retain `extraout_ST0` from conflicting unexpanded base-gain metadata;
the call is immediately followed by FSTP Float32. In-file annotations identify
that returned ST0 and reused stack bit aliases. They are not original undefined
source behavior, and no original bytes were changed to improve decompilation.
