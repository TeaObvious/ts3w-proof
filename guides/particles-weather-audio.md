# Original particle contact, precipitation depth and ambience

All native addresses refer to the original PC 1.67 executable identified by the
[native evidence index](../evidence/native/README.md). Function and field names
are analyst interpretations. Instructions establish the contracts below;
these are static findings, not observations of original gameplay.

## Terrain particle contact

The [terrain surface apply function](../evidence/native/functions/00926A80_TS3W_SwarmTerrainSurfaceCollide.asm) ([annotated pseudocode](../evidence/native/functions/00926A80_TS3W_SwarmTerrainSurfaceCollide.c)) maps the old and proposed particle positions into game coordinates through the [surface-frame transform](../evidence/native/functions/00925FA0_TS3W_SwarmSurfaceStepToGame.asm) ([annotated pseudocode](../evidence/native/functions/00925FA0_TS3W_SwarmSurfaceStepToGame.c)). For a nondegenerate crossing, it computes a contact along the segment. Returning the old point is confined to a degenerate movement branch. A zero-radius particle moving from height 1 to -1 above flat ground 0 contacts at height 0.

The [world ground query](../evidence/native/functions/00C60C20_TS3W_QueryWorldGroundHeight.asm) ([annotated pseudocode](../evidence/native/functions/00C60C20_TS3W_QueryWorldGroundHeight.c)) first rejects points outside world bounds. Terrain surface calls it with requested level zero, lot-floor admission enabled and lot-terrain admission disabled. It tries the admitted lot floor, then the terrain collider for the missing-height sentinel. It does not clamp coordinates to an edge sample.

## Precipitation depth submission

When admitted by its availability and owner gates, the [precipitation depth pass](../evidence/native/functions/006EC6D0_TS3W_RenderPrecipitationShadow.asm) ([annotated pseudocode](../evidence/native/functions/006EC6D0_TS3W_RenderPrecipitationShadow.c)) binds its depth target and submits current casters. It does not contain a camera-matrix/scene-pointer equality cache. This body establishes current submission when called; caller scheduling is outside that conclusion.

The [rain ripple update](../evidence/native/functions/006E9EF0_TS3W_UpdateRainRippleTargets.asm) ([annotated pseudocode](../evidence/native/functions/006E9EF0_TS3W_UpdateRainRippleTargets.c)) provides the selected original ripple state path. The [pond depth and ice-cover slice](../evidence/shaders/lot-pond-water/README.md) documents separate installed shader evidence.

## Authored ambience envelope and delay

The [global ambience layer tick](../evidence/native/functions/00860B60_TS3W_AmbienceGlobalTick.asm) ([annotated pseudocode](../evidence/native/functions/00860B60_TS3W_AmbienceGlobalTick.c)) can call virtual+3C while initially disabled, then rechecks enable; a still-disabled return performs no local timer reset. After the ordered delay/capacity/free-slot gates, it submits the authored resource words, stores the selected value, increments count and resets elapsed without checking a nonzero handle or submission success. This establishes submission accounting, not successful playback. It adds no second authored fade envelope at the layer. The [complete tick and intro gain comparison](audio/intro-movie-gain.md) retains the exact unordered branch and selected ABI.

[Voice start](../evidence/native/functions/008AB020_TS3W_AudioVoiceStart.asm) ([annotated pseudocode](../evidence/native/functions/008AB020_TS3W_AudioVoiceStart.c)) reads property `0x98AC8996` for the fade-in duration and initializes one embedded envelope. Its [linear stage](../evidence/native/functions/008AAA00_TS3W_AudioEnvelopeValue.asm) ([annotated pseudocode](../evidence/native/functions/008AAA00_TS3W_AudioEnvelopeValue.c)) produces the zero-to-one factor; [voice update](../evidence/native/functions/008AC150_TS3W_AudioVoiceUpdateGain.asm) ([annotated pseudocode](../evidence/native/functions/008AC150_TS3W_AudioVoiceUpdateGain.c)) applies it with the other gain controls. Their control changes are distinct from the authored start fade. The [initialization](../evidence/native/functions/008AAAE0_TS3W_AudioEnvelopeAdvance.asm) ([annotated pseudocode](../evidence/native/functions/008AAAE0_TS3W_AudioEnvelopeAdvance.c)) is included to establish envelope ownership and state.
