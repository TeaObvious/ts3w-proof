/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original instruction comparison; 339 complete owned bytes/98 actual Listing
   instructions. No runtime execution.
   Physical service receiver arrives in ECX and five stack words are purged by RET0x14; retained
   inferred stdcall prototype omits ECX. Query mask from00686F10 optionally ORs0x10000. Lower-three
   absolute component maximum <=binary32 2^-23 exits before scene query; direction uses RSQRTPS and
   two refinements. After child success, output fraction is written before COMISS/JNC rejecting
   ordered>=1; no whole-output rollback or generic finite-value guard. Success writes
   point+0x10,normal+0x20,metadata+0x30/+0x34 and shape POINTER+0x38, then AL1. */

uint CollisionService_QuerySegment
               (float *param_1,float *param_2,undefined4 param_3,float *param_4,char param_5)

{
  float *pfVar1;
  undefined4 uVar2;
  int extraout_EDX;
  undefined1 auVar3 [16];
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  undefined1 in_XMM4 [16];
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float local_1c;
  
  pfVar1 = (float *)CollisionQuery_ExpandTypeMask(param_3);
  local_60 = *param_1;
  fStack_5c = param_1[1];
  fStack_58 = param_1[2];
  fStack_54 = param_1[3];
  local_50 = *param_2 - local_60;
  fStack_4c = param_2[1] - fStack_5c;
  fStack_48 = param_2[2] - fStack_58;
  fStack_44 = param_2[3] - fStack_54;
  auVar3._0_4_ = local_50 * -1.0;
  auVar3._4_4_ = fStack_4c * -1.0;
  auVar3._8_4_ = fStack_48 * -1.0;
  auVar3._12_4_ = fStack_44 * -1.0;
  auVar4._4_4_ = fStack_4c;
  auVar4._0_4_ = local_50;
  auVar4._8_4_ = fStack_48;
  auVar4._12_4_ = fStack_44;
  auVar4 = maxps(auVar3,auVar4);
  auVar5._4_4_ = -(uint)(auVar4._4_4_ <= 1.1920929e-07);
  auVar5._0_4_ = -(uint)(auVar4._0_4_ <= 1.1920929e-07);
  auVar5._8_4_ = -(uint)(auVar4._8_4_ <= 1.1920929e-07);
  auVar5._12_4_ = -(uint)(auVar4._12_4_ <= 1.1920929e-07);
  uVar2 = movmskps(param_2,auVar5);
  if (((byte)uVar2 & 7) != 7) {
    auVar6._0_4_ = fStack_48 * fStack_48 + fStack_4c * fStack_4c + local_50 * local_50;
    auVar6._4_4_ = auVar6._0_4_;
    auVar6._8_4_ = auVar6._0_4_;
    auVar6._12_4_ = auVar6._0_4_;
    auVar4 = rsqrtps(in_XMM4,auVar6);
    fVar7 = auVar4._0_4_;
    fVar8 = auVar4._4_4_;
    fVar9 = auVar4._8_4_;
    fVar10 = auVar4._12_4_;
    fVar7 = (1.0 - fVar7 * fVar7 * auVar6._0_4_) * fVar7 * 0.5 + fVar7;
    fVar8 = (1.0 - fVar8 * fVar8 * auVar6._0_4_) * fVar8 * 0.5 + fVar8;
    fVar9 = (1.0 - fVar9 * fVar9 * auVar6._0_4_) * fVar9 * 0.5 + fVar9;
    fVar10 = (1.0 - fVar10 * fVar10 * auVar6._0_4_) * fVar10 * 0.5 + fVar10;
    fVar7 = (1.0 - fVar7 * fVar7 * auVar6._0_4_) * fVar7 * 0.5 + fVar7;
    local_50 = fVar7 * local_50;
    fStack_4c = ((1.0 - fVar8 * fVar8 * auVar6._0_4_) * fVar8 * 0.5 + fVar8) * fStack_4c;
    fStack_48 = ((1.0 - fVar9 * fVar9 * auVar6._0_4_) * fVar9 * 0.5 + fVar9) * fStack_48;
    fStack_44 = ((1.0 - fVar10 * fVar10 * auVar6._0_4_) * fVar10 * 0.5 + fVar10) * fStack_44;
    if (param_5 != '\0') {
      pfVar1 = (float *)((uint)pfVar1 | 0x10000);
    }
    pfVar1 = (float *)CollisionScene_QueryRayAndProjectHit
                                (*(void **)(extraout_EDX + 8),&local_60,(uint)pfVar1,&local_40);
    if ((char)pfVar1 != '\0') {
      local_20 = local_20 * fVar7;
      *param_4 = local_20;
      pfVar1 = param_4;
      if (local_20 < 1.0) {
        param_4[0xc] = *(float *)((int)local_1c + 0x40);
        param_4[0xd] = *(float *)((int)local_1c + 0x44);
        param_4[8] = local_30;
        param_4[9] = fStack_2c;
        param_4[10] = fStack_28;
        param_4[0xb] = fStack_24;
        param_4[4] = local_40;
        param_4[5] = fStack_3c;
        param_4[6] = fStack_38;
        param_4[7] = fStack_34;
        param_4[0xe] = local_1c;
        return CONCAT31((int3)((uint)param_4 >> 8),1);
      }
    }
  }
  return (uint)pfVar1 & 0xffffff00;
}

