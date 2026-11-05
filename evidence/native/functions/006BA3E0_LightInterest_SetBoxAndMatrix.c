/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Copies the supplied 32-byte box and 64-byte matrix into the receiver, then recomputes the
   interest. This body imposes no upright-only matrix restriction. Subsequent movement comparison
   and update calls remain as observed. */

void __thiscall LightInterest_SetBoxAndMatrix(void *this,undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  int extraout_ECX;
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  float fVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  uVar3 = param_1[1];
  uVar1 = param_1[2];
  uVar2 = param_1[3];
  fVar7 = *(float *)((int)this + 0x140);
  fVar8 = *(float *)((int)this + 0x144);
  fVar9 = *(float *)((int)this + 0x148);
  fVar10 = *(float *)((int)this + 0x14c);
  *(undefined4 *)((int)this + 0x150) = *param_1;
  *(undefined4 *)((int)this + 0x154) = uVar3;
  *(undefined4 *)((int)this + 0x158) = uVar1;
  *(undefined4 *)((int)this + 0x15c) = uVar2;
  uVar3 = param_1[5];
  uVar1 = param_1[6];
  uVar2 = param_1[7];
  *(undefined4 *)((int)this + 0x160) = param_1[4];
  *(undefined4 *)((int)this + 0x164) = uVar3;
  *(undefined4 *)((int)this + 0x168) = uVar1;
  *(undefined4 *)((int)this + 0x16c) = uVar2;
  uVar3 = param_2[1];
  uVar1 = param_2[2];
  uVar2 = param_2[3];
  *(undefined4 *)((int)this + 0x170) = *param_2;
  *(undefined4 *)((int)this + 0x174) = uVar3;
  *(undefined4 *)((int)this + 0x178) = uVar1;
  *(undefined4 *)((int)this + 0x17c) = uVar2;
  uVar3 = param_2[5];
  uVar1 = param_2[6];
  uVar2 = param_2[7];
  *(undefined4 *)((int)this + 0x180) = param_2[4];
  *(undefined4 *)((int)this + 0x184) = uVar3;
  *(undefined4 *)((int)this + 0x188) = uVar1;
  *(undefined4 *)((int)this + 0x18c) = uVar2;
  uVar3 = param_2[9];
  uVar1 = param_2[10];
  uVar2 = param_2[0xb];
  *(undefined4 *)((int)this + 400) = param_2[8];
  *(undefined4 *)((int)this + 0x194) = uVar3;
  *(undefined4 *)((int)this + 0x198) = uVar1;
  *(undefined4 *)((int)this + 0x19c) = uVar2;
  uVar3 = param_2[0xd];
  uVar1 = param_2[0xe];
  uVar2 = param_2[0xf];
  *(undefined4 *)((int)this + 0x1a0) = param_2[0xc];
  *(undefined4 *)((int)this + 0x1a4) = uVar3;
  *(undefined4 *)((int)this + 0x1a8) = uVar1;
  *(undefined4 *)((int)this + 0x1ac) = uVar2;
  uVar3 = LightInterest_ApplyPortalStateOffset4((int)this);
  fVar7 = fVar7 - *(float *)((int)this + 0x140);
  fVar8 = fVar8 - *(float *)((int)this + 0x144);
  fVar9 = fVar9 - *(float *)((int)this + 0x148);
  fVar10 = fVar10 - *(float *)((int)this + 0x14c);
  auVar4._0_4_ = FLOAT_00fab218 * fVar7;
  auVar4._4_4_ = FLOAT_00fab218 * fVar8;
  auVar4._8_4_ = FLOAT_00fab218 * fVar9;
  auVar4._12_4_ = FLOAT_00fab218 * fVar10;
  auVar5._4_4_ = fVar8;
  auVar5._0_4_ = fVar7;
  auVar5._8_4_ = fVar9;
  auVar5._12_4_ = fVar10;
  auVar5 = maxps(auVar4,auVar5);
  auVar6._4_4_ = -(uint)(auVar5._4_4_ <= DAT_00ff5150);
  auVar6._0_4_ = -(uint)(auVar5._0_4_ <= DAT_00ff5150);
  auVar6._8_4_ = -(uint)(auVar5._8_4_ <= DAT_00ff5150);
  auVar6._12_4_ = -(uint)(auVar5._12_4_ <= DAT_00ff5150);
  uVar3 = movmskps(uVar3,auVar6);
  if (((byte)uVar3 & 7) != 7) {
    FUN_006b71e0(extraout_ECX);
    if ((((*(byte *)((int)this + 0x225) & 1) != 0) && (*(int *)((int)this + 0x1b4) != 0)) &&
       ((*(byte *)((int)this + 0x224) & 0x10) != 0)) {
      FUN_006b67b0(*(void **)(*(int *)((int)this + 0x1b4) + 0x104),(int)this);
    }
  }
  return;
}

