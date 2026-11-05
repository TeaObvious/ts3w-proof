/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: World_PickFloorAtWindowPoint. Export ordinal(s):
   1560. Entry VA: 0x10581300. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C09. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl World_PickFloorAtWindowPoint(int param_1,int param_2,void *param_3)

{
  void *this;
  char cVar1;
  int iVar2;
  uint uVar3;
  void *pvVar4;
  undefined3 extraout_var;
  undefined4 uVar5;
  float fVar6;
  undefined1 auVar7 [16];
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  undefined1 auVar12 [16];
  undefined1 in_XMM4 [16];
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  undefined4 uStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  float fStack_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float fStack_a0;
  undefined4 uStack_9c;
  float fStack_98;
  undefined4 uStack_94;
  float fStack_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float fStack_80;
  undefined4 uStack_7c;
  float fStack_78;
  undefined4 uStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  undefined1 auStack_60 [16];
  float afStack_50 [4];
  float fStack_40;
  undefined4 uStack_3c;
  float fStack_38;
  undefined4 uStack_34;
  
  iVar2 = FUN_104de3a0();
  iVar2 = FUN_109a5b50(iVar2);
  FUN_105c2650(iVar2,param_1,param_2,&fStack_70,&fStack_b0);
  this = DAT_10c700c4;
  fStack_90 = fStack_b0 - fStack_70;
  fStack_8c = fStack_ac - fStack_6c;
  fStack_88 = fStack_a8 - fStack_68;
  fVar6 = fStack_88 * fStack_88 + fStack_8c * fStack_8c + fStack_90 * fStack_90;
  auVar12._4_4_ = fVar6;
  auVar12._0_4_ = fVar6;
  auVar12._8_4_ = fVar6;
  auVar12._12_4_ = fVar6;
  auVar12 = rsqrtps(in_XMM4,auVar12);
  fVar8 = auVar12._0_4_;
  fVar9 = auVar12._4_4_;
  fVar10 = auVar12._8_4_;
  fVar11 = auVar12._12_4_;
  fVar8 = (DAT_10acb0d4 - fVar8 * fVar8 * fVar6) * _DAT_10b310ec * fVar8 + fVar8;
  fVar9 = (DAT_10acb0d4 - fVar9 * fVar9 * fVar6) * _DAT_10b310ec * fVar9 + fVar9;
  fVar10 = (DAT_10acb0d4 - fVar10 * fVar10 * fVar6) * _DAT_10b310ec * fVar10 + fVar10;
  fVar11 = (DAT_10acb0d4 - fVar11 * fVar11 * fVar6) * _DAT_10b310ec * fVar11 + fVar11;
  fStack_90 = ((DAT_10acb0d4 - fVar8 * fVar8 * fVar6) * _DAT_10b310ec * fVar8 + fVar8) * fStack_90;
  fStack_8c = ((DAT_10acb0d4 - fVar9 * fVar9 * fVar6) * _DAT_10b310ec * fVar9 + fVar9) * fStack_8c;
  fStack_88 = ((DAT_10acb0d4 - fVar10 * fVar10 * fVar6) * _DAT_10b310ec * fVar10 + fVar10) *
              fStack_88;
  fStack_84 = ((DAT_10acb0d4 - fVar11 * fVar11 * fVar6) * _DAT_10b310ec * fVar11 + fVar11) *
              (fStack_a4 - fStack_64);
  fStack_c0 = fStack_70;
  fStack_bc = fStack_6c;
  fStack_b8 = fStack_68;
  fStack_b4 = fStack_64;
  fStack_d0 = 0.0;
  FUN_1047dd40();
  uVar3 = FUN_1047e270(&fStack_c0,&fStack_b0,1,afStack_50,'\x01');
  cVar1 = (char)uVar3;
  while (cVar1 != '\0') {
    auVar7._0_4_ = (fStack_a8 - fStack_b8) * (fStack_a8 - fStack_b8) +
                   (fStack_ac - fStack_bc) * (fStack_ac - fStack_bc) +
                   (fStack_b0 - fStack_c0) * (fStack_b0 - fStack_c0);
    auVar7._4_4_ = auVar7._0_4_;
    auVar7._8_4_ = auVar7._0_4_;
    auVar7._12_4_ = auVar7._0_4_;
    auStack_60 = sqrtps(auVar7,auVar7);
    fVar6 = (float)auStack_60._0_4_ * afStack_50[0];
    pvVar4 = FUN_1023d070(this,fStack_40,fStack_38);
    if (pvVar4 != (void *)0x0) {
      cVar1 = FUN_100763c0((int)pvVar4);
      uVar3 = CONCAT31(extraout_var,cVar1);
      if (cVar1 == '\0') break;
      fStack_cc = DAT_10aae184;
      fStack_c8 = DAT_10aae184;
      uStack_c4 = 0;
      FUN_100a30e0(pvVar4,&fStack_40,&fStack_cc);
      uVar3 = FUN_100c5000(pvVar4,&fStack_cc,'\0','\0','\0');
      if ((char)uVar3 != '\0') {
        fStack_90 = fStack_40;
        fStack_8c = (float)uStack_3c;
        fStack_88 = fStack_38;
        fStack_84 = (float)uStack_34;
        fStack_80 = fStack_40;
        uStack_7c = uStack_3c;
        fStack_78 = fStack_38;
        uStack_74 = uStack_34;
        fStack_a0 = fStack_40;
        uStack_9c = uStack_3c;
        fStack_98 = fStack_38;
        uStack_94 = uStack_34;
        uVar5 = FUN_1055da40(param_3,fStack_40,uStack_3c,fStack_38);
        return CONCAT31((int3)((uint)uVar5 >> 8),1);
      }
    }
    fStack_d0 = fVar6 + fStack_d0 + DAT_10abe5cc;
    fStack_c0 = fStack_d0 * fStack_90 + fStack_70;
    fStack_bc = fStack_d0 * fStack_8c + fStack_6c;
    fStack_b8 = fStack_d0 * fStack_88 + fStack_68;
    fStack_b4 = fStack_d0 * fStack_84 + fStack_64;
    uVar3 = FUN_1047e270(&fStack_c0,&fStack_b0,1,afStack_50,'\x01');
    cVar1 = (char)uVar3;
  }
  return uVar3 & 0xffffff00;
}

