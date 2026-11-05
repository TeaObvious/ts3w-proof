/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01162110 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Slots::Slots_CanAttachToSlotWithOffsetImpl [assembly=ScriptCore token=0x06000D3E;
   objectId: System.UInt64, parentId: System.UInt64, slotNameHash: System.UInt32, occupySlot:
   System.Boolean, forceBindPose: System.Boolean, trans: Sims3.SimIFace.Vector3&, axis:
   Sims3.SimIFace.Vector3&, angle: System.Single; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.Slots::Slots_CanAttachToSlotWithOffsetImpl(void)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  void *pvVar5;
  void *this;
  void *pvVar6;
  undefined4 uVar7;
  float10 fVar8;
  float fVar9;
  float fVar10;
  undefined4 in_stack_00000004;
  undefined4 in_stack_00000008;
  undefined4 in_stack_0000000c;
  undefined4 in_stack_00000010;
  int in_stack_00000014;
  undefined4 *in_stack_00000020;
  float *in_stack_00000024;
  float in_stack_00000028;
  float local_50;
  float fStack_4c;
  float fStack_48;
  undefined4 uStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
  fVar1 = in_stack_00000024[2];
  fVar2 = in_stack_00000024[1];
  fVar3 = *in_stack_00000024;
  fVar8 = (float10)fsin((float10)in_stack_00000028);
  fVar4 = (float)fVar8;
  fVar8 = (float10)fcos((float10)in_stack_00000028);
  local_50 = (float)fVar8;
  fVar9 = 1.0 - local_50;
  fVar10 = fVar9 * fVar1;
  fStack_28 = fVar10 * fVar1 + local_50;
  fStack_2c = fVar10 * fVar2 - fVar4 * fVar3;
  local_30 = fVar10 * fVar3 + fVar4 * fVar2;
  fVar10 = fVar9 * fVar2;
  fStack_38 = fVar10 * fVar1 + fVar4 * fVar3;
  fStack_3c = fVar10 * fVar2 + local_50;
  local_40 = fVar10 * fVar3 - fVar4 * fVar1;
  fVar9 = fVar9 * fVar3;
  fStack_48 = fVar9 * fVar1 - fVar4 * fVar2;
  fStack_4c = fVar9 * fVar2 + fVar4 * fVar1;
  local_50 = fVar9 * fVar3 + local_50;
  uStack_44 = 0;
  uStack_34 = 0;
  uStack_24 = 0;
  uStack_18 = in_stack_00000020[2];
  uStack_1c = in_stack_00000020[1];
  local_20 = *in_stack_00000020;
  fStack_14 = 1.0;
  pvVar5 = ObjectRegistry_GetGlobal();
  this = ObjectRegistry_FindBorrowed(pvVar5,CONCAT44(in_stack_00000008,in_stack_00000004));
  if (this != (void *)0x0) {
    pvVar6 = Object_GetComponentByMask(this,DAT_011ea158);
    if (pvVar6 != (void *)0x0) {
      pvVar5 = ObjectRegistry_FindBorrowed(pvVar5,CONCAT44(in_stack_00000010,in_stack_0000000c));
      if (pvVar5 == (void *)0x0) {
        return 0x3ea;
      }
      uVar7 = FUN_00b43620(this,pvVar5,in_stack_00000014,&local_50);
      return uVar7;
    }
  }
  return 0x3e9;
}

