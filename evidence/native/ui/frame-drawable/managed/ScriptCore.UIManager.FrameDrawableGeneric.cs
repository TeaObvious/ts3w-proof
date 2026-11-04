/* Actual original-assembly ILSpy output. Dispatch semantics are verified against
   the paired original IL; unresolved-reference diagnostic comments are retained.
   Static evidence only, no original runtime execution or renderer behavior. */

public uint FrameDrawableGeneric(uint dHandle, uint funcID, uint state, uint value)
{
	return UIManager_FrameDrawableGenericImpl(dHandle, funcID, state, value);
}
