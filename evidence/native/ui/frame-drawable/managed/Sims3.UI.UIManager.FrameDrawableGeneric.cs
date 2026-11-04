/* Actual original-assembly ILSpy output. Dispatch semantics are verified against
   the paired original IL; unresolved-reference diagnostic comments are retained.
   Static evidence only, no original runtime execution or renderer behavior. */

internal static uint FrameDrawableGeneric(FrameDrawable drawable, FrameDrawable.FrameDrawableGenericID funcID, DrawableBase.ControlStates state, uint value)
{
	return gUIMgr.FrameDrawableGeneric(drawable.DrawableHandle, (uint)funcID, (uint)state, value);
}
