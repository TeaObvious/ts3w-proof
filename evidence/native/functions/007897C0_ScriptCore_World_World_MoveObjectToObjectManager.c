/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163290 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_MoveObjectToObjectManager [assembly=ScriptCore token=0x0600074F;
   scriptHandle: System.UInt64, mgrId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_MoveObjectToObjectManager
               (undefined4 param_1,undefined4 param_2,int param_3,int param_4)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  int *piVar4;
  uint uStack_4;
  
  iVar1 = FUN_00937570();
  if ((iVar1 != 0) && (uVar2 = FUN_00937f80(iVar1), uVar2 != 0)) {
    LOCK();
    *(int *)(uVar2 + 4) = *(int *)(uVar2 + 4) + 1;
    UNLOCK();
    uStack_4 = uVar2;
    if (DAT_011edbc4 == (void *)0x0) {
      FUN_007462e0((int *)&uStack_4);
      return;
    }
    piVar4 = (int *)0x0;
    if (((param_3 == 0 && param_4 == 0) ||
        (((piVar4 = *(int **)((int)DAT_011edbc4 + 0xb0), param_3 == piVar4[0x12] &&
          (param_4 == piVar4[0x13])) ||
         (piVar4 = FUN_00c60740(DAT_011edbc4,param_3,param_4,(int *)0x0), piVar4 != (int *)0x0))))
       && (piVar3 = (int *)FUN_0068f130(uVar2), piVar4 != piVar3)) {
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 0x3c))(uVar2,0);
      }
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar4 + 0x30))(uVar2);
      }
    }
    FUN_007462e0((int *)&uStack_4);
  }
  return;
}

