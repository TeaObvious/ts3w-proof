/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_StitchPhotoboothPictures. Export
   ordinal(s): 1062. Entry VA: 0x1056a660. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000387. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void ThumbnailManager_StitchPhotoboothPictures(void)

{
  int iVar1;
  int *piVar2;
  void *this;
  int *piVar3;
  uint uVar4;
  uint unaff_EBP;
  undefined8 uVar5;
  undefined4 in_stack_00000048;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
                    /* 0x56a660  1062  ThumbnailManager_StitchPhotoboothPictures */
  iVar1 = DAT_10c71150;
  piVar2 = (int *)FUN_1055b120();
  uVar5 = (**(code **)(*piVar2 + 0x118))();
  if (iVar1 != 0) {
    this = (void *)FUN_10918eb0(0x38,"Scripting/ScriptThumbnailNotifier",0);
    if (this == (void *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = FUN_10569cf0(this,(int)uVar5,(int)((ulonglong)uVar5 >> 0x20),in_stack_00000048);
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 4))();
      }
    }
    uVar4 = FUN_10337c70();
    if ((char)uVar4 != '\0') {
      (**(code **)(*piVar2 + 0x120))(uVar5,0xffffffff,in_stack_00000048,0);
      (**(code **)(*piVar2 + 0x11c))();
      if (piVar3 == (int *)0x0) {
        return;
      }
      (**(code **)(*piVar3 + 8))();
      return;
    }
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 8))();
    }
  }
  appuStack_20[0] = &PTR_FUN_10aca5b4;
  uStack_10 = 0;
  uStack_16 = 1;
  uStack_18 = 0;
  (**(code **)(*piVar2 + 0x130))(in_stack_00000048,uVar5,appuStack_20,0);
  if ((unaff_EBP & 4) != 0) {
    FUN_10928a90(&stack0xffffffcc,'\0');
  }
  return;
}

