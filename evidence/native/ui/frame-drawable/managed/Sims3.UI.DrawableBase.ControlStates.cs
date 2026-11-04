/* Actual original-assembly ILSpy output. Dispatch semantics are verified against
   the paired original IL; unresolved-reference diagnostic comments are retained.
   Static evidence only, no original runtime execution or renderer behavior. */

public enum ControlStates
{
	kNormal,
	kDisabled,
	kHighlighted,
	kActive,
	kCheckedNormal,
	kCheckedDisabled,
	kCheckedHighlighted,
	kCheckedActive
}
