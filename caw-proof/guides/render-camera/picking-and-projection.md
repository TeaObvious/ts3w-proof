# Camera picking and screen projection

This is a static contract for the [original CAW module](../../README.md#original-module-identities). The selected native functions are complete bodies. The [selected direct calls](../../evidence/native/Sims3Common/camera-picking-calls.tsv) distinguish those bodies from their unexpanded callees.

## Pixel to segment

`0x105c2650` has five physical stack words: camera pointer, signed pixel X and Y, writable origin float4 and writable endpoint float4. It uses a plain `RET`; its callers remove the stack arguments. [Original instructions](../../evidence/native/Sims3Common/functions/105C2650_CAW_BuildCameraPickSegment.asm) ([actual annotated pseudocode](../../evidence/native/Sims3Common/functions/105C2650_CAW_BuildCameraPickSegment.c)).

The origin is the camera's full float4 at `+0x60`. Initial width and height come from signed viewport rectangle differences. With a window handle at `+0x28` of the viewport owner returned by `0x104094c0`, a successful `GetClientRect` instead supplies its raw right and bottom values. If either is nonpositive, both dimensions become `3.0` and both sample coordinates become `1`. Missing handles and failed calls keep the initial viewport dimensions.

The separate binary32 operations are:

```
localX = (((float)pixelX + 0.5) / width - 0.5) * camera[+0x0c]
localY = (0.5 - ((float)pixelY + 0.5) / height) * camera[+0x10]
direction = localX * basis[+0x30] + localY * basis[+0x40] - basis[+0x50]
```

The XYZ squared sum feeds `RSQRTPS` and two Newton corrections; all four physical lanes are scaled. The endpoint is `origin + normalizedDirection * camera[+0x20]`. This is the far-clip field: the [original getter](../../evidence/native/Sims3Common/functions/1098ED30_CameraWrap_GetFarClip.asm) ([pseudocode](../../evidence/native/Sims3Common/functions/1098ED30_CameraWrap_GetFarClip.c)) reads that field, and the [native projection producer](../../evidence/native/Sims3Common/functions/107538A0_CAW_CameraBuildNativeProjection.asm) ([pseudocode](../../evidence/native/Sims3Common/functions/107538A0_CAW_CameraBuildNativeProjection.c)) consumes it. The selected helper has no near-plane origin, finite-value guard, pixel-bound rejection or explicit degenerate-direction rejection. Caller camera setup and exceptional arithmetic remain separate static questions.

## World point to normalized coordinates

`0x105c2a90` has a custom physical ABI: camera in `ECX`, aligned writable float4 in `EAX`, and one stack word pointing to the readable world float4. The caller removes four stack bytes. The meaningful result is `AL`, set to one after the writes. [Original instructions](../../evidence/native/Sims3Common/functions/105C2A90_CAW_ProjectPointToNormalizedCoordinates.asm) ([actual annotated pseudocode](../../evidence/native/Sims3Common/functions/105C2A90_CAW_ProjectPointToNormalizedCoordinates.c)).

The input W is replaced by exact `1.0`. Matrix rows at camera `+0x130..+0x16f` combine in the original Y-row plus X-row, then Z-row, then W-row operation order. The sign bit of the binary32 difference `W - epsilon` selects either the original W bits or epsilon bits `0x3727c5ac` (approximately `1e-5`). The `MOV`/`SAR` sequence is a bit reinterpretation, not a numeric float-to-int conversion; the corresponding cast in the decompiler must be read with its instruction annotation.

`RCPPS` and two `(2 - W*r)*r` refinements provide the reciprocal, then multiply all four lanes. This helper does not reject points outside a frustum, behind the camera or with nonfinite coordinates. The [constant words](../../evidence/native/Sims3Common/camera-picking-data.tsv) retain the exact threshold and Newton factor. The `0.5` word at `0x10b310ec` is reused from [terrain collision data](../../evidence/native/Sims3Common/terrain-collision-data.tsv).

## Normalized coordinates to pixels

`0x105c2d00` takes three physical stack words: camera, world float4 and output float4. It zeroes the output, invokes the normalized helper and tests AL. [Original instructions](../../evidence/native/Sims3Common/functions/105C2D00_CAW_ProjectWorldToScreenPixels.asm) ([actual annotated pseudocode](../../evidence/native/Sims3Common/functions/105C2D00_CAW_ProjectWorldToScreenPixels.c)).

Initial dimensions are signed viewport differences. Successful `GetClientRect` uses right-minus-left and bottom-minus-top; failure keeps the viewport dimensions. Unlike the segment helper, there is no nonpositive-size fallback. It computes `X = width * (ndcX + 1) * 0.5` and `Y = height * (1 - ndcY) * 0.5`, then physically stores `[X,Y,X,X]`. Rectangle left/top are not added. This is not a viewport-clipping operation.

`WorldWrap_GetScreenCoordinates` (`0x10999ff0`, original import `CSHostWrap:0x060004d2`) returns zero for a missing scene or camera without changing the caller's Vector2. Otherwise it reads exactly XYZ from the Vector3 input, builds an aligned temporary float4, calls the pixel helper, copies two floats and returns one. It does not test the helper's AL or reject off-screen values. [Original instructions](../../evidence/native/Sims3Common/functions/10999FF0_WorldWrap_GetScreenCoordinates.asm) ([actual annotated pseudocode](../../evidence/native/Sims3Common/functions/10999FF0_WorldWrap_GetScreenCoordinates.c)); [original managed declaration and callers](../../api/Sims3Common/WorldWrap/2651.md).

## World pick and water replacement

`WorldWrap_Pick` (`0x10998c40`, import `CSHostWrap:0x060004d1`) receives five physical stack words: signed X, signed Y, collision-layer word, writable 48-byte hit and a water flag whose low byte is read. It returns UInt32 zero or one. [Original instructions](../../evidence/native/Sims3Common/functions/10998C40_WorldWrap_Pick.asm) ([actual annotated pseudocode](../../evidence/native/Sims3Common/functions/10998C40_WorldWrap_Pick.c)); [original managed declaration and callers](../../api/Sims3Common/WorldWrap/2686.md).

It obtains the current scene and camera, builds the camera-origin/far-clip segment and calls the collision service at `0x1047e270`: ECX service plus five physical stack words, including a final constant one. Missing collision service or a false AL result returns zero. The selected wrapper has no local scene/camera null guard before the segment helper. Its collision-layer filtering and complete search policy are in unexpanded callees; the [terrain collision guide](../editable-terrain-collision.md) covers a separately established terrain KD path.

Water comparison is attempted only for a nonzero low-byte water flag and two zero internal hit words at `+0x30/+0x34`. A missing current world then returns zero. Water-height and plane helpers supply a candidate. The wrapper compares XYZ distances with `SQRTPS` and `COMISS`; `JBE` preserves the existing hit for less, equal or unordered comparison. A closer water candidate replaces only the position float4. It does not manufacture new normal, object or material fields. Full plane admission and hit conversion remain static gaps.

After hit conversion at `0x10986bd0`, exactly twelve DWORDs (48 bytes) are copied to the caller. Every false return leaves that external output unchanged. These bodies establish no heightfield marching step, bisection count, finite-difference normal or pixel-accuracy equivalence. No original editor execution or rendered comparison is claimed.
