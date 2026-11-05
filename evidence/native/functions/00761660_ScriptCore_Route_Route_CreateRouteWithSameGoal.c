/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161898 (original PC 1.67 TS3W.exe).
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
    piVar2 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
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

