# Original intro movie gain and resource request

Static PC 1.67 evidence covers four complete functions (568 instruction bytes).
The corrected global ambience tick adds an existing 200-byte body; it is a
separate scheduling mechanism. No movie, codec or game was executed.

## Gain producer

[`IntroMovie_ComputeConfiguredGain`, 00EC55B0, ASM](../../evidence/native/functions/00EC55B0_IntroMovie_ComputeConfiguredGain.asm) ([annotated C](../../evidence/native/functions/00EC55B0_IntroMovie_ComputeConfiguredGain.c))
is cdecl, one UTF-16 key pointer, result in x87 ST0. There is no hidden result
pointer. The selected EALogo and Maxis callers perform the final binary32 store.

1. Read `MusicMute` in the current `Config` section with requested default false.
   True returns x87 zero immediately.
2. Read `MusicLevel` with requested binary32 default 255. Store to binary32,
   multiply with separate SSE `MULSS` by stored bits `3B808081`, and use sign-bit
   selection to clamp the ordinary finite normalized value to [0,1]. This is
   float-bit selection; decompiler integer casts are not numeric conversions.
3. Read the supplied key in `IntroMovies` with requested default one. Multiply
   this x87 result by the stored normalized binary32 music gain. This body has
   no independent clamp of the intro factor and no final binary32 store.

Stored negative zero, one and UInt32 conversion correction are already retained
in [weather constants](../weather-settings-constants.tsv); the normalization word
is in [opacity constants](../../evidence/objects/opacity-constants.tsv).
The [new selected data](intro-original-data.tsv) contains default 255 and exact original name/key strings.
Config parsing, invalid/nonfinite inputs and complete FPU setup remain static
questions. Ordinary finite clamping does not establish an exceptional-value API.

## Selected callers and physical ABI

| Function | Original request |
| --- | --- |
| [00EC59D0 ASM](../../evidence/native/functions/00EC59D0_IntroMovie_OpenEALogo.asm) ([annotated C](../../evidence/native/functions/00EC59D0_IntroMovie_OpenEALogo.c)) | Gain key `EALogoGain`; resource name `EALogo`; width 1024; height 640. |
| [00EC5B70 ASM](../../evidence/native/functions/00EC5B70_IntroMovie_OpenMaxisLogo.asm) ([annotated C](../../evidence/native/functions/00EC5B70_IntroMovie_OpenMaxisLogo.c)) | Gain key `MaxisLogoGain`; exact resource name `MAXISLogo`; same dimensions. |

Both callers are ECX thiscall phase methods with no explicit stack arguments.
They optionally call another service with phase+10 and message `06168BE5`;
that service's complete meaning is not established. They store gain ST0 to
binary32 in the reused key-argument slot, push height, width and name, and call
[00EC5780 ASM](../../evidence/native/functions/00EC5780_IntroMovie_OpenNamedResource.asm) ([annotated C](../../evidence/native/functions/00EC5780_IntroMovie_OpenNamedResource.c)).

The named helper is ECX plus FOUR stack words (name, UInt32 width, UInt32 height,
binary32 gain). `RET 0x10` cleans sixteen bytes. A missing manager returns AL
false before dimension writes/resource lookup. UInt32 conversion is signed x87
FILD plus a conditional stored 2^32 correction, then one final binary32 store;
the C spelling can suggest a prior rounding that does not exist in the ASM.
It requests a 16-byte key from resource-service virtual+80 using the supplied
name, type `B1CC1AF6`, group zero. That call has ECX plus four stack words.
The helper then requests the movie manager using eleven stack words; gain is
word six, followed by width and height. Bounded raw consumer 009D7BD0..009D7C1B
copies this gain to the entry's +9C field. No local gain clamp or resource-key
success check occurs here. Final result is low AL.

The helper also has callers at EC61F1 and EC64A6; they and complete startup
ordering, codec dispatch, synchronization, input skip, completion/error and
resource/output lifetime are not resolved by this finite selection. These are
open static paths; audible/visual hardware acceptance is additional work.

## Corrected global ambience submission accounting

[00860B60 ASM](../../evidence/native/functions/00860B60_TS3W_AmbienceGlobalTick.asm) ([annotated C](../../evidence/native/functions/00860B60_TS3W_AmbienceGlobalTick.c))
accumulates delta with Float32 ADDSS when enabled. If initially disabled,
an optional virtual+3C call can precede rechecking enable. Still-disabled return
performs no local elapsed reset.

`COMISS delay,elapsed; JA` skips only ordered delay>elapsed. Equality and NaN
unordered reach unsigned count/free-slot gates; C's ordinary `<=` omits that
unordered path. A selected slot gets a manager-produced value or zero if the
manager is missing, submits both authored resource words and that value, then
stores the slot, increments count and zeroes elapsed. No nonzero-handle or
submission-success test exists on this path. Thus timer reset proves local
submission/accounting, not successful playback. There is no second authored
fade envelope in this body. Downstream submission, event retirement and thread
semantics remain separate static questions.
