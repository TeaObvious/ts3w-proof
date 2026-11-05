/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67 ECX room owner, plain RET; saved fastcall analysis is preserved. Iterate physical X/Z
   under actual unsigned bounds, obtain tile through6A42C0, test only6A9930 AL then nonnull tile.
   Fetch6AA510(selector9,1), decode through69EF30 and accumulate four float lanes/count in order.
   Divide by admitted count, then multiply room vector+120 and referenced lighting scalar into+140;
   separately write scaled room vector+130 and MINPS both against referenced limit. There is no
   explicit empty-count rejection in this body. Decoder/room-membership predicate/full light-factor
   producers and runtime consumers remain separate; this is not merely an RGB averaging API. */

void __fastcall RoomLighting_ReducePhysicalFloorColorLanes(undefined4 *param_1)

{
  void *this;
  uint uVar1;
  float *pfVar2;
  uint uVar3;
  float fVar5;
  float fVar6;
  undefined1 auVar4 [16];
  float fVar7;
  undefined1 auVar8 [16];
  uint local_38;
  int local_34;
  undefined1 local_30 [4];
  undefined1 auStack_2c [4];
  undefined8 uStack_28;
  float local_20 [7];
  
  _local_30 = ZEXT416(0) << 0x20;
  local_34 = 0;
  local_38 = 0;
  auVar4 = _local_30;
  do {
    uVar3 = 0;
    do {
      if ((local_38 < (uint)param_1[0x30]) && (uVar3 < (uint)param_1[0x31])) {
        this = (void *)FUN_006a42c0((void *)*param_1,param_1[7] + local_38,param_1[9] + uVar3);
        uVar1 = FUN_006a9930(this,param_1[3]);
        auVar4 = _local_30;
        if (((char)uVar1 != '\0') && (this != (void *)0x0)) {
          uVar1 = FUN_006aa510(this,9,1);
          pfVar2 = (float *)FUN_0069ef30(local_20,uVar1);
          local_30 = (undefined1  [4])(*pfVar2 + (float)local_30);
          auStack_2c = (undefined1  [4])(pfVar2[1] + (float)auStack_2c);
          uStack_28._0_4_ = pfVar2[2] + (float)uStack_28;
          uStack_28._4_4_ = pfVar2[3] + uStack_28._4_4_;
          local_34 = local_34 + 1;
          auVar4 = _local_30;
        }
      }
      uVar3 = uVar3 + 1;
    } while (uVar3 <= (uint)param_1[0x31]);
    local_38 = local_38 + 1;
  } while (local_38 <= (uint)param_1[0x30]);
  fVar5 = (float)local_34;
  if (local_34 < 0) {
    fVar5 = fVar5 + FLOAT_00f99948;
  }
  auVar8._4_4_ = fVar5;
  auVar8._0_4_ = fVar5;
  auVar8._8_4_ = fVar5;
  auVar8._12_4_ = fVar5;
  auVar4 = divps(auVar4,auVar8);
  fVar5 = auVar4._4_4_ * (float)param_1[0x49] * DAT_00fb3f78;
  fVar6 = auVar4._8_4_ * (float)param_1[0x4a] * DAT_00fb3f78;
  fVar7 = auVar4._12_4_ * (float)param_1[0x4b] * DAT_00fb3f78;
  param_1[0x50] = auVar4._0_4_ * (float)param_1[0x48] * DAT_00fb3f78;
  param_1[0x51] = fVar5;
  param_1[0x52] = fVar6;
  param_1[0x53] = fVar7;
  fVar5 = DAT_0103fd88 * (float)param_1[0x49];
  fVar6 = DAT_0103fd88 * (float)param_1[0x4a];
  fVar7 = DAT_0103fd88 * (float)param_1[0x4b];
  param_1[0x4c] = DAT_0103fd88 * (float)param_1[0x48];
  param_1[0x4d] = fVar5;
  param_1[0x4e] = fVar6;
  param_1[0x4f] = fVar7;
  uStack_28._0_4_ = (float)_DAT_00ff440c;
  uStack_28._4_4_ = (float)_DAT_00ff440c;
  auStack_2c = (undefined1  [4])_DAT_00ff440c;
  local_30 = (undefined1  [4])_DAT_00ff440c;
  auVar4 = minps(*(undefined1 (*) [16])(param_1 + 0x50),_local_30);
  *(undefined1 (*) [16])(param_1 + 0x50) = auVar4;
  auVar4 = minps(*(undefined1 (*) [16])(param_1 + 0x4c),_local_30);
  *(undefined1 (*) [16])(param_1 + 0x4c) = auVar4;
  return;
}

