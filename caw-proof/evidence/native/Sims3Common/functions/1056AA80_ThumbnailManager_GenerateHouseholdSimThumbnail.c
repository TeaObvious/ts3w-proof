/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_GenerateHouseholdSimThumbnail.
   Export ordinal(s): 1035. Entry VA: 0x1056aa80. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000384. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void ThumbnailManager_GenerateHouseholdSimThumbnail(void)

{
  undefined **this;
  uint *puVar1;
  void *this_00;
  int *piVar2;
  uint uVar3;
  undefined8 uVar4;
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  uint in_stack_0000001c;
  uint in_stack_00000020;
  undefined4 in_stack_00000024;
  char in_stack_00000028;
  undefined4 in_stack_0000002c;
  int in_stack_00000030;
  int *piVar5;
  int *piVar6;
  undefined **local_34;
  undefined4 local_30;
  byte bStack_2c;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
                    /* 0x56aa80  1035  ThumbnailManager_GenerateHouseholdSimThumbnail */
  this = DAT_10c71150;
  local_34 = DAT_10c71150;
  if (in_stack_00000030 == 0) {
    if (DAT_10c71150 != (undefined **)0x0) {
      piVar6 = (int *)0x0;
      puVar1 = (uint *)FUN_1055dbb0(&stack0x00000004,&local_30);
      FUN_1033a150(this,puVar1,in_stack_00000014,in_stack_00000018,in_stack_0000001c,
                   in_stack_00000020,in_stack_00000024,in_stack_00000028,in_stack_0000002c,piVar6);
      return;
    }
  }
  else {
    piVar6 = (int *)FUN_1055b120();
    uVar4 = (**(code **)(*piVar6 + 0x118))();
    if (this != (undefined **)0x0) {
      this_00 = (void *)FUN_10918eb0(0x38,"Scripting/ScriptThumbnailNotifier",0);
      if (this_00 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = FUN_10569cf0(this_00,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),in_stack_00000030);
        if (piVar2 != (int *)0x0) {
          (**(code **)(*piVar2 + 4))();
        }
      }
      piVar5 = piVar2;
      puVar1 = (uint *)FUN_1055dbb0(&stack0x00000004,&local_30);
      uVar3 = FUN_1033a150(local_34,puVar1,in_stack_00000014,in_stack_00000018,in_stack_0000001c,
                           in_stack_00000020,in_stack_00000024,in_stack_00000028,in_stack_0000002c,
                           piVar5);
      if ((char)uVar3 != '\0') {
        (**(code **)(*piVar6 + 0x120))(uVar4,0xffffffff,in_stack_00000030,0);
        (**(code **)(*piVar6 + 0x11c))();
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
    (**(code **)(*piVar6 + 0x130))(in_stack_00000030,uVar4,appuStack_20,0);
    local_34 = &PTR_FUN_10aca5b4;
    if ((bStack_2c & 4) != 0) {
      FUN_10928a90(&local_34,'\0');
    }
  }
  return;
}

