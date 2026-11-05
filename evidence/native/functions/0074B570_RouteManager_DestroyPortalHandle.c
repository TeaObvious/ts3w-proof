/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161cd0 (TS3W.exe).
   ScriptCore.RouteManager::RouteManager_DestroyPortalHandle [assembly=ScriptCore token=0x0600106B;
   portalHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Host interface vtable+0xd8 removes handle mapping, and
   returned reference is released through vtable+4. Missing interface or mapping is a no-op. */

void __cdecl RouteManager_DestroyPortalHandle(uint handle)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(handle);
    if (piVar1 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x0074b595. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar1 + 4))();
      return;
    }
  }
  return;
}

