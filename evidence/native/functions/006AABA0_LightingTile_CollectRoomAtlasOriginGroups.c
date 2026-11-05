/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Static PC1.67: ECX tile, stack+4 room DWORD, stack+8 output vector, RET8; no semantic return
   asserted. Clears vector end to begin. Ascending unvisited room-owned start i, then ascending j>=i
   compares both UInt16 stored origin words, rejects visited, and does not repeat room-membership
   test. Appends48-byte origin/offset records, growing vector when required. Offset rows use live
   global01159B70; full sampler/global initializer and host mask-Span ABI remain separate. */

void __thiscall
LightingTile_CollectRoomAtlasOriginGroups(void *this,int param_1,undefined4 *param_2)

{
  ushort uVar1;
  int iVar2;
  uint *puVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  ushort *puVar7;
  uint uVar8;
  ushort *puVar9;
  float fVar10;
  char local_a0 [4];
  uint local_9c;
  ushort *local_98;
  uint local_94;
  undefined4 local_90;
  undefined4 uStack_8c;
  undefined4 uStack_88;
  undefined4 uStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  int local_70 [4];
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  int local_50 [5];
  uint local_3c;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  fVar10 = DAT_01159b70;
  param_2[1] = *param_2;
  puVar9 = (ushort *)((int)this + 0x8a);
  local_70[0] = 0;
  local_70[1] = 1;
  local_70[2] = 0;
  local_70[3] = 0xffffffff;
  local_50[0] = -1;
  local_50[1] = 0;
  local_50[2] = 1;
  local_50[3] = 0;
  local_a0[0] = '\0';
  local_a0[1] = 0;
  local_a0[2] = 0;
  local_a0[3] = 0;
  local_9c = 0;
  do {
    if ((local_a0[local_9c] == '\0') && (*(int *)(puVar9 + -7) == param_1)) {
      uStack_84 = 0;
      uStack_88 = 0;
      uStack_8c = 0;
      local_90 = 0;
      local_30 = 0.0;
      fStack_2c = 0.0;
      fStack_28 = 0.0;
      fStack_24 = 0.0;
      local_20 = local_30;
      fStack_1c = fStack_2c;
      fStack_18 = fStack_28;
      fStack_14 = fStack_24;
      if (local_9c < 4) {
        uVar1 = *puVar9;
        local_94 = (uint)uVar1;
        puVar7 = puVar9 + 1;
        uVar8 = local_9c;
        do {
          if (((uVar1 == puVar7[-1]) && (puVar9[1] == *puVar7)) && (local_a0[uVar8] == '\0')) {
            iVar4 = local_50[uVar8];
            iVar2 = local_70[uVar8];
            local_a0[uVar8] = '\x01';
            iVar6 = iVar4;
            if (iVar4 == 0) {
              iVar6 = -iVar2;
            }
            iVar5 = iVar2;
            if (iVar2 == 0) {
              iVar5 = -iVar4;
            }
            local_80 = (float)iVar5;
            fStack_7c = (float)iVar6;
            local_30 = local_80 * fVar10 + local_30;
            fStack_2c = fStack_7c * fVar10 + fStack_2c;
            fStack_28 = local_80 * fVar10 + fStack_28;
            fStack_24 = local_80 * fVar10 + fStack_24;
            iVar6 = iVar4;
            if (iVar4 == 0) {
              iVar6 = iVar2;
            }
            if (iVar2 != 0) {
              iVar4 = iVar2;
            }
            local_60 = (float)iVar4;
            fStack_5c = (float)iVar6;
            local_20 = local_60 * fVar10 + local_20;
            fStack_1c = fStack_5c * fVar10 + fStack_1c;
            fStack_18 = local_60 * fVar10 + fStack_18;
            fStack_14 = local_60 * fVar10 + fStack_14;
            fStack_78 = local_80;
            fStack_74 = local_80;
            fStack_58 = local_60;
            fStack_54 = local_60;
          }
          uVar8 = uVar8 + 1;
          puVar7 = puVar7 + 10;
        } while (uVar8 < 4);
      }
      local_50[4] = (int)*puVar9;
      local_3c = (uint)puVar9[1];
      puVar3 = (uint *)param_2[1];
      if (puVar3 < (uint *)param_2[2]) {
        param_2[1] = puVar3 + 0xc;
        if (puVar3 != (uint *)0x0) {
          *puVar3 = local_50[4];
          puVar3[1] = local_3c;
          puVar3[4] = (uint)local_30;
          puVar3[5] = (uint)fStack_2c;
          puVar3[6] = (uint)fStack_28;
          puVar3[7] = (uint)fStack_24;
          puVar3[8] = (uint)local_20;
          puVar3[9] = (uint)fStack_1c;
          puVar3[10] = (uint)fStack_18;
          puVar3[0xb] = (uint)fStack_14;
        }
      }
      else {
        local_98 = puVar9;
        FUN_006a1d30(param_2,puVar3,local_50 + 4);
        fVar10 = DAT_01159b70;
      }
    }
    local_9c = local_9c + 1;
    puVar9 = puVar9 + 10;
  } while (local_9c < 4);
  return;
}

