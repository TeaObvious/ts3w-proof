/* Actual Ghidra decompilation for DB entry 00778A00.
   Owned body inclusive: 00778A00..00778A5C.
   EOL comments are reinserted from verified DB comment readbacks at matching
   decompiled operations: the C tool transports function comments but omits EOLs.
   Reference and contract: ../../../../guides/rendering/thumbnail-generation-callbacks.md
*/

/* Verified PC 1.67 registration table at 0x01162b20 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_GenerateHouseholdSimThumbnail [assembly=ScriptCore
   token=0x06000180; key: Sims3.SimIFace.ResourceKey, cacheId: System.UInt64, groupId:
   System.UInt32, sizeMask: System.UInt32, technique: System.Byte, invalidate: System.Boolean,
   ageGender: System.UInt32, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore.ThumbnailManager::ThumbnailManager_GenerateHouseholdSimThumbnail(void)

{
  undefined **this;
  uint *puVar1;
  void *this_00;
  int *piVar2;
  uint uVar3;
  undefined8 uVar4;
  undefined1 uStack00000004;
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

  this = DAT_011eec30;
  local_34 = DAT_011eec30;
  if (in_stack_00000030 == 0) {
    if (DAT_011eec30 != (undefined **)0x0) {
      piVar6 = (int *)0x0;
      puVar1 = UIResourceKey_CopyManagedToNative(&uStack00000004,&local_30);
      FUN_00d61620(this,puVar1,in_stack_00000014,in_stack_00000018,in_stack_0000001c,
                   in_stack_00000020,in_stack_00000024,in_stack_00000028,in_stack_0000002c,piVar6);
      return;
    }
  }
  else {
    piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar4 = (**(code **)(*piVar6 + 0x118))();
    if (this != (undefined **)0x0) {
      this_00 = (void *)FUN_004e4500(0x38,"Scripting/ScriptThumbnailNotifier",0);
      if (this_00 == (void *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = FUN_00777c70(this_00,(int)uVar4,(int)((ulonglong)uVar4 >> 0x20),in_stack_00000030);
        if (piVar2 != (int *)0x0) {
          (**(code **)(*piVar2 + 4))();
        }
      }
      piVar5 = piVar2;
      puVar1 = UIResourceKey_CopyManagedToNative(&uStack00000004,&local_30);
      uVar3 = FUN_00d61620(local_34,puVar1,in_stack_00000014,in_stack_00000018,in_stack_0000001c,
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
    appuStack_20[0] = &PTR_FUN_00fba6f4;
    uStack_10 = 0;
    uStack_16 = 1;
    uStack_18 = 0;
    (**(code **)(*piVar6 + 0x130))(in_stack_00000030,uVar4,appuStack_20,0);
    local_34 = &PTR_FUN_00fba6f4;
    if ((bStack_2c & 4) != 0) {
      FUN_004f5760(&local_34,'\0');
    }
  }
  return;
}
