/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162e10 (original PC 1.67 TS3W.exe).
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
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  undefined4 in_stack_0000001c;
  undefined4 in_stack_00000020;
  undefined1 in_stack_00000024;
  int *piVar5;
  int local_144;
  undefined4 local_140 [2];
  int iStack_138;
  int local_130 [2];
  int iStack_128;
  int local_120;
  int iStack_a8;
  int local_a0;
  int iStack_98;
  int local_90;
  
  this = DAT_011eec30;
  if (DAT_011eec30 != (void *)0x0) {
    puVar2 = (undefined4 *)FUN_0076c0e0(&stack0x00000004,local_140);
    FUN_005e7780(local_130,*puVar2,puVar2[1],puVar2[2],puVar2[3],in_stack_00000014,in_stack_00000018
                 ,in_stack_0000001c,in_stack_00000020,in_stack_00000024,0);
    local_144 = 0;
    FUN_00d5c970(this,local_130,&local_144,(int *)0x0);
    if (local_144 != 0) {
      piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
      iVar1 = local_144;
      piVar5 = (int *)0x30;
      local_144 = 0;
      uVar4 = (**(code **)(*piVar3 + 200))(iVar1);
      if (piVar5 != (int *)0x0) {
        (**(code **)(*piVar5 + 4))();
      }
      if ((iStack_a8 != 0) && (iStack_a8 != iStack_98)) {
        FUN_004e44e0(iStack_a8);
      }
      if ((iStack_138 != 0) && (iStack_138 != iStack_128)) {
        FUN_004e44e0(iStack_138);
      }
      return uVar4;
    }
    if ((local_a0 != 0) && (local_a0 != local_90)) {
      FUN_004e44e0(local_a0);
    }
    if ((local_130[0] != 0) && (local_130[0] != local_120)) {
      FUN_004e44e0(local_130[0]);
    }
  }
  return 0;
}

