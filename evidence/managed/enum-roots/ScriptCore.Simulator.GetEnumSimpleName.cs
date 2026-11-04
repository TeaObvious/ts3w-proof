/* Actual ILSpy output from original PC 1.67 ScriptCore.
   Declaration/caller evidence only; no executed marshaling or runtime result.
   The two public wrappers each forward their inputs without local checks. */

using System;

public string GetEnumSimpleName(Type enumType, ulong val)
{
	return MonoScriptHost_GetEnumSimpleName(enumType, val);
}
