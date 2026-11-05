/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161ea0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.SACS::SACS_DestroyClipInfoHandleImpl [assembly=ScriptCore token=0x06000D73;
   clipInfoHandle: System.IntPtr; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.SACS::SACS_DestroyClipInfoHandleImpl(int *param_1)

{
  if (param_1 != (int *)0x0) {
    if ((void *)*param_1 != (void *)0x0) {
      Memory_FreeIfNonNull((void *)*param_1);
    }
    Memory_FreeIfNonNull(param_1);
  }
  return;
}

