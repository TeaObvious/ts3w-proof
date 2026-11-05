/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Slots_CanAttachToSlotWithOffsetImpl. Export
   ordinal(s): 772. Entry VA: 0x105607c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06001092. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 Slots_CanAttachToSlotWithOffsetImpl(void)

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
  
                    /* 0x5607c0  772  Slots_CanAttachToSlotWithOffsetImpl */
  fVar1 = in_stack_00000024[2];
  fVar2 = in_stack_00000024[1];
  fVar3 = *in_stack_00000024;
  fVar9 = (float10)fsin((float10)in_stack_00000028);
  fVar4 = (float)fVar9;
  fVar9 = (float10)fcos((float10)in_stack_00000028);
  local_50 = (float)fVar9;
  fVar10 = DAT_10acb0d4 - local_50;
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
  fStack_14 = DAT_10acb0d4;
  iVar5 = FUN_1072a1a0();
  this = (void *)FUN_1072abb0(iVar5);
  if (this != (void *)0x0) {
    iVar6 = FUN_10726da0(this,DAT_10c8d998);
    if (iVar6 != 0) {
      pvVar7 = (void *)FUN_1072abb0(iVar5);
      if (pvVar7 == (void *)0x0) {
        return 0x3ea;
      }
      uVar8 = FUN_1010ca80(this,pvVar7,in_stack_00000014,&local_50);
      return uVar8;
    }
  }
  return 0x3e9;
}

