/* Actual Ghidra decompilation for DB entry 007780A0.
   Owned body inclusive: 007780A0..007780E8.
   EOL comments are reinserted from verified DB comment readbacks at matching
   decompiled operations: the C tool transports function comments but omits EOLs.
   Reference and contract: ../../../../guides/rendering/thumbnail-generation-callbacks.md
*/

/* Verified PC 1.67 registration table at 0x01162ae8 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_GenerateLotThumbnailsForGroup [assembly=ScriptCore
   token=0x0600017B; lotId: System.UInt64, cacheId: System.UInt64, sizeMask: System.UInt32, groupId:
   System.UInt32, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.ThumbnailManager::ThumbnailManager_GenerateLotThumbnailsForGroup
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,uint param_5,
          undefined4 param_6,int param_7)

{
  void *this;
  int *piVar1;
  void *this_00;
  int *piVar2;
  uint uVar3;
  uint unaff_EBX;
  undefined8 uVar4;
  undefined1 auStack_22 [2];
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  undefined1 uStack_10;

  this = DAT_011eec30;
  if (param_7 == 0) {
    if (DAT_011eec30 != (void *)0x0) {
      FUN_00d613c0(DAT_011eec30,param_1,param_2,param_3,param_4,param_5,param_6,(int *)0x0);
      return;
    }
  }
  else {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar4 = (**(code **)(*piVar1 + 0x118))();
    if (this != (void *)0x0) {
      this_00 = (void *)FUN_004e4500(0x38,"Scripting/ScriptThumbnailNotifier",0);
      if (this_00 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = FUN_00777c70(this_00,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),param_7);
        if (piVar2 != (int *)0x0) {
          (**(code **)(*piVar2 + 4))();
        }
      }
      uVar3 = FUN_00d613c0(this,param_1,param_2,param_3,param_4,param_5,param_6,piVar2);
      if ((char)uVar3 != '\0') {
        (**(code **)(*piVar1 + 0x120))(uVar4,0xffffffff,param_7,0);
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
    (**(code **)(*piVar1 + 0x130))(param_7,uVar4,appuStack_20,0);
    if ((unaff_EBX & 4) != 0) {
      FUN_004f5760(auStack_22 + -0x12,'\0');
    }
  }
  return;
}
