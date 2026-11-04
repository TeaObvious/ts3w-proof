/* Actual original-assembly ILSpy output. Dispatch semantics are verified against
   the paired original IL; unresolved-reference diagnostic comments are retained.
   Static evidence only, no original runtime execution or renderer behavior. */

using System.Runtime.InteropServices;

[DllImport("Sims3Common.dll")]
private static extern uint UIManager_FrameDrawableGenericImpl(uint dHandle, uint funcID, uint state, uint value);
