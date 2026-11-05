/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a88 (TS3W.exe).
   ScriptCore.Route::Route_SetPreferredPortal [assembly=ScriptCore token=0x06001134; handle:
   System.UInt32, onbjectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst: original PC 1.67 portal contract. Stores preferred object GUID64 in route-local
   context+0x78/+0x7c under access guard. Graph preferred crossing cost becomes1; other crossing
   cost multiplier4. */

void __cdecl Route_SetPreferredPortal(uint routeHandle,ulonglong objectId)

{
  int *piVar1;
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar1 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,routeHandle),
     piVar1 != (int *)0x0)) {
    (**(code **)(*piVar1 + 0x10))();
    RoutePortalContext_SetPreferredObject(piVar1 + 0x56,objectId);
                    /* WARNING: Could not recover jumptable at 0x0074d5f1. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x14))();
    return;
  }
  return;
}

