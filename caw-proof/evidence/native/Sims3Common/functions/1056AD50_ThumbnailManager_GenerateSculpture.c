/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_GenerateSculpture. Export
   ordinal(s): 1041. Entry VA: 0x1056ad50. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000389. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void ThumbnailManager_GenerateSculpture(void)

{
  int *piVar1;
  void *this;
  int *piVar2;
  undefined4 *puVar3;
  uint uVar4;
  undefined8 uVar5;
  undefined4 in_stack_00000014;
  int *piVar6;
  undefined **ppuStack_34;
  undefined4 uStack_30;
  byte bStack_2c;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
                    /* 0x56ad50  1041  ThumbnailManager_GenerateSculpture */
  piVar1 = (int *)FUN_1055b120();
  uVar5 = (**(code **)(*piVar1 + 0x118))();
  ppuStack_34 = DAT_10c71150;
  if (DAT_10c71150 != (undefined **)0x0) {
    this = (void *)FUN_10918eb0(0x38,"Scripting/ScriptThumbnailNotifier",0);
    if (this == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = FUN_10569cf0(this,(int)uVar5,(int)((ulonglong)uVar5 >> 0x20),in_stack_00000014);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
    }
    piVar6 = piVar2;
    puVar3 = (undefined4 *)FUN_1055dbb0(&stack0x00000004,&uStack_30);
    uVar4 = FUN_103371a0(puVar3,piVar6);
    if ((char)uVar4 != '\0') {
      (**(code **)(*piVar1 + 0x120))(uVar5,0xffffffff,in_stack_00000014,0);
      (**(code **)(*piVar1 + 0x11c))();
      if (piVar2 == (int *)0x0) {
        return;
      }
      (**(code **)(*piVar2 + 8))();
      return;
    }
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))();
    }
  }
  appuStack_20[0] = &PTR_FUN_10aca5b4;
  uStack_10 = 0;
  uStack_16 = 1;
  uStack_18 = 0;
  (**(code **)(*piVar1 + 0x130))(in_stack_00000014,uVar5,appuStack_20,0);
  ppuStack_34 = &PTR_FUN_10aca5b4;
  if ((bStack_2c & 4) != 0) {
    FUN_10928a90(&ppuStack_34,'\0');
  }
  return;
}

