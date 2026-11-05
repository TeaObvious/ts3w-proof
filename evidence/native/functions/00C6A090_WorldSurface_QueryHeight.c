/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 lot spatial resource / main-entrance boundary review (2026-10-17). ECX world-surface
   owner; nine stack words and RET0x24. Checks worldbounds; optional lot bucket/eligibility scan
   calls00AB77E0 and conditionally adds binary32+0.1875 after00B051D0. Uses-100 sentinel and SSE
   abs/max epsilon1.5258789e-05. Optional mesh+5C and terrain+54 branches and two nullable
   byte-output flags remain in full body; result returns x87ST0 after binary32 local stores.
   Entrance caller uses a particular flag tuple, not proof of current full host terrain/floor/bridge
   policy. Complete actual C/Listing and pristine PE support the selected observations.
   Names/IDs/prototypes/types/body/bytes/Listing/flow/analysis otherwise remain unchanged; current
   managed resource/cache policy is preserved. */

float10 __thiscall
WorldSurface_QueryHeight
          (void *param_1,float param_2,float param_3,undefined4 param_4,char param_5,char param_6,
          undefined1 *param_7,undefined1 *param_8,char param_9,char param_10)

{
  void *this;
  undefined1 auVar1 [16];
  undefined4 *in_EAX;
  float *pfVar2;
  undefined4 *extraout_EAX;
  undefined4 *extraout_EAX_00;
  undefined4 extraout_EDX;
  int iVar3;
  undefined4 *puVar4;
  float10 fVar5;
  undefined1 auVar6 [16];
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  float fVar11;
  undefined4 *puVar12;
  undefined1 local_1e;
  undefined1 local_1d;
  undefined4 *local_1c;
  float local_18;
  undefined4 *local_14 [4];
  
  puVar12 = (undefined4 *)0xc2c80000;
  local_1d = 0;
  local_1e = 0;
  local_1c = (undefined4 *)0xc2c80000;
  if ((((param_2 < *(float *)((int)param_1 + 0xb4)) || (param_3 < *(float *)((int)param_1 + 0xb8)))
      || (*(float *)((int)param_1 + 0xbc) <= param_2)) ||
     (*(float *)((int)param_1 + 0xc4) + *(float *)((int)param_1 + 0xc0) <= param_3))
  goto LAB_00c6a353;
  if (param_5 != '\0') {
    pfVar2 = (float *)LotSpatialIndex_FindBucketAtWorldXZ(param_1,param_2,param_3);
    in_EAX = (undefined4 *)0x0;
    if (pfVar2 != (float *)0x0) {
      puVar4 = (undefined4 *)*pfVar2;
      in_EAX = (undefined4 *)pfVar2[1];
      local_14[0] = in_EAX;
      if (puVar4 != in_EAX) {
        puVar12 = (undefined4 *)0xc2c80000;
        do {
          this = (void *)*puVar4;
          if ((this != (void *)0x0) &&
             ((param_9 == '\0' ||
              ((*(char *)((int)this + 0x4bc) == '\0' &&
               ((param_10 == '\0' ||
                (in_EAX = (undefined4 *)FUN_007893e0(this,param_2,param_3), puVar12 = local_1c,
                (char)in_EAX != '\0')))))))) {
            fVar5 = FUN_00ab77e0(this,param_2,param_3,param_4);
            local_1c = (undefined4 *)(float)fVar5;
            in_EAX = (undefined4 *)FUN_00b051d0(this,param_2,param_3,param_4);
            if ((char)in_EAX != '\0') {
              local_1c = (undefined4 *)((float)local_1c + 0.1875);
            }
            fVar11 = (float)local_1c - -100.0;
            auVar6._0_4_ = fVar11 * -1.0;
            auVar6._4_4_ = fVar11 * -1.0;
            auVar6._8_4_ = fVar11 * -1.0;
            auVar6._12_4_ = fVar11 * -1.0;
            auVar7._4_4_ = fVar11;
            auVar7._0_4_ = fVar11;
            auVar7._8_4_ = fVar11;
            auVar7._12_4_ = fVar11;
            auVar7 = maxps(auVar6,auVar7);
            auVar8._4_4_ = -(uint)(auVar7._4_4_ <= 1.5258789e-05);
            auVar8._0_4_ = -(uint)(auVar7._0_4_ <= 1.5258789e-05);
            auVar8._8_4_ = -(uint)(auVar7._8_4_ <= 1.5258789e-05);
            auVar8._12_4_ = -(uint)(auVar7._12_4_ <= 1.5258789e-05);
            iVar3 = movmskps(extraout_EDX,auVar8);
            puVar12 = local_1c;
            if (iVar3 != 0xf) {
              local_1d = 1;
              goto LAB_00c6a2f9;
            }
          }
          puVar4 = puVar4 + 1;
        } while (puVar4 != local_14[0]);
        goto LAB_00c6a236;
      }
    }
    puVar12 = (undefined4 *)0xc2c80000;
  }
LAB_00c6a236:
  if (param_6 != '\0') {
    local_14[0] = (undefined4 *)0x0;
    local_18 = -1.0;
    if ((*(void **)((int)param_1 + 0x5c) != (void *)0x0) &&
       (in_EAX = (undefined4 *)
                 FUN_00b77f60(*(void **)((int)param_1 + 0x5c),param_2,param_3,'\x01','\0',local_14,
                              &local_18,'\0'), puVar12 = local_1c, (char)in_EAX != '\0')) {
      fVar5 = FUN_00b73130(local_14[0],param_2,param_3);
      puVar12 = (undefined4 *)(float)fVar5;
      local_1e = 1;
      in_EAX = extraout_EAX;
      local_1c = puVar12;
      if (*(void **)((int)param_1 + 0x54) != (void *)0x0) {
        fVar5 = FUN_00c29080(*(void **)((int)param_1 + 0x54),param_2,param_3);
        local_14[0] = (undefined4 *)(float)fVar5;
        in_EAX = extraout_EAX_00;
        if ((float10)(float)puVar12 < fVar5) {
          local_1e = 0;
          puVar12 = local_14[0];
          local_1c = local_14[0];
        }
      }
    }
  }
LAB_00c6a2f9:
  fVar11 = (float)puVar12 - -100.0;
  auVar9._0_4_ = fVar11 * -1.0;
  auVar9._4_4_ = fVar11 * -1.0;
  auVar9._8_4_ = fVar11 * -1.0;
  auVar9._12_4_ = fVar11 * -1.0;
  auVar1._4_4_ = fVar11;
  auVar1._0_4_ = fVar11;
  auVar1._8_4_ = fVar11;
  auVar1._12_4_ = fVar11;
  auVar7 = maxps(auVar9,auVar1);
  auVar10._4_4_ = -(uint)(auVar7._4_4_ <= 1.5258789e-05);
  auVar10._0_4_ = -(uint)(auVar7._0_4_ <= 1.5258789e-05);
  auVar10._8_4_ = -(uint)(auVar7._8_4_ <= 1.5258789e-05);
  auVar10._12_4_ = -(uint)(auVar7._12_4_ <= 1.5258789e-05);
  iVar3 = movmskps(in_EAX,auVar10);
  if ((iVar3 == 0xf) && (*(void **)((int)param_1 + 0x54) != (void *)0x0)) {
    fVar5 = FUN_00c29080(*(void **)((int)param_1 + 0x54),param_2,param_3);
    local_1c = (undefined4 *)(float)fVar5;
  }
LAB_00c6a353:
  if (param_7 != (undefined1 *)0x0) {
    *param_7 = local_1d;
  }
  if (param_8 != (undefined1 *)0x0) {
    *param_8 = local_1e;
  }
  return (float10)(float)local_1c;
}

