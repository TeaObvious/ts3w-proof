/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161a50 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_AddObjectToIgnoreForRouteEndTurn [assembly=ScriptCore token=0x0600112D;
   handle: System.UInt32, objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Route__Route_AddObjectToIgnoreForRouteEndTurn(uint param_1,int param_2,int param_3)

{
  int *piVar1;
  int *piVar2;
  undefined4 *this;
  int *piVar3;
  
  if ((DAT_011d50c4 == (void *)0x0) ||
     (piVar2 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1), piVar2 == (int *)0x0))
  {
    return;
  }
  (**(code **)(*piVar2 + 0x10))();
  this = (undefined4 *)FUN_0081c530((int)(piVar2 + 0x56));
  piVar1 = (int *)this[1];
  piVar3 = (int *)*this;
  if (piVar3 != piVar1) {
    do {
      if ((*piVar3 == param_2) && (piVar3[1] == param_3)) break;
      piVar3 = piVar3 + 2;
    } while (piVar3 != piVar1);
    if (piVar3 != piVar1) goto LAB_00762b93;
  }
  if (piVar1 < (int *)this[2]) {
    this[1] = piVar1 + 2;
    if (piVar1 != (int *)0x0) {
      *piVar1 = param_2;
      piVar1[1] = param_3;
    }
  }
  else {
    FUN_00572360(this,piVar1,&param_2);
  }
LAB_00762b93:
                    /* WARNING: Could not recover jumptable at 0x00762b9d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar2 + 0x14))();
  return;
}

