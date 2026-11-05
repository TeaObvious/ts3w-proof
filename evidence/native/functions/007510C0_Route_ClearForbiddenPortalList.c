/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a80 (TS3W.exe).
   ScriptCore.Route::Route_ClearForbiddenPortalList [assembly=ScriptCore token=0x06001133; handle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Sets route-local GUID vector end equal to begin under
   route access guard, preserving allocation. */

void __cdecl Route_ClearForbiddenPortalList(uint routeHandle)

{
  int *piVar1;
  undefined4 *puVar2;
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar1 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,routeHandle),
     piVar1 != (int *)0x0)) {
    (**(code **)(*piVar1 + 0x10))();
    puVar2 = (undefined4 *)FUN_0081c540((int)(piVar1 + 0x56));
    puVar2[1] = *puVar2;
                    /* WARNING: Could not recover jumptable at 0x007510fc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x14))();
    return;
  }
  return;
}

