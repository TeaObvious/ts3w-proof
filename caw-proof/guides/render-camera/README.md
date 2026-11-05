# Editor camera and screen projection

The original CAW 1.22.10 managed [Camera wrapper](managed/Camera.cs) declares create/destroy, look direction/target, transform, projection matrices, near/far clip, aspect ratio, width, field of view and controller type operations. Its matrix getters call `CameraWrap_Finalize` before exposing native matrix values. [CameraTuning's retained presets](managed/CameraTuning-presets.cs.txt) are authored constants; they do not identify the controller or preset active in an editor session.

The [World wrapper excerpt](managed/WorldWrap-screen-projection.cs.txt) passes world-space Vector3 and output Vector2 by reference and converts a nonzero native result to a managed boolean. The [complete picking and projection contract](picking-and-projection.md) follows the native pixel sample, segment, homogeneous projection, output mutation and optional water comparison through the selected complete bodies.

The world-to-clip matrix getter is a separate entry: [original instructions](../../evidence/native/Sims3Common/functions/1098F4F0_CameraWrap_GetWorldToClipSpaceMatrix.asm) ([annotated pseudocode](../../evidence/native/Sims3Common/functions/1098F4F0_CameraWrap_GetWorldToClipSpaceMatrix.c)). The [shared host no-op guide](../shared-host-noop-exports.md) covers the original permission, profiling and renderer-update exports. No frame execution or pixel comparison is implied by these static paths.

[Original transform/Euler projection](transform-euler.md) follows the quaternion pose producer, returned-pointer ABI, exact singularity threshold, x87 angles and the helper's four-lane versus exported three-lane output.
