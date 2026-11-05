/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161898 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Route::Route_CreateRouteWithSameGoal [assembly=ScriptCore token=0x060010F0; handle:
   System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_Route__Route_CreateRouteWithSameGoal(uint param_1)

{
  int iVar1;
  int *piVar2;
  void *this;
  int *piVar3;
  
  GetGlobalInterfacePointer_11D5BBC();
  if (DAT_011d50c4 != (void *)0x0) {
    piVar2 = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,param_1);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x10))();
      this = (void *)FUN_004e4500(0x200,"Routing/Route",0);
      if (this != (void *)0x0) {
        piVar3 = FUN_00760400(this,(int)piVar2);
        if (piVar3 != (int *)0x0) {
          (**(code **)(*piVar3 + 0x10))();
          FUN_0074e5a0(DAT_011d50c4,piVar3 + 1);
          iVar1 = piVar3[6];
          (**(code **)(*piVar3 + 0x14))();
          (**(code **)(*piVar2 + 0x14))();
          return iVar1;
        }
      }
      (**(code **)(*piVar2 + 0x14))();
    }
  }
  return 0;
}

