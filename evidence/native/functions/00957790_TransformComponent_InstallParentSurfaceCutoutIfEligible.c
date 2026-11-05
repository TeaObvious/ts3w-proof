/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX child Transform, three physical stack words
   parent object,parent Slots,slot point; RET0Ch. Parent Slots+64h must be0 or child owner
   Transform+4;93A1B0 low ALtrue required. Stores child owner through94FEB0 before enqueuing057F931A
   target GUID/key/origin. Slot virtual+18h supplies matrix; origin float4 stages
   are0*row0,+row3,+(0*row1),+(0*row2), separate MULPS/ADDPS. Different installed child blocks; no
   candidate ranking or automatic sibling selection. */

void __thiscall
TransformComponent_InstallParentSurfaceCutoutIfEligible
          (void *this,int param_1,void *param_2,int *param_3)

{
  int iVar1;
  uint uVar2;
  float *pfVar3;
  int local_80;
  undefined4 local_7c;
  undefined4 local_78;
  undefined4 local_74;
  undefined4 uStack_70;
  undefined4 uStack_6c;
  undefined4 uStack_68;
  undefined4 uStack_64;
  byte local_60 [4];
  undefined **local_5c;
  undefined4 local_58;
  undefined4 local_54;
  undefined4 local_50;
  undefined4 local_4c;
  int local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  
  iVar1 = SharedPointerOffset0x64_Load32((int)param_2);
  if ((iVar1 == 0) || (iVar1 == *(int *)((int)this + 4))) {
    local_80 = 0;
    local_7c = 0;
    local_78 = 0;
    local_74 = 0;
    uVar2 = FUN_0093a1b0((uint *)(*(int *)((int)this + 4) + 0x18),&local_80);
    if ((char)uVar2 != '\0') {
      local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
      local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
      local_50 = *(undefined4 *)(param_1 + 8);
      local_4c = *(undefined4 *)(param_1 + 0xc);
      local_48 = local_80;
      local_3c = local_74;
      local_44 = local_7c;
      local_40 = local_78;
      local_60[0] = 0x1a;
      local_60[1] = 0x93;
      local_60[2] = 0x7f;
      local_60[3] = 5;
      local_5c = &PTR_PTR_0117cba8;
      pfVar3 = (float *)(**(code **)(*param_3 + 0x18))();
      uStack_64 = 0;
      uStack_68 = 0;
      uStack_6c = 0;
      uStack_70 = 0;
      fStack_30 = *pfVar3 * 0.0 + pfVar3[0xc] + pfVar3[4] * 0.0 + pfVar3[8] * 0.0;
      fStack_2c = pfVar3[1] * 0.0 + pfVar3[0xd] + pfVar3[5] * 0.0 + pfVar3[9] * 0.0;
      fStack_28 = pfVar3[2] * 0.0 + pfVar3[0xe] + pfVar3[6] * 0.0 + pfVar3[10] * 0.0;
      fStack_24 = pfVar3[3] * 0.0 + pfVar3[0xf] + pfVar3[7] * 0.0 + pfVar3[0xb] * 0.0;
      SharedPointerOffset0x64_Store32(param_2,*(undefined4 *)((int)this + 4));
      RenderCommand_EnqueueIfDispatcherExists(local_60);
      if (local_5c != (undefined **)0x0) {
        (**(code **)*local_5c)(&local_50);
      }
    }
  }
  return;
}

