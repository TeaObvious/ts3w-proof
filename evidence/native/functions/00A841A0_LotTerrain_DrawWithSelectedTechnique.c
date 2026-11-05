/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67: Chooses named TerrainIndoor, TerrainHighNoSnowElev, TerrainHighInsideGreenhouse,
   TerrainLightNoSnowElev, TerrainFogNoSnowElev or TerrainLight_InsideGreenhouse under original lot
   flags, then invokes selected technique with actual terrain draw callback. Shader family name
   alone does not identify final pass state. */

void __thiscall
LotTerrain_DrawWithSelectedTechnique(void *this,int param_1,int param_2,void *param_3,void *param_4)

{
  uint *puVar1;
  int iVar2;
  int *piVar3;
  bool bVar4;
  bool bVar5;
  uint uVar6;
  int *piVar7;
  int iVar8;
  void *pvVar9;
  undefined3 extraout_var;
  int iVar10;
  byte bVar11;
  undefined4 extraout_EDX;
  uint uVar12;
  uint uVar13;
  Ts3SkinPostDefinition *pTVar14;
  char cVar15;
  byte bVar16;
  uint local_20;
  uint local_1c;
  void *local_c;
  int local_8;
  int local_4;
  
  pvVar9 = DAT_011d8530;
  if (*(int *)((int)this + 0x268) == *(int *)((int)this + 0x26c)) {
    return;
  }
  if (param_3 == (void *)0x0) {
    return;
  }
  if ((*(byte *)(param_2 + 0x20) & 1) == 0) {
    DAT_011ec2c5 = '\0';
  }
  else {
    iVar8 = *(int *)((int)this + 0x344);
    iVar2 = *(int *)((int)this + 0x340);
    uVar6 = *(int *)(param_2 + 0x18) - 1000;
    uVar13 = uVar6 * 4;
    if (uVar6 < (uint)(*(int *)((int)this + 0x324) - *(int *)((int)this + 800) >> 2)) {
      FUN_005f78c0(DAT_011d8530,DAT_011ec2bc,(int)this + 0x228);
      FUN_005f78c0(pvVar9,DAT_011ec2b8,*(int *)(*(int *)((int)this + 800) + uVar13));
      uVar6 = 0;
      do {
        if (((uVar13 < (uint)(iVar8 - iVar2 >> 2)) &&
            (puVar1 = (uint *)(*(int *)((int)this + 0x340) + uVar13 * 4), (*puVar1 & 3) == 0)) &&
           (uVar12 = *puVar1, uVar12 != 0)) {
          iVar10 = uVar12 + 0x28;
        }
        else {
          iVar10 = 0;
        }
        if (*(uint *)((int)&DAT_011ec2a8 + uVar6) < *(uint *)((int)pvVar9 + 8)) {
          piVar7 = (int *)(*(uint *)((int)&DAT_011ec2a8 + uVar6) * 0x10 + *(int *)((int)pvVar9 + 4))
          ;
          *piVar7 = *piVar7 + 1;
          *(undefined2 *)(piVar7 + 1) = *(undefined2 *)((int)pvVar9 + 0x12);
          piVar7[3] = iVar10;
        }
        uVar6 = uVar6 + 4;
        uVar13 = uVar13 + 1;
      } while (uVar6 < 0x10);
    }
    DAT_011ec2c5 = '\x01';
  }
  if (((*(byte *)(param_1 + 4) & 0x80) != 0) && (DAT_011ec2c5 != '\0')) {
    return;
  }
  iVar8 = Graphics_GetManagerSingleton();
  FUN_0060f2a0(iVar8);
  bVar11 = *(int *)(param_2 + 0x18) < 1;
  if ((bool)bVar11) {
    bVar16 = 0;
    pvVar9 = (void *)Graphics_GetManagerSingleton();
    RenderDevice_SetAlphaBlendByte(pvVar9,bVar16);
  }
  else {
    bVar16 = 1;
    pvVar9 = (void *)Graphics_GetManagerSingleton();
    RenderDevice_SetAlphaBlendByte(pvVar9,bVar16);
  }
  pvVar9 = (void *)Graphics_GetManagerSingleton();
  RenderDevice_SetDepthWriteByte(pvVar9,bVar11);
  if (*(char *)(*(int *)((int)this + 0x214) + 0x3d8) != '\0') {
    local_1c = CONCAT31(local_1c._1_3_,1);
    if (*(char *)(*(int *)((int)this + 0x214) + 0x3da) == '\0') goto LAB_00a84312;
  }
  local_1c = local_1c & 0xffffff00;
LAB_00a84312:
  piVar7 = *(int **)((int)this + 0x268);
  piVar3 = *(int **)((int)this + 0x26c);
  do {
    if (piVar7 == piVar3) {
      iVar8 = Graphics_GetManagerSingleton();
      FUN_00610330(iVar8);
      return;
    }
    uVar12 = *(uint *)(param_1 + 4) >> 7;
    bVar5 = FUN_00a9cf40(*(void **)((int)this + 0x218),*(uint *)(*piVar7 + 0x10));
    bVar11 = *(byte *)(param_2 + 0x20) >> 1 ^ *(byte *)(param_2 + 0x20);
    uVar6 = CONCAT31((int3)((uint)extraout_EDX >> 8),bVar11);
    uVar13 = local_20 >> 8;
    local_20 = CONCAT31((int3)uVar13,bVar5);
    if ((bVar11 & 4) == 0) {
LAB_00a8438b:
      iVar8 = *piVar7;
      pTVar14 = param_3;
      if (*(char *)(iVar8 + 2) == '\0') {
        if ((*(byte *)(param_2 + 0x20) & 1) != 0) {
          cVar15 = '\0';
          uVar13 = local_20;
          goto LAB_00a843fe;
        }
      }
      else {
        FUN_00a9d660(*(int *)((int)this + 0x218));
        if ((*(byte *)(param_2 + 0x20) & 1) == 0) {
          if (param_4 == (void *)0x0) goto LAB_00a8440e;
          if ((uVar12 & 1) == 0) {
            uVar13 = *(uint *)(param_2 + 0x1c);
            pTVar14 = param_4;
          }
          else {
            uVar13 = 0;
            if (*(char *)(iVar8 + 100) == '\0') {
              pTVar14 = param_4;
            }
          }
        }
        else {
          cVar15 = '\x01';
          uVar13 = local_1c;
          uVar6 = local_20;
LAB_00a843fe:
          bVar11 = Flags_SelectVariantIndex(uVar13,uVar6,cVar15,bVar5,(char)local_1c);
          uVar13 = CONCAT31(extraout_var,bVar11);
        }
        ShaderDefinition_SelectTechniqueOrdinal(pTVar14,uVar13);
      }
LAB_00a8440e:
      if (((*(byte *)(param_2 + 0x20) & 4) != 0) && ((*(byte *)(param_2 + 0x20) & 2) != 0)) {
        uVar13 = *(uint *)(param_2 + 0x1c);
        FUN_00a9d530(*(void **)((int)this + 0x218),*(undefined4 **)(iVar8 + 0x10));
        if (uVar13 != *(uint *)(param_2 + 0x1c)) {
          ShaderDefinition_SelectTechniqueOrdinal(param_3,uVar13);
        }
      }
      bVar4 = false;
      if ((((*(char *)(iVar8 + 0x65) == '\0') && (*(char *)(iVar8 + 0x66) == '\0')) || (bVar5)) ||
         (((*(byte *)(param_2 + 0x20) & 1) != 0 || ((uVar12 & 1) != 0)))) {
        if (((*(byte *)(param_2 + 0x20) & 3) == 0) && (bVar5)) {
          if ((_DAT_011ec2fc & 0x40) == 0) {
            _DAT_011ec2fc = _DAT_011ec2fc | 0x40;
            DAT_011ec2e0 = HashLowercasedCStringFNV1("TerrainIndoor");
          }
          uVar13 = DAT_011ec2e0;
          goto LAB_00a845c9;
        }
      }
      else {
        if ((_DAT_011ec2fc & 1) == 0) {
          _DAT_011ec2fc = _DAT_011ec2fc | 1;
          DAT_011ec2f8 = HashLowercasedCStringFNV1("TerrainHighNoSnowElev");
        }
        if ((_DAT_011ec2fc & 2) == 0) {
          _DAT_011ec2fc = _DAT_011ec2fc | 2;
          DAT_011ec2f4 = HashLowercasedCStringFNV1("TerrainHighInsideGreenhouse");
        }
        if ((_DAT_011ec2fc & 4) == 0) {
          _DAT_011ec2fc = _DAT_011ec2fc | 4;
          DAT_011ec2f0 = HashLowercasedCStringFNV1("TerrainLightNoSnowElev");
        }
        if ((_DAT_011ec2fc & 8) == 0) {
          _DAT_011ec2fc = _DAT_011ec2fc | 8;
          DAT_011ec2ec = HashLowercasedCStringFNV1("TerrainFogNoSnowElev");
        }
        if ((_DAT_011ec2fc & 0x10) == 0) {
          _DAT_011ec2fc = _DAT_011ec2fc | 0x10;
          _DAT_011ec2e8 = HashLowercasedCStringFNV1("NoSnowElevTechnique");
        }
        if ((_DAT_011ec2fc & 0x20) == 0) {
          _DAT_011ec2fc = _DAT_011ec2fc | 0x20;
          DAT_011ec2e4 = HashLowercasedCStringFNV1("TerrainLight_InsideGreenhouse");
        }
        if ((*(byte *)(param_2 + 0x20) & 2) == 0) {
          uVar13 = DAT_011ec2f4;
          if (*(char *)(iVar8 + 0x66) == '\0') {
            uVar13 = DAT_011ec2f8;
          }
        }
        else if (*(int *)(param_2 + 0x18) == 2000) {
          if (*(char *)(iVar8 + 0x66) == '\0') {
            uVar13 = DAT_011ec2f0;
          }
          else {
            uVar13 = DAT_011ec2e4;
          }
        }
        else {
          uVar13 = DAT_011ec2ec;
        }
LAB_00a845c9:
        uVar13 = FUN_0079a700(pTVar14,uVar13);
        ShaderDefinition_SelectTechniqueOrdinal(pTVar14,uVar13);
        bVar4 = true;
      }
      local_4 = param_1;
      local_c = this;
      local_8 = iVar8;
      ShaderDefinition_DrawSelectedTechnique
                (pTVar14,(Ts3SkinPostDrawCallback *)&LAB_00a82fa0,&local_c);
      if (bVar4) {
        ShaderDefinition_SelectTechniqueOrdinal(pTVar14,*(uint *)(param_2 + 0x1c));
      }
    }
    else {
      if (bVar5) {
        bVar11 = *(byte *)(param_2 + 0x20) & 4;
      }
      else {
        bVar11 = *(byte *)(param_2 + 0x20) & 8;
      }
      if (bVar11 != 0) goto LAB_00a8438b;
    }
    piVar7 = piVar7 + 1;
  } while( true );
}

