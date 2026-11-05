/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161950 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetNumPaths [assembly=ScriptCore token=0x0600110D; handle: System.UInt32;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_Route__Route_GetNumPaths(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  
  if ((DAT_011d50c4 != (void *)0x0) &&
     (piVar2 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1), piVar2 != (int *)0x0)) {
    (**(code **)(*piVar2 + 0x10))();
    iVar3 = 0;
    for (piVar1 = (int *)piVar2[0x38]; piVar1 != piVar2 + 0x38; piVar1 = (int *)*piVar1) {
      iVar3 = iVar3 + 1;
    }
    (**(code **)(*piVar2 + 0x14))();
    return iVar3;
  }
  return 0;
}

