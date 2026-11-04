/* Actual ILSpy output from original PC 1.67 ScriptCore.
   Declaration/caller evidence only; no executed marshaling or runtime result.
   The two public wrappers each forward their inputs without local checks. */

using System;
using System.Runtime.InteropServices;

[DllImport("Sims3Common.dll")]
private static extern uint MonoScriptHost_GetEnumSimpleHash(Type enumType, ulong val);
