/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Quaternion comparison aligns signusingnew W XORold W signbit,
   sumsquared4-lane delta, <=(2^-16)^2 gate. Ifchanged storesoriginal inputbits, then
   refresh/dispatch unless flag4. No normalization added. */

void __thiscall TransformComponent_SetLocalQuaternion(void *this,float *localQuaternion)

{
  float fVar1;
  float fVar2;
  float fVar3;
  int iVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  uint uVar8;
  float fVar9;
  undefined1 auVar10 [16];
  undefined1 auVar11 [16];
  undefined1 auVar12 [16];
  float local_30 [11];
  
  fVar1 = localQuaternion[1];
  fVar2 = localQuaternion[2];
  fVar3 = localQuaternion[3];
  uVar8 = ((uint)fVar3 ^ (uint)*(float *)((int)this + 0x1c)) & 0x80000000;
  fVar5 = (float)(uVar8 ^ (uint)*localQuaternion) - *(float *)((int)this + 0x10);
  fVar6 = (float)(uVar8 ^ (uint)fVar1) - *(float *)((int)this + 0x14);
  fVar7 = (float)(uVar8 ^ (uint)fVar2) - *(float *)((int)this + 0x18);
  fVar9 = (float)(uVar8 ^ (uint)fVar3) - *(float *)((int)this + 0x1c);
  fVar5 = fVar9 * fVar9 + fVar6 * fVar6 + fVar7 * fVar7 + fVar5 * fVar5;
  auVar10._0_4_ = DAT_00fab218 * fVar5;
  auVar10._4_4_ = DAT_00fab218 * fVar5;
  auVar10._8_4_ = DAT_00fab218 * fVar5;
  auVar10._12_4_ = DAT_00fab218 * fVar5;
  auVar11._4_4_ = fVar5;
  auVar11._0_4_ = fVar5;
  auVar11._8_4_ = fVar5;
  auVar11._12_4_ = fVar5;
  auVar11 = maxps(auVar10,auVar11);
  auVar12._4_4_ = -(uint)(auVar11._4_4_ <= DAT_0104581c * DAT_0104581c);
  auVar12._0_4_ = -(uint)(auVar11._0_4_ <= DAT_0104581c * DAT_0104581c);
  auVar12._8_4_ = -(uint)(auVar11._8_4_ <= DAT_0104581c * DAT_0104581c);
  auVar12._12_4_ = -(uint)(auVar11._12_4_ <= DAT_0104581c * DAT_0104581c);
  iVar4 = movmskps(this,auVar12);
  if (iVar4 != 0xf) {
    *(float *)((int)this + 0x10) = *localQuaternion;
    *(float *)((int)this + 0x14) = fVar1;
    *(float *)((int)this + 0x18) = fVar2;
    *(float *)((int)this + 0x1c) = fVar3;
    if ((*(uint *)((int)this + 0x34) & 4) == 0) {
      if ((*(uint *)((int)this + 0x34) & 3) != 0) {
        FUN_00956e60((int)this);
      }
      TransformComponent_GetWorldQuaternionTranslation(this,local_30);
      ObjectEvents_Dispatch(0xe,*(void **)((int)this + 4),local_30);
    }
  }
  return;
}

