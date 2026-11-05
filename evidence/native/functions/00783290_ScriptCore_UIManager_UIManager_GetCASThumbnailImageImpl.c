/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162e10 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetCASThumbnailImageImpl [assembly=ScriptCore token=0x06000DFD;
   key: Sims3.SimIFace.ResourceKey, index: System.Int32, bodyType: System.UInt32, ageGender:
   System.UInt32, size: Sims3.SimIFace.ThumbnailSize, liveUpdate: System.Boolean;
   return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.UIManager::UIManager_GetCASThumbnailImageImpl(void)

{
  void *this;
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined4 uVar4;
  undefined1 uStack00000004;
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  undefined4 in_stack_0000001c;
  undefined4 in_stack_00000020;
  undefined1 in_stack_00000024;
  int *piVar5;
  int local_144;
  undefined4 local_140 [2];
  void *pvStack_138;
  void *local_130 [2];
  void *pvStack_128;
  void *local_120;
  void *pvStack_a8;
  void *local_a0;
  void *pvStack_98;
  void *local_90;
  
  this = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    puVar2 = UIResourceKey_CopyManagedToNative(&uStack00000004,local_140);
    FUN_005e7780(local_130,*puVar2,puVar2[1],puVar2[2],puVar2[3],in_stack_00000014,in_stack_00000018
                 ,in_stack_0000001c,in_stack_00000020,in_stack_00000024,0);
    local_144 = 0;
    UIThumbnail_AllocateImageAndPublishCommand(this,(int *)local_130,&local_144,(int *)0x0);
    if (local_144 != 0) {
      piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
      iVar1 = local_144;
      piVar5 = (int *)0x30;
      local_144 = 0;
      uVar4 = (**(code **)(*piVar3 + 200))(iVar1);
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 4))();
      }
      if ((pvStack_a8 != (void *)0x0) && (pvStack_a8 != pvStack_98)) {
        Memory_FreeIfNonNull(pvStack_a8);
      }
      if ((pvStack_138 != (void *)0x0) && (pvStack_138 != pvStack_128)) {
        Memory_FreeIfNonNull(pvStack_138);
      }
      return uVar4;
    }
    if ((local_a0 != (void *)0x0) && (local_a0 != local_90)) {
      Memory_FreeIfNonNull(local_a0);
    }
    if ((local_130[0] != (void *)0x0) && (local_130[0] != local_120)) {
      Memory_FreeIfNonNull(local_130[0]);
    }
  }
  return 0;
}

