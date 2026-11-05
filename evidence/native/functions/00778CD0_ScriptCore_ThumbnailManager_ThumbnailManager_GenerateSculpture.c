/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162b30 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_GenerateSculpture [assembly=ScriptCore
   token=0x06000185; outfitKey: Sims3.SimIFace.ResourceKey, callback: System.Delegate;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.ThumbnailManager::ThumbnailManager_GenerateSculpture(void)

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
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar5 = (**(code **)(*piVar1 + 0x118))();
  ppuStack_34 = DAT_011eec30;
  if (DAT_011eec30 != (undefined **)0x0) {
    this = (void *)FUN_004e4500(0x38,"Scripting/ScriptThumbnailNotifier",0);
    if (this == (void *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = FUN_00777c70(this,(int)uVar5,(int)((ulonglong)uVar5 >> 0x20),in_stack_00000014);
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
    }
    piVar6 = piVar2;
    puVar3 = (undefined4 *)FUN_0076c0e0(&stack0x00000004,&uStack_30);
    uVar4 = FUN_00d5e670(puVar3,piVar6);
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
  appuStack_20[0] = &PTR_FUN_00fba6f4;
  uStack_10 = 0;
  uStack_16 = 1;
  uStack_18 = 0;
  (**(code **)(*piVar1 + 0x130))(in_stack_00000014,uVar5,appuStack_20,0);
  ppuStack_34 = &PTR_FUN_00fba6f4;
  if ((bStack_2c & 4) != 0) {
    FUN_004f5760(&ppuStack_34,'\0');
  }
  return;
}

