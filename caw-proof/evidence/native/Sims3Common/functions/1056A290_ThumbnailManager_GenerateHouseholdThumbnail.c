/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_GenerateHouseholdThumbnail.
   Export ordinal(s): 1036. Entry VA: 0x1056a290. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000381. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
ThumbnailManager_GenerateHouseholdThumbnail
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,uint param_5,
          int param_6)

{
  void *this;
  int *piVar1;
  void *this_00;
  int *piVar2;
  uint uVar3;
  uint unaff_EBX;
  undefined8 uVar4;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
                    /* 0x56a290  1036  ThumbnailManager_GenerateHouseholdThumbnail */
  this = DAT_10c71150;
  if (param_6 == 0) {
    if (DAT_10c71150 != (void *)0x0) {
      FUN_1033a020(DAT_10c71150,param_1,param_2,param_3,param_4,param_5,(int *)0x0);
      return;
    }
  }
  else {
    piVar1 = (int *)FUN_1055b120();
    uVar4 = (**(code **)(*piVar1 + 0x118))();
    if (this != (void *)0x0) {
      this_00 = (void *)FUN_10918eb0(0x38,"Scripting/ScriptThumbnailNotifier",0);
      if (this_00 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = FUN_10569cf0(this_00,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),param_6);
        if (piVar2 != (int *)0x0) {
          (**(code **)(*piVar2 + 4))();
        }
      }
      uVar3 = FUN_1033a020(this,param_1,param_2,param_3,param_4,param_5,piVar2);
      if ((char)uVar3 != '\0') {
        (**(code **)(*piVar1 + 0x120))(uVar4,0xffffffff,param_6,0);
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
    (**(code **)(*piVar1 + 0x130))(param_6,uVar4,appuStack_20,0);
    if ((unaff_EBX & 4) != 0) {
      FUN_10928a90(&stack0xffffffcc,'\0');
    }
  }
  return;
}

