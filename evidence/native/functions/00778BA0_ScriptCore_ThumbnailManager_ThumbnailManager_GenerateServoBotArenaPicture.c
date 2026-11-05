/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162b40 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_GenerateServoBotArenaPicture [assembly=ScriptCore
   token=0x06000186; simId: System.UInt64, sizeMask: System.UInt32, callback: System.Delegate;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.ThumbnailManager::ThumbnailManager_GenerateServoBotArenaPicture
          (undefined4 param_1,undefined4 param_2,uint param_3,undefined4 param_4)

{
  int iVar1;
  int *piVar2;
  void *this;
  int *piVar3;
  uint uVar4;
  uint unaff_EBP;
  undefined8 uVar5;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;
  
  iVar1 = DAT_011eec30;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar5 = (**(code **)(*piVar2 + 0x118))();
  if (iVar1 != 0) {
    this = (void *)FUN_004e4500(0x38,"Scripting/ScriptThumbnailNotifier",0);
    if (this == (void *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = FUN_00777c70(this,(int)uVar5,(int)((ulonglong)uVar5 >> 0x20),param_4);
      if (piVar3 != (int *)0x0) {
        (**(code **)(*piVar3 + 4))();
      }
    }
    uVar4 = FUN_00d5eaa0(param_1,param_2,param_3,piVar3);
    if ((char)uVar4 != '\0') {
      (**(code **)(*piVar2 + 0x120))(uVar5,0xffffffff,param_4,0);
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
  appuStack_20[0] = &PTR_FUN_00fba6f4;
  uStack_10 = 0;
  uStack_16 = 1;
  uStack_18 = 0;
  (**(code **)(*piVar2 + 0x130))(param_4,uVar5,appuStack_20,0);
  if ((unaff_EBP & 4) != 0) {
    FUN_004f5760(&stack0xffffffcc,'\0');
  }
  return;
}

