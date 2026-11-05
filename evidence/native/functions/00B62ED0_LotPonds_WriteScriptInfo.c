/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). ECX manager plus
   record and output pointers, RET8. Actual original lot transform maps bound/best rectangle corners
   using1.0 and0.1 offsets. Writes representative/corners/water height, negative record ID clamped0
   and objectGUID fromrecord+48/+4C tooutput+78/+7C. Native raw layout comes from physical stores,
   not managed metadata packing; current yaw projection and output policy remain separate. Original
   managed LotPond constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs,
   physical ABI, prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current
   resource/cache policy is preserved. */

void __thiscall LotPonds_WriteScriptInfo(void *this,undefined4 *param_1,void *param_2)

{
  int iVar1;
  uint uVar2;
  float local_120;
  float fStack_11c;
  float fStack_118;
  float afStack_114 [4];
  float fStack_104;
  float fStack_100;
  float fStack_fc;
  float fStack_f8;
  float fStack_f4;
  float fStack_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  float fStack_e0;
  float fStack_dc;
  float fStack_d8;
  float afStack_d4 [4];
  undefined4 auStack_c4 [4];
  undefined4 auStack_b4 [4];
  undefined4 auStack_a4 [4];
  float afStack_94 [4];
  float fStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float fStack_60;
  float fStack_5c;
  float fStack_58;
  float afStack_54 [4];
  undefined4 auStack_44 [4];
  undefined4 auStack_34 [4];
  undefined4 auStack_24 [8];
  
  iVar1 = (**(code **)(**(int **)((int)this + 4) + 100))(&local_120);
  afStack_94[1] = (float)param_1[0x10] - *(float *)(iVar1 + 4);
  afStack_114[2] = ((float)(int)param_1[0xb] - 1.0) + 0.1;
  uVar2 = 0;
  afStack_114[0] = ((float)(int)param_1[10] - 1.0) + 0.1;
  fStack_fc = (float)(int)param_1[9] - 0.1;
  fStack_f4 = (float)(int)param_1[8] - 0.1;
  local_120 = afStack_94[1];
  fStack_11c = afStack_94[1];
  fStack_118 = afStack_94[1];
  afStack_114[1] = afStack_94[1];
  afStack_114[3] = afStack_114[0];
  fStack_104 = afStack_114[0];
  fStack_100 = afStack_94[1];
  fStack_f8 = afStack_114[0];
  fStack_f0 = afStack_94[1];
  fStack_ec = fStack_fc;
  fStack_e8 = fStack_f4;
  fStack_e4 = fStack_f4;
  fStack_e0 = afStack_94[1];
  fStack_dc = afStack_114[2];
  fStack_d8 = fStack_f4;
  do {
    FUN_00ab7040(*(void **)((int)this + 4),(float *)((int)afStack_114 + uVar2),
                 (float *)((int)afStack_54 + uVar2));
    uVar2 = uVar2 + 0x10;
  } while (uVar2 < 0x40);
  afStack_94[0] = ((float)(int)param_1[0xe] - 1.0) + 0.1;
  afStack_94[2] = ((float)(int)param_1[0xf] - 1.0) + 0.1;
  fStack_7c = (float)(int)param_1[0xd] - 0.1;
  fStack_74 = (float)(int)param_1[0xc] - 0.1;
  uVar2 = 0;
  afStack_94[3] = afStack_94[0];
  fStack_84 = afStack_94[0];
  fStack_80 = afStack_94[1];
  fStack_78 = afStack_94[0];
  fStack_70 = afStack_94[1];
  fStack_6c = fStack_7c;
  fStack_68 = fStack_74;
  fStack_64 = fStack_74;
  fStack_60 = afStack_94[1];
  fStack_5c = afStack_94[2];
  fStack_58 = fStack_74;
  do {
    FUN_00ab7040(*(void **)((int)this + 4),(float *)((int)afStack_94 + uVar2),
                 (float *)((int)afStack_d4 + uVar2));
    uVar2 = uVar2 + 0x10;
  } while (uVar2 < 0x40);
  FUN_0076c100(param_2,param_1);
  *(undefined4 *)((int)param_2 + 0x6c) = param_1[0x10];
  FUN_0076c100((void *)((int)param_2 + 0x3c),afStack_d4);
  FUN_0076c100((void *)((int)param_2 + 0x48),auStack_c4);
  FUN_0076c100((void *)((int)param_2 + 0x54),auStack_b4);
  FUN_0076c100((void *)((int)param_2 + 0x60),auStack_a4);
  FUN_0076c100((void *)((int)param_2 + 0xc),afStack_54);
  FUN_0076c100((void *)((int)param_2 + 0x18),auStack_44);
  FUN_0076c100((void *)((int)param_2 + 0x24),auStack_34);
  FUN_0076c100((void *)((int)param_2 + 0x30),auStack_24);
  *(uint *)((int)param_2 + 0x70) = param_1[6] & ((int)param_1[6] < 0) - 1;
  *(undefined4 *)((int)param_2 + 0x78) = param_1[0x12];
  *(undefined4 *)((int)param_2 + 0x7c) = param_1[0x13];
  return;
}

