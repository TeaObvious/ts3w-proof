/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a00 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_SetOption [assembly=ScriptCore token=0x06001124; handle: System.UInt32,
   optionType: System.Int64, value: System.Boolean, bOptions2: System.Boolean;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_Route__Route_SetOption
          (uint param_1,uint param_2,uint param_3,undefined4 param_4,undefined4 param_5)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  uint in_EAX;
  int *piVar5;
  undefined4 uVar6;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar5 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
    in_EAX = 0;
    if (piVar5 != (int *)0x0) {
      (**(code **)(*piVar5 + 0x10))();
      FUN_0081c470(piVar5 + 0x56,param_2,param_3,(char)param_4,(char)param_5);
      for (piVar3 = (int *)piVar5[0x38]; piVar3 != piVar5 + 0x38; piVar3 = (int *)*piVar3) {
        piVar4 = (int *)piVar3[2];
        if (piVar4 != (int *)0x0) {
          LOCK();
          piVar4[1] = piVar4[1] + 1;
          UNLOCK();
        }
        (**(code **)(*piVar4 + 0x14))(param_2,param_3,param_4,param_5);
        piVar1 = piVar4 + 1;
        LOCK();
        iVar2 = *piVar1;
        *piVar1 = *piVar1 + -1;
        UNLOCK();
        if (iVar2 == 1) {
          LOCK();
          *piVar1 = 1;
          UNLOCK();
          (**(code **)*piVar4)(1);
        }
      }
      uVar6 = (**(code **)(*piVar5 + 0x14))();
      return CONCAT31((int3)((uint)uVar6 >> 8),1);
    }
  }
  return in_EAX & 0xffffff00;
}

