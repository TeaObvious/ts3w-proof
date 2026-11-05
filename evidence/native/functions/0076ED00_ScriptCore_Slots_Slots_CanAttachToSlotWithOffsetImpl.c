/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162110 (original PC 1.67 TS3W.exe).
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
  int iVar5;
  void *this;
  int iVar6;
  void *pvVar7;
  undefined4 uVar8;
  float10 fVar9;
  float fVar10;
  float fVar11;
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
  fVar9 = (float10)fsin((float10)in_stack_00000028);
  fVar4 = (float)fVar9;
  fVar9 = (float10)fcos((float10)in_stack_00000028);
  local_50 = (float)fVar9;
  fVar10 = DAT_00f998f8 - local_50;
  fVar11 = fVar10 * fVar1;
  fStack_28 = fVar11 * fVar1 + local_50;
  fStack_2c = fVar11 * fVar2 - fVar4 * fVar3;
  local_30 = fVar11 * fVar3 + fVar4 * fVar2;
  fVar11 = fVar10 * fVar2;
  fStack_38 = fVar11 * fVar1 + fVar4 * fVar3;
  fStack_3c = fVar11 * fVar2 + local_50;
  local_40 = fVar11 * fVar3 - fVar4 * fVar1;
  fVar10 = fVar10 * fVar3;
  fStack_48 = fVar10 * fVar1 - fVar4 * fVar2;
  fStack_4c = fVar10 * fVar2 + fVar4 * fVar1;
  local_50 = fVar10 * fVar3 + local_50;
  uStack_44 = 0;
  uStack_34 = 0;
  uStack_24 = 0;
  uStack_18 = in_stack_00000020[2];
  uStack_1c = in_stack_00000020[1];
  local_20 = *in_stack_00000020;
  fStack_14 = DAT_00f998f8;
  iVar5 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar5);
  if (this != (void *)0x0) {
    iVar6 = FUN_00934260(this,DAT_011ea158);
    if (iVar6 != 0) {
      pvVar7 = (void *)FUN_00937f80(iVar5);
      if (pvVar7 == (void *)0x0) {
        return 0x3ea;
      }
      uVar8 = FUN_00b43620(this,pvVar7,in_stack_00000014,&local_50);
      return uVar8;
    }
  }
  return 0x3e9;
}

