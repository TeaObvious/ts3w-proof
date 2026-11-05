/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01197140 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_InitSceneWindowImpl [assembly=ScriptCore token=0x06000238; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.GameUtils::GameUtils_InitSceneWindowImpl(void)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  void *this;
  int iVar4;
  undefined4 uVar5;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  
  uStack_28 = 0xec178a;
  piVar2 = (int *)FUN_0050af90();
  uStack_28 = 0xec1793;
  piVar2 = (int *)(**(code **)(*piVar2 + 4))();
  uStack_28 = 0xec179a;
  piVar3 = (int *)FUN_004d8eb0();
  uStack_28 = 0;
  uStack_2c = 0;
  uStack_30 = 0xeeee8218;
  uStack_34 = 0x34b248b;
  piVar3 = (int *)(**(code **)(*piVar3 + 0x20))();
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar2 + 0xdc))(piVar3);
    (**(code **)(*piVar2 + 0xf0))(piVar3);
    this = (void *)FUN_0060e910();
    FUN_0060ed00(this,&uStack_34,&uStack_30,&uStack_2c);
    uStack_28 = 0;
    (**(code **)(*piVar3 + 100))(&uStack_28);
    (**(code **)(*piVar3 + 0x54))(0x34b248b);
    iVar4 = FUN_007f0140();
    if (iVar4 != 0) {
      iVar1 = *piVar3;
      uVar5 = FUN_007f01a0(iVar4);
      (**(code **)(iVar1 + 0x108))(uVar5);
    }
  }
  return;
}

