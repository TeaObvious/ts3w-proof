/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

Decompiled function Seasons_QuerySnowPresenceAndDepth:


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-assigned name. Reads active weather packet under lock, reports snow presence through the
   output byte and returns float depth. Nonzero thickness uses magnitude >FLT_EPSILON; frost >0.5
   also establishes presence. Exposure rejection returns depth0; a street may retain presence
   through the allowance byte. Exposed depth=saturate(2*thickness-1)*0.175. At near-zero depth while
   melting, D6DCD0 can clear presence. */

float10 __thiscall
Seasons_QuerySnowPresenceAndDepth(void *param_1,float *worldPoint,char *hasSnowOut)

{
  char cVar1;
  bool bVar2;
  undefined4 extraout_EAX;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  float fVar7;
  undefined1 auVar8 [16];
  undefined1 auVar9 [16];
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  char local_41;
  float local_40;
  LPCRITICAL_SECTION local_3c;
  undefined4 local_38;
  float local_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;

  local_3c = (LPCRITICAL_SECTION)((int)param_1 + 0x980);
  EnterCriticalSection(local_3c);
  iVar6 = (int)param_1 + 0x8c8;
  if (*(char *)((int)param_1 + 0x9e8) == '\0') {
    iVar6 = (int)param_1 + 0x924;
  }
  local_40 = *(float *)(iVar6 + 0x18);
  local_30 = -1.0;
  fStack_2c = -1.0;
  fStack_28 = -1.0;
  fStack_24 = -1.0;
  auVar11._4_4_ = local_40;
  auVar11._0_4_ = local_40;
  auVar11._8_4_ = local_40;
  auVar11._12_4_ = local_40;
  auVar10._0_4_ = local_40 * -1.0;
  auVar10._4_4_ = local_40 * -1.0;
  auVar10._8_4_ = local_40 * -1.0;
  auVar10._12_4_ = local_40 * -1.0;
  auVar11 = maxps(auVar10,auVar11);
  auVar12._4_4_ = -(uint)(auVar11._4_4_ <= 1.1920929e-07);
  auVar12._0_4_ = -(uint)(auVar11._0_4_ <= 1.1920929e-07);
  auVar12._8_4_ = -(uint)(auVar11._8_4_ <= 1.1920929e-07);
  auVar12._12_4_ = -(uint)(auVar11._12_4_ <= 1.1920929e-07);
  iVar3 = movmskps(extraout_EAX,auVar12);
  local_20 = 1.1920929e-07;
  fStack_1c = 1.1920929e-07;
  fStack_18 = 1.1920929e-07;
  fStack_14 = 1.1920929e-07;
  if ((iVar3 != 0xf) || (_DAT_01192d8c < *(float *)(iVar6 + 8))) {
    cVar1 = '\x01';
  }
  else {
    cVar1 = '\0';
  }
  *hasSnowOut = cVar1;
  local_41 = '\0';
  bVar2 = Seasons_TestSnowExposure(worldPoint,&local_41);
  if (!bVar2) {
    if ((*hasSnowOut != '\0') && (local_41 == '\0')) {
      *hasSnowOut = '\0';
    }
    LeaveCriticalSection(local_3c);
    return (float10)0;
  }
  fVar7 = local_40 * 2.0 - 1.0;
  fVar7 = (float)((uint)fVar7 & (int)(-0.0 - fVar7) >> 0x1f);
  uVar4 = (int)(1.0 - fVar7) >> 0x1f;
  local_38 = 0x3f800000;
  auVar13._0_4_ = (float)(~uVar4 & (uint)fVar7 | uVar4 & 0x3f800000) * 0.175;
  auVar13._4_4_ = auVar13._0_4_;
  auVar13._8_4_ = auVar13._0_4_;
  auVar13._12_4_ = auVar13._0_4_;
  auVar8._0_4_ = local_30 * auVar13._0_4_;
  auVar8._4_4_ = fStack_2c * auVar13._0_4_;
  auVar8._8_4_ = fStack_28 * auVar13._0_4_;
  auVar8._12_4_ = fStack_24 * auVar13._0_4_;
  auVar11 = maxps(auVar8,auVar13);
  auVar9._4_4_ = -(uint)(auVar11._4_4_ <= fStack_1c);
  auVar9._0_4_ = -(uint)(auVar11._0_4_ <= local_20);
  auVar9._8_4_ = -(uint)(auVar11._8_4_ <= fStack_18);
  auVar9._12_4_ = -(uint)(auVar11._12_4_ <= fStack_14);
  iVar3 = movmskps(uVar4,auVar9);
  local_34 = auVar13._0_4_;
  if (((iVar3 == 0xf) && (*hasSnowOut != '\0')) && (*(char *)(iVar6 + 0x24) != '\0')) {
    uVar5 = Seasons_IsSnowMeltedAtPoint(param_1,worldPoint,local_40);
    if ((char)uVar5 != '\0') {
      *hasSnowOut = '\0';
    }
  }
  LeaveCriticalSection(local_3c);
  return (float10)local_34;
}


