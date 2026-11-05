/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Removing unreachable block (ram,0x1025e4ad) */
/* WARNING: Removing unreachable block (ram,0x1025e4b0) */
/* WARNING: Removing unreachable block (ram,0x1025e4c0) */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Replaces repeated emitted grid identities with compact
   vertex indices and writes one float vertex per unique identity. Uses 0x1025E130 for X/Z and raw
   uint16 sample times optimizer height quantum for height. Allocation and hash ordering are
   intermediate representation details; subsequent first-index remap defines final packed vertex
   order. Analyst-assigned helper names are not recovered original symbols. Original instructions
   govern decompiler ABI/register artifacts. */

void __thiscall CAW_CompactAdaptiveTerrainVertexIdentities(void *this,int *param_1,int *param_2)

{
  undefined4 *puVar1;
  uint *puVar2;
  int iVar3;
  uint *puVar4;
  int *piVar5;
  uint uVar6;
  uint uVar7;
  uint *puVar8;
  uint uVar9;
  int *piVar10;
  uint local_68;
  uint *local_64;
  int local_60;
  int iStack_5c;
  float fStack_58;
  int iStack_54;
  uint local_50;
  undefined4 local_4c;
  char *local_48;
  int local_44;
  float local_40 [4];
  undefined1 local_30 [4];
  uint *local_2c;
  uint local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  uint *local_14;
  
  local_14 = &local_50;
  uVar7 = 0;
  local_20 = DAT_10acb0d4;
  uVar6 = 0;
  uVar9 = param_1[1] - *param_1 >> 2;
  local_50 = 0;
  local_4c = 0;
  local_48 = "Terrain/Optimizer";
  local_44 = 0x553;
  local_1c = _DAT_10aadffc;
  local_28 = 1;
  local_2c = &DAT_10c571f8;
  local_24 = 0;
  local_18 = 0;
  if (uVar9 != 0) {
    do {
      local_68 = *(uint *)(*param_1 + uVar6 * 4);
      FUN_1025e1c0(local_30,&local_60,&local_68);
      if (fStack_58._0_1_ != '\0') {
        *(uint *)(local_60 + 4) = uVar7;
        uVar7 = uVar7 + 1;
      }
      *(undefined4 *)(*param_1 + uVar6 * 4) = *(undefined4 *)(local_60 + 4);
      uVar6 = uVar6 + 1;
    } while (uVar6 < uVar9);
  }
  puVar1 = (undefined4 *)param_2[1];
  uVar6 = (int)puVar1 - *param_2 >> 4;
  if (uVar6 < uVar7) {
    FUN_10011d80(param_2,puVar1,(undefined4 *)(uVar7 - uVar6),&local_60);
  }
  else {
    param_2[1] = param_2[1] + ((int)((int)puVar1 - (uVar7 * 0x10 + *param_2)) >> 4) * -0x10;
  }
  puVar8 = (uint *)*local_2c;
  local_64 = local_2c;
  if (puVar8 == (uint *)0x0) {
    local_64 = local_2c + 1;
    uVar6 = local_2c[1];
    while (uVar6 == 0) {
      local_64 = local_64 + 1;
      uVar6 = *local_64;
    }
    puVar8 = (uint *)*local_64;
  }
  puVar2 = (uint *)local_2c[local_28];
  puVar4 = local_2c;
  uVar6 = local_28;
  while (local_2c = puVar4, local_28 = uVar6, puVar8 != puVar2) {
    piVar10 = (int *)(puVar8[1] * 0x10 + *param_2);
    uVar6 = *puVar8;
    piVar5 = (int *)CAW_DecodeTerrainVertexIdentity(this,local_40,uVar6);
    local_60 = *piVar5;
    iStack_5c = piVar5[1];
    iVar3 = piVar5[2];
    iStack_54 = piVar5[3];
    *piVar10 = local_60;
    piVar10[1] = iStack_5c;
    piVar10[2] = iVar3;
    piVar10[3] = iStack_54;
    fStack_58 = (float)*(ushort *)(**(int **)this + uVar6 * 4) * *(float *)((int)this + 0x30);
    *piVar10 = local_60;
    piVar10[1] = iStack_5c;
    piVar10[2] = (int)fStack_58;
    piVar10[3] = iStack_54;
    for (puVar8 = (uint *)puVar8[2]; puVar4 = local_2c, uVar6 = local_28, puVar8 == (uint *)0x0;
        puVar8 = (uint *)*puVar8) {
      puVar8 = local_64 + 1;
      local_64 = local_64 + 1;
    }
  }
  uVar7 = 0;
  if (uVar6 != 0) {
    do {
      puVar8 = (uint *)puVar4[uVar7];
      while (puVar8 != (uint *)0x0) {
        puVar2 = (uint *)puVar8[2];
        *puVar8 = *local_14;
        *local_14 = (uint)puVar8;
        puVar8 = puVar2;
      }
      puVar4[uVar7] = 0;
      uVar7 = uVar7 + 1;
    } while (uVar7 < uVar6);
  }
  local_24 = 0;
  local_68 = uVar6;
  if (1 < local_28) {
    if ((local_28 & 0x3fffffff) == 2) {
      *local_2c = *local_14;
      *local_14 = (uint)local_2c;
    }
    else {
      FUN_1091a760(DAT_10cabc54,(int)local_2c);
    }
  }
  if (-1 < local_44) {
    pfnAPC_106b6a40();
  }
  FUN_105c04c0(&local_50);
  return;
}

