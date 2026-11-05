/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161ad0 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetDistanceRemaining [assembly=ScriptCore token=0x06001136; handle:
   System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_Route__Route_GetDistanceRemaining(uint param_1)

{
  float fVar1;
  int *piVar2;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar2 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      fVar1 = (float)piVar2[0x2a];
      (**(code **)(*piVar2 + 0x14))();
      return (float10)fVar1;
    }
  }
  return (float10)0;
}

