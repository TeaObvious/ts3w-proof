/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162dd8 (original PC 1.67 TS3W.exe).
   ScriptCore.UIManager::UIManager_ToggleDebugLayoutNamesVisibleImpl [assembly=ScriptCore
   token=0x06000DF6; ; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_UIManager__UIManager_ToggleDebugLayoutNamesVisibleImpl(void)

{
  undefined4 *puVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  undefined4 *puVar5;
  
  iVar3 = FUN_0050af90();
  if (iVar3 != 0) {
    DAT_011d7990 = DAT_011d7990 == '\0';
    piVar4 = *(int **)(DAT_011d7988 + 0xc);
    puVar5 = (undefined4 *)*piVar4;
    if (puVar5 == (undefined4 *)0x0) {
      piVar4 = piVar4 + 1;
      iVar3 = *piVar4;
      while (iVar3 == 0) {
        piVar4 = piVar4 + 1;
        iVar3 = *piVar4;
      }
      puVar5 = (undefined4 *)*piVar4;
    }
    puVar1 = *(undefined4 **)(*(int *)(DAT_011d7988 + 0xc) + *(int *)(DAT_011d7988 + 0x10) * 4);
    while (puVar5 != puVar1) {
      if (DAT_011d7990 == '\0') {
        piVar2 = (int *)*puVar5;
        iVar3 = (**(code **)(*piVar2 + 0xf4))(0x812d330,0);
        if (iVar3 != 0) {
          (**(code **)(*piVar2 + 0xe0))(iVar3);
        }
      }
      else {
        FUN_0077f410(*puVar5,puVar5[1]);
      }
      puVar5 = (undefined4 *)puVar5[5];
      while (puVar5 == (undefined4 *)0x0) {
        piVar2 = piVar4 + 1;
        piVar4 = piVar4 + 1;
        puVar5 = (undefined4 *)*piVar2;
      }
    }
  }
  return;
}

