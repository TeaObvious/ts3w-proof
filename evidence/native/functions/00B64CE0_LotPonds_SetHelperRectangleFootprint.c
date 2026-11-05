/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 generated lot-pond footprint comparison): Physical stdcall object pointer
   and row pointer, RET8 at B6521D; no meaningful result asserted. Null object or missing footprint
   component returns without allocation. Row seed Int32 X/Z at+10/+14 is converted by CVTSI2SS.
   Row+18 Int32 ID is loaded at B64D30 and PUSHed at B64D33 BEFORE format pointer Pond_%i at106F3F8
   and string-builder pointer; actual call930FA0 atB64D7F receives that variadic ID even though
   stored C omits it. Do not repair formatter ABI by guess.7D00F0 hashes actual formatted name. Best
   rectangle at row+30/+34/+38/+3C becomes four seed-relative float2 corners:
   x1minus1plus0.1,z1minus1plus0.1; x1minus1plus0.1,z0minus0.1; x0minus0.1,z0minus0.1;
   x0minus0.1,z1minus1plus0.1, each subtracting seed after exact SSE operations. Four vectors
   are16byte temporaries but only firsttwo lanes are appended as8byte float2. Fresh footprint
   resource primary polygon vector is cleared. Actual temporary0x40 polygon has
   hash+0,byte+5=0,DWORD+8=1,+C/+10=0,+14=4,+18=8,+1C=raw0.25; do not invent semantic labels for
   unrecovered fields. Bounds initial lower lanes useFLT_MAX106F348, upper lanesMIN_NORMAL106F344,
   then exact subtraction/signbit mask selections; they are not Math.Min/Max or negativeFLT_MAX.
   Full float2 vertices deep-copy through82B7B0 or82F220. SetResourceLayers947660 receives
   primaryresource,null,null,literal1; existing consumer owns actual retain/replace/rebuild
   semantics. Temporary vertex storage is freed, local resource reference released via virtual+4.
   Current RuntimeFootprintArea carries a selected subset and does not serialize/reimplement native
   full polygon/resource/lifetime or bounds fields. Canonical C stack/SIMD alias expressions remain
   actual artifacts; original instructions and constants govern. */

void LotPonds_SetHelperRectangleFootprint(void *param_1,int param_2)

{
  float *pfVar1;
  uint uVar2;
  undefined4 *puVar3;
  float *pfVar4;
  int iVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  int *local_13c;
  float fStack_138;
  float fStack_134;
  float fStack_130;
  float fStack_12c;
  float fStack_128;
  float fStack_124;
  float fStack_11c;
  float fStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  float fStack_108;
  float fStack_104;
  float fStack_100;
  float fStack_fc;
  float fStack_f8;
  void *local_f4;
  uint *puStack_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  uint uStack_e0;
  undefined1 uStack_db;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  undefined4 uStack_d0;
  undefined4 uStack_cc;
  undefined4 uStack_c8;
  undefined4 uStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  void *pvStack_b0;
  float *pfStack_ac;
  float *pfStack_a8;
  char *pcStack_a4;
  char *local_a0;
  char *local_9c;
  float *local_98;
  char local_90 [32];
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float afStack_50 [7];
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float fStack_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if ((param_1 != (void *)0x0) &&
     (local_f4 = Object_GetComponentByMask(param_1,DAT_011e9fa8), local_f4 != (void *)0x0)) {
    fVar6 = (float)*(int *)(param_2 + 0x10);
    fVar7 = (float)*(int *)(param_2 + 0x14);
    local_a0 = local_90;
    local_98 = &local_70;
    local_90[0] = '\0';
    local_9c = local_a0;
    FUN_00930fa0(&local_a0,"Pond_%i");
    uVar2 = HashLowercasedCStringFNV1(local_a0);
    puVar3 = (undefined4 *)FUN_004e4520(0x60,8,0,"Lot/PoolManager/FootprintResource",0);
    if (puVar3 == (undefined4 *)0x0) {
      local_13c = (int *)0x0;
    }
    else {
      local_13c = FootprintResource_Construct(puVar3);
      if (local_13c != (int *)0x0) {
        (**(code **)*local_13c)();
      }
    }
    puStack_f0 = (uint *)FootprintResource_GetPrimaryPolygonVector((int)local_13c);
    FootprintPolygonVector_Clear(puStack_f0);
    uStack_c4 = DAT_0106f8c8;
    afStack_50[4] = ((float)*(int *)(param_2 + 0x38) - FLOAT_00f998f8) + _DAT_0104487c;
    afStack_50[0] = afStack_50[4] - fVar6;
    fVar8 = ((float)*(int *)(param_2 + 0x3c) - FLOAT_00f998f8) + _DAT_0104487c;
    afStack_50[1] = fVar8 - fVar7;
    afStack_50[2] = afStack_50[0];
    afStack_50[3] = afStack_50[0];
    afStack_50[4] = afStack_50[4] - fVar6;
    fVar9 = (float)*(int *)(param_2 + 0x34) - _DAT_0104487c;
    afStack_50[5] = fVar9 - fVar7;
    afStack_50[6] = afStack_50[4];
    fStack_34 = afStack_50[4];
    fStack_20 = (float)*(int *)(param_2 + 0x30) - _DAT_0104487c;
    fStack_30 = fStack_20 - fVar6;
    fStack_20 = fStack_20 - fVar6;
    iVar5 = 4;
    fStack_2c = fVar9 - fVar7;
    fStack_28 = fStack_30;
    fStack_24 = fStack_30;
    pvStack_b0 = (void *)0x0;
    pfStack_ac = (float *)0x0;
    pfStack_a8 = (float *)0x0;
    pcStack_a4 = "Objects/FootprintPolygon";
    uStack_db = 0;
    uStack_d8 = 1;
    uStack_d4 = 0;
    uStack_d0 = 0;
    uStack_cc = 4;
    uStack_c8 = 8;
    fStack_1c = fVar8 - fVar7;
    fStack_18 = fStack_20;
    fStack_14 = fStack_20;
    pfVar4 = afStack_50;
    fVar8 = DAT_0106f348;
    fStack_bc = DAT_0106f348;
    fStack_b8 = DAT_0106f344;
    fVar9 = DAT_0106f344;
    fStack_130 = fVar6;
    fStack_12c = fVar7;
    fStack_128 = fVar6;
    fStack_124 = fVar6;
    uStack_e0 = uVar2;
    do {
      fVar11 = fVar9;
      fVar10 = fStack_b8;
      fVar7 = fStack_bc;
      fVar6 = fVar8;
      fStack_138 = *pfVar4;
      fStack_134 = pfVar4[1];
      fStack_68 = pfVar4[2];
      fStack_64 = pfVar4[3];
      local_70 = fStack_138;
      fStack_6c = fStack_134;
      fStack_60 = fStack_138;
      fStack_5c = fStack_134;
      fStack_58 = fStack_68;
      fStack_54 = fStack_64;
      if (pfStack_ac < pfStack_a8) {
        pfVar1 = pfStack_ac + 2;
        if (pfStack_ac != (float *)0x0) {
          *pfStack_ac = fStack_138;
          pfStack_ac[1] = fStack_134;
        }
      }
      else {
        FUN_00405c10(&pvStack_b0,pfStack_ac,&fStack_138);
        pfVar1 = pfStack_ac;
      }
      pfStack_ac = pfVar1;
      fStack_e8 = fVar7 - fStack_134;
      fStack_bc = (float)(~((int)fStack_e8 >> 0x1f) & (uint)fStack_134 |
                         (uint)fVar7 & (int)fStack_e8 >> 0x1f);
      fStack_108 = fVar6 - fStack_138;
      fStack_114 = fVar11 - fStack_134;
      fStack_130 = (float)(~((int)fStack_108 >> 0x1f) & (uint)fStack_138 |
                          (uint)fVar6 & (int)fStack_108 >> 0x1f);
      fStack_fc = (float)(~((int)fStack_114 >> 0x1f) & (uint)fVar11 |
                         (uint)fStack_134 & (int)fStack_114 >> 0x1f);
      fStack_e4 = fVar10 - fStack_138;
      fStack_b8 = (float)(~((int)fStack_e4 >> 0x1f) & (uint)fVar10 |
                         (uint)fStack_138 & (int)fStack_e4 >> 0x1f);
      pfVar4 = pfVar4 + 4;
      iVar5 = iVar5 + -1;
      fVar8 = fStack_130;
      fVar9 = fStack_fc;
      fStack_11c = fStack_138;
      fStack_118 = fStack_134;
      fStack_110 = fVar7;
      fStack_10c = fStack_134;
      fStack_104 = fVar10;
      fStack_100 = fStack_138;
      fStack_f8 = fVar6;
      fStack_ec = fVar11;
    } while (iVar5 != 0);
    puVar3 = (undefined4 *)puStack_f0[1];
    fStack_c0 = fStack_130;
    fStack_b4 = fStack_fc;
    if (puVar3 < (undefined4 *)puStack_f0[2]) {
      puStack_f0[1] = (uint)(puVar3 + 0x10);
      if (puVar3 != (undefined4 *)0x0) {
        FootprintPolygon_CopyConstruct(puVar3,&uStack_e0);
      }
    }
    else {
      FUN_0082f220(puStack_f0,puVar3,&uStack_e0);
    }
    FootprintComponent_SetResourceLayers
              (local_f4,local_13c,(undefined4 *)0x0,(undefined4 *)0x0,(void *)0x1);
    if (pvStack_b0 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_b0);
    }
    if (local_13c != (int *)0x0) {
      (**(code **)(*local_13c + 4))();
    }
  }
  return;
}

