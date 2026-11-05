/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162d98 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_InitUserToolHelperImpl [assembly=ScriptCore token=0x06000DEE; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.UIManager::UIManager_InitUserToolHelperImpl(void)

{
  int *piVar1;
  int *piVar2;
  uint *puVar3;
  int *piVar4;
  int iVar5;
  
  piVar2 = (int *)FUN_0050af90();
  piVar2 = (int *)(**(code **)(*piVar2 + 4))();
  if (piVar2 != (int *)0x0) {
    puVar3 = FUN_005050b0(0x260,0x10,"Scripting/UIHost/UITopLevelWindow",(int *)0x0);
    if (puVar3 == (uint *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = FUN_0077ec90(puVar3);
      if (piVar4 != (int *)0x0) {
        (**(code **)*piVar4)();
      }
    }
    piVar1 = piVar4 + 1;
    (**(code **)(piVar4[1] + 0xb0))(0);
    (**(code **)(*piVar2 + 0x38))();
    (**(code **)(*piVar1 + 100))(&stack0xffffffec);
    (**(code **)(piVar4[0x94] + 0x18))(0x397b562);
    (**(code **)(*piVar1 + 0x54))(0x397b562);
    (**(code **)(*piVar1 + 0x74))(0x10,1);
    (**(code **)(*piVar1 + 0x74))(0x80,1);
    (**(code **)(*piVar4 + 0x18))();
    (**(code **)(*piVar2 + 0xdc))(piVar1);
    (**(code **)(*piVar2 + 0xf0))(piVar1);
    iVar5 = FUN_007f0140();
    if (iVar5 != 0) {
      iVar5 = FUN_007f01a0(iVar5);
      if (iVar5 != 0) {
        (**(code **)(*piVar1 + 0x108))(iVar5);
      }
    }
    (**(code **)(*piVar4 + 4))();
  }
  return;
}

