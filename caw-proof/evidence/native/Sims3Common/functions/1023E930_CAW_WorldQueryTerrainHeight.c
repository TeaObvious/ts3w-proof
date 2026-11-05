/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Initializes result to-100. World X/Z ordered COMISS gates
   at lower inclusive and upper exclusive bounds use JC/JBE exits, so NaN and either infinity return
   the outside sentinel rather than a managed exception. In-world optional lot/road paths remain
   distinct from ordinary TerrainData collision; upper Z includes product-dependent+C4.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

float10 __thiscall
CAW_WorldQueryTerrainHeight
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
  
  puVar12 = DAT_10ac8dcc;
  local_1d = 0;
  local_1e = 0;
  local_1c = DAT_10ac8dcc;
  if ((((*(float *)((int)param_1 + 0xb4) <= param_2) && (*(float *)((int)param_1 + 0xb8) <= param_3)
       ) && (param_2 < *(float *)((int)param_1 + 0xbc))) &&
     (param_3 < *(float *)((int)param_1 + 0xc4) + *(float *)((int)param_1 + 0xc0))) {
    if (param_5 != '\0') {
      pfVar2 = (float *)FUN_1023cf80(param_1,param_2,param_3);
      in_EAX = (undefined4 *)0x0;
      if (pfVar2 != (float *)0x0) {
        puVar4 = (undefined4 *)*pfVar2;
        in_EAX = (undefined4 *)pfVar2[1];
        local_14[0] = in_EAX;
        if (puVar4 != in_EAX) {
          do {
            this = (void *)*puVar4;
            if ((this != (void *)0x0) &&
               ((param_9 == '\0' ||
                ((*(char *)((int)this + 0x4bc) == '\0' &&
                 ((param_10 == '\0' ||
                  (in_EAX = (undefined4 *)FUN_100c4a50(this,param_2,param_3), puVar12 = local_1c,
                  (char)in_EAX != '\0')))))))) {
              fVar5 = FUN_1007cd00(this,param_2,param_3,param_4);
              local_1c = (undefined4 *)(float)fVar5;
              in_EAX = (undefined4 *)FUN_100cc400(this,param_2,param_3,param_4);
              if ((char)in_EAX != '\0') {
                local_1c = (undefined4 *)((float)local_1c + _DAT_10ac8dc0);
              }
              fVar11 = (float)local_1c - (float)DAT_10ac8dcc;
              auVar6._0_4_ = DAT_10aae184 * fVar11;
              auVar6._4_4_ = DAT_10aae184 * fVar11;
              auVar6._8_4_ = DAT_10aae184 * fVar11;
              auVar6._12_4_ = DAT_10aae184 * fVar11;
              auVar7._4_4_ = fVar11;
              auVar7._0_4_ = fVar11;
              auVar7._8_4_ = fVar11;
              auVar7._12_4_ = fVar11;
              auVar7 = maxps(auVar6,auVar7);
              auVar8._4_4_ = -(uint)(auVar7._4_4_ <= DAT_10ac8e80);
              auVar8._0_4_ = -(uint)(auVar7._0_4_ <= DAT_10ac8e80);
              auVar8._8_4_ = -(uint)(auVar7._8_4_ <= DAT_10ac8e80);
              auVar8._12_4_ = -(uint)(auVar7._12_4_ <= DAT_10ac8e80);
              iVar3 = movmskps(extraout_EDX,auVar8);
              puVar12 = local_1c;
              if (iVar3 != 0xf) {
                local_1d = 1;
                goto LAB_1023eb99;
              }
            }
            puVar4 = puVar4 + 1;
          } while (puVar4 != local_14[0]);
        }
      }
    }
    if (param_6 != '\0') {
      local_14[0] = (undefined4 *)0x0;
      local_18 = DAT_10aae184;
      if ((*(void **)((int)param_1 + 0x5c) != (void *)0x0) &&
         (in_EAX = (undefined4 *)
                   FUN_10142dc0(*(void **)((int)param_1 + 0x5c),param_2,param_3,'\x01','\0',local_14
                                ,&local_18,'\0'), puVar12 = local_1c, (char)in_EAX != '\0')) {
        fVar5 = FUN_1013d670((int)local_14[0],param_2,param_3);
        puVar12 = (undefined4 *)(float)fVar5;
        local_1e = 1;
        in_EAX = extraout_EAX;
        local_1c = puVar12;
        if (*(int *)((int)param_1 + 0x54) != 0) {
          fVar5 = CAW_TerrainCollisionHeight(*(int *)((int)param_1 + 0x54),param_2,param_3);
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
LAB_1023eb99:
    fVar11 = (float)puVar12 - (float)DAT_10ac8dcc;
    auVar9._0_4_ = DAT_10aae184 * fVar11;
    auVar9._4_4_ = DAT_10aae184 * fVar11;
    auVar9._8_4_ = DAT_10aae184 * fVar11;
    auVar9._12_4_ = DAT_10aae184 * fVar11;
    auVar1._4_4_ = fVar11;
    auVar1._0_4_ = fVar11;
    auVar1._8_4_ = fVar11;
    auVar1._12_4_ = fVar11;
    auVar7 = maxps(auVar9,auVar1);
    auVar10._4_4_ = -(uint)(auVar7._4_4_ <= DAT_10ac8e80);
    auVar10._0_4_ = -(uint)(auVar7._0_4_ <= DAT_10ac8e80);
    auVar10._8_4_ = -(uint)(auVar7._8_4_ <= DAT_10ac8e80);
    auVar10._12_4_ = -(uint)(auVar7._12_4_ <= DAT_10ac8e80);
    iVar3 = movmskps(in_EAX,auVar10);
    if ((iVar3 == 0xf) && (*(int *)((int)param_1 + 0x54) != 0)) {
      fVar5 = CAW_TerrainCollisionHeight(*(int *)((int)param_1 + 0x54),param_2,param_3);
      local_1c = (undefined4 *)(float)fVar5;
    }
  }
  if (param_7 != (undefined1 *)0x0) {
    *param_7 = local_1d;
  }
  if (param_8 != (undefined1 *)0x0) {
    *param_8 = local_1e;
  }
  return (float10)(float)local_1c;
}

