/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011619c0 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetRouteLength [assembly=ScriptCore token=0x0600111B; handle:
   System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_Route__Route_GetRouteLength(uint param_1)

{
  int *piVar1;
  float10 fVar2;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar1 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      fVar2 = FUN_007500e0((int)piVar1);
      (**(code **)(*piVar1 + 0x14))();
      return (float10)(float)fVar2;
    }
  }
  return (float10)0;
}

