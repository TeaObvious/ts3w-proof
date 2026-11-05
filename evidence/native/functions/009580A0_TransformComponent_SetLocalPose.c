/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. 32-byte {quaternion,translation};
   percomponentabsolutequatdelta<=2^-16 andtranslationXYZ<=2^-16 skip. Unlikequaternion-only setter
   no hemisphere alignment; no finite-rangegate. Store,refresh,event0e unless flag4. */

void __thiscall TransformComponent_SetLocalPose(void *this,float *localPose)

{
  undefined1 auVar1 [16];
  float fVar2;
  float fVar3;
  float fVar4;
  int iVar5;
  undefined4 in_EDX;
  undefined4 uVar6;
  undefined1 auVar7 [16];
  undefined1 auVar8 [16];
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  undefined1 auVar13 [16];
  undefined1 auVar14 [16];
  undefined1 auVar15 [16];
  float local_30 [11];
  
  fVar2 = localPose[1];
  fVar3 = localPose[2];
  fVar4 = localPose[3];
  fVar9 = *localPose - *(float *)((int)this + 0x10);
  fVar10 = fVar2 - *(float *)((int)this + 0x14);
  fVar11 = fVar3 - *(float *)((int)this + 0x18);
  fVar12 = fVar4 - *(float *)((int)this + 0x1c);
  auVar13._0_4_ = DAT_00fab218 * fVar9;
  auVar13._4_4_ = DAT_00fab218 * fVar10;
  auVar13._8_4_ = DAT_00fab218 * fVar11;
  auVar13._12_4_ = DAT_00fab218 * fVar12;
  auVar14._4_4_ = fVar10;
  auVar14._0_4_ = fVar9;
  auVar14._8_4_ = fVar11;
  auVar14._12_4_ = fVar12;
  auVar14 = maxps(auVar13,auVar14);
  auVar15._4_4_ = -(uint)(auVar14._4_4_ <= DAT_0104581c);
  auVar15._0_4_ = -(uint)(auVar14._0_4_ <= DAT_0104581c);
  auVar15._8_4_ = -(uint)(auVar14._8_4_ <= DAT_0104581c);
  auVar15._12_4_ = -(uint)(auVar14._12_4_ <= DAT_0104581c);
  iVar5 = movmskps(this,auVar15);
  if (iVar5 == 0xf) {
    fVar9 = localPose[4] - *(float *)((int)this + 0x20);
    fVar10 = localPose[5] - *(float *)((int)this + 0x24);
    fVar11 = localPose[6] - *(float *)((int)this + 0x28);
    fVar12 = localPose[7] - *(float *)((int)this + 0x2c);
    auVar7._0_4_ = DAT_00fab218 * fVar9;
    auVar7._4_4_ = DAT_00fab218 * fVar10;
    auVar7._8_4_ = DAT_00fab218 * fVar11;
    auVar7._12_4_ = DAT_00fab218 * fVar12;
    auVar1._4_4_ = fVar10;
    auVar1._0_4_ = fVar9;
    auVar1._8_4_ = fVar11;
    auVar1._12_4_ = fVar12;
    auVar14 = maxps(auVar7,auVar1);
    auVar8._4_4_ = -(uint)(auVar14._4_4_ <= DAT_0104581c);
    auVar8._0_4_ = -(uint)(auVar14._0_4_ <= DAT_0104581c);
    auVar8._8_4_ = -(uint)(auVar14._8_4_ <= DAT_0104581c);
    auVar8._12_4_ = -(uint)(auVar14._12_4_ <= DAT_0104581c);
    uVar6 = movmskps(in_EDX,auVar8);
    if (((byte)uVar6 & 7) == 7) {
      return;
    }
  }
  *(float *)((int)this + 0x10) = *localPose;
  *(float *)((int)this + 0x14) = fVar2;
  *(float *)((int)this + 0x18) = fVar3;
  *(float *)((int)this + 0x1c) = fVar4;
  fVar2 = localPose[5];
  fVar3 = localPose[6];
  fVar4 = localPose[7];
  *(float *)((int)this + 0x20) = localPose[4];
  *(float *)((int)this + 0x24) = fVar2;
  *(float *)((int)this + 0x28) = fVar3;
  *(float *)((int)this + 0x2c) = fVar4;
  if ((*(uint *)((int)this + 0x34) & 4) == 0) {
    if ((*(uint *)((int)this + 0x34) & 3) != 0) {
      FUN_00956e60((int)this);
    }
    TransformComponent_GetWorldQuaternionTranslation(this,local_30);
    ObjectEvents_Dispatch(0xe,*(void **)((int)this + 4),local_30);
  }
  return;
}

