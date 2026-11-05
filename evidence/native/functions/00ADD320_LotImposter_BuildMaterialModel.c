/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 authored-lot representations comparison): Analyst actual model/material
   producer. ECX LOD owner plus output model-pointer address, creator-list pointer and shader hash,
   RET0C. Allocate2E0 builder; null allocation writes output null and returns fullEAX0; main success
   final path sets AL1 only. Builder flags/declaration/state are original. Two passes select normal
   or alternate imposterTexture/AOandSI keys from owner+58/+70 versus+A0/+B8; water key+88 is always
   supplied, optional ImpostorDetailTexture parsed as DDS00B2D882, diffuse four ones and original
   houseboat flag are appended. Actual names are hashed lowercased FNV1; imposterTexture=BDCF71C5,
   AOandSI=15C9D298, water=BF3FB9FA. Supplied shader hash is consumed by6D44C0. Walk actual creator
   vector and invoke each virtual18 with builder, finalize pass and builder; no C# payload-layout or
   every generated UV is established by these virtual calls. Function has two owned ranges with six
   nonowned alignment bytes in envelope; preserve all actual C/ASM and original bytes. Current
   source only acquires authored results, does not reimplement this bake. */

undefined4 __thiscall
LotImposter_BuildMaterialModel(void *this,int *param_1,int *param_2,undefined4 param_3)

{
  int *piVar1;
  bool bVar2;
  void *pvVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  undefined4 uVar7;
  uint uVar8;
  uint uVar9;
  undefined4 uVar10;
  float *pfVar11;
  undefined4 uVar12;
  undefined4 uVar13;
  undefined4 uVar14;
  char local_49;
  uint local_48;
  undefined4 local_44;
  uint local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  float local_30;
  float local_2c;
  float local_28;
  float local_24;
  int local_20 [8];
  
  pvVar3 = (void *)FUN_004e4500(0x2e0,"Lot/LODCreationManager/ModelBuilder",0);
  if (pvVar3 == (void *)0x0) {
    iVar4 = 0;
  }
  else {
    iVar4 = FUN_006d3b70(pvVar3,0);
  }
  piVar1 = param_1;
  *param_1 = iVar4;
  if (iVar4 != 0) {
    *(undefined1 *)(iVar4 + 0x2c0) = 1;
    *(undefined1 *)(*param_1 + 0x2c1) = 1;
    pvVar3 = (void *)*param_1;
    param_1 = (int *)CONCAT31(param_1._1_3_,1);
    FUN_006d6370(pvVar3,2,(undefined1 *)&param_1);
    FUN_006d0ca0((void *)*piVar1,0,0,DAT_00fbf00c);
    FUN_006d0ca0((void *)*piVar1,1,DAT_00fcc6f4,_DAT_01069360);
    FUN_006d7330(*piVar1);
    FUN_006d4360((void *)*piVar1,0,2,0);
    FUN_006d4360((void *)*piVar1,1,5,0);
    FUN_006d4360((void *)*piVar1,2,1,0);
    FUN_006d5fe0(*piVar1);
    local_30 = FLOAT_00f998f8;
    local_2c = FLOAT_00f998f8;
    local_28 = FLOAT_00f998f8;
    local_24 = FLOAT_00f998f8;
    local_48 = 0;
    do {
      uVar9 = local_48;
      uVar8 = 0;
      FUN_00799680(local_20);
      uVar12 = 0;
      if (uVar9 == 0) {
        uVar10 = *(undefined4 *)((int)this + 0x58);
        uVar7 = *(undefined4 *)((int)this + 0x5c);
        uVar14 = *(undefined4 *)((int)this + 0x60);
        uVar13 = *(undefined4 *)((int)this + 100);
        uVar5 = HashLowercasedCStringFNV1("imposterTexture");
        MaterialParams_AppendTextureKey(local_20,uVar5,uVar10,uVar7,uVar14,uVar13,uVar12);
        uVar12 = *(undefined4 *)((int)this + 0x70);
        uVar10 = *(undefined4 *)((int)this + 0x74);
        uVar7 = *(undefined4 *)((int)this + 0x78);
        uVar14 = *(undefined4 *)((int)this + 0x7c);
      }
      else {
        uVar10 = *(undefined4 *)((int)this + 0xa0);
        uVar7 = *(undefined4 *)((int)this + 0xa4);
        uVar14 = *(undefined4 *)((int)this + 0xa8);
        uVar13 = *(undefined4 *)((int)this + 0xac);
        uVar5 = HashLowercasedCStringFNV1("imposterTexture");
        MaterialParams_AppendTextureKey(local_20,uVar5,uVar10,uVar7,uVar14,uVar13,uVar12);
        uVar12 = *(undefined4 *)((int)this + 0xb8);
        uVar10 = *(undefined4 *)((int)this + 0xbc);
        uVar7 = *(undefined4 *)((int)this + 0xc0);
        uVar14 = *(undefined4 *)((int)this + 0xc4);
      }
      uVar13 = 0;
      uVar5 = HashLowercasedCStringFNV1("imposterTextureAOandSI");
      MaterialParams_AppendTextureKey(local_20,uVar5,uVar12,uVar10,uVar7,uVar14,uVar13);
      uVar12 = *(undefined4 *)((int)this + 0x88);
      uVar10 = *(undefined4 *)((int)this + 0x8c);
      uVar13 = 0;
      uVar7 = *(undefined4 *)((int)this + 0x90);
      uVar14 = *(undefined4 *)((int)this + 0x94);
      uVar5 = HashLowercasedCStringFNV1("imposterTextureWater");
      MaterialParams_AppendTextureKey(local_20,uVar5,uVar12,uVar10,uVar7,uVar14,uVar13);
      local_40 = 0;
      local_3c = 0;
      local_38 = 0;
      local_34 = 0;
      bVar2 = ResourceKey_ParseWideName
                        (&local_40,(ushort *)L"ImpostorDetailTexture",0xb2d882,0,(void *)0x0,0);
      if (bVar2) {
        uVar14 = 0;
        uVar5 = local_40;
        uVar12 = local_3c;
        uVar10 = local_38;
        uVar7 = local_34;
        uVar6 = HashLowercasedCStringFNV1("ImpostorDetailTexture");
        MaterialParams_AppendTextureKey(local_20,uVar6,uVar5,uVar12,uVar10,uVar7,uVar14);
      }
      iVar4 = 4;
      pfVar11 = &local_30;
      uVar5 = HashLowercasedCStringFNV1("diffuse");
      FUN_007999d0(local_20,uVar5,pfVar11,iVar4);
      if ((*(int *)((int)this + 4) != 0) && (*(char *)(*(int *)((int)this + 4) + 0x4bc) != '\0')) {
        iVar4 = 1;
        pfVar11 = &FLOAT_00f998f8;
        uVar5 = HashLowercasedCStringFNV1("isOnHouseboat");
        FUN_007999d0(local_20,uVar5,pfVar11,iVar4);
      }
      FUN_006d44c0((void *)*piVar1,param_3,local_20);
      param_1 = (int *)CONCAT31(param_1._1_3_,1);
      local_49 = '\x01';
      local_44 = 3;
      FUN_006d73b0((void *)*piVar1,&local_44,&local_49,(undefined1 *)&param_1,uVar9,0);
      uVar9 = param_2[1] - *param_2 >> 2;
      if (uVar9 != 0) {
        do {
          (**(code **)(**(int **)(*param_2 + uVar8 * 4) + 0x18))(*piVar1);
          uVar8 = uVar8 + 1;
        } while (uVar8 < uVar9);
      }
      FUN_006d1a70(*piVar1);
      FUN_007996b0(local_20);
      local_48 = local_48 + 1;
    } while (local_48 < 2);
    uVar12 = FUN_006d7320(*piVar1);
    return CONCAT31((int3)((uint)uVar12 >> 8),1);
  }
  return 0;
}

