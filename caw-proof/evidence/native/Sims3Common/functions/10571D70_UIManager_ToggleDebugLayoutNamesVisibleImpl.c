/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_ToggleDebugLayoutNamesVisibleImpl.
   Export ordinal(s): 1166. Entry VA: 0x10571d70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000691. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void UIManager_ToggleDebugLayoutNamesVisibleImpl(void)

{
  undefined4 *puVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  undefined4 *puVar5;
  
  iVar3 = FUN_1093d2e0();
  if (iVar3 != 0) {
    DAT_10c7b200 = DAT_10c7b200 == '\0';
    piVar4 = *(int **)(DAT_10c7b1f8 + 0xc);
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
    puVar1 = *(undefined4 **)(*(int *)(DAT_10c7b1f8 + 0xc) + *(int *)(DAT_10c7b1f8 + 0x10) * 4);
    while (puVar5 != puVar1) {
      if (DAT_10c7b200 == '\0') {
        piVar2 = (int *)*puVar5;
        iVar3 = (**(code **)(*piVar2 + 0xf4))(0x812d330,0);
        if (iVar3 != 0) {
          (**(code **)(*piVar2 + 0xe0))(iVar3);
        }
      }
      else {
        FUN_10571890(*puVar5,puVar5[1]);
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

