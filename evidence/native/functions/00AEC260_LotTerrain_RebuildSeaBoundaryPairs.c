/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction persistence contract): ECX terrain. Clear six-byte pair vector.
   Only if lot+4B0 enabled, scan X0..width-1 with Z0..depth-1 fastest using signed-byte iterator.
   Local sea level from AB1A90. For each height strictly above sea, test eight neighbors in authored
   order (+1,0),(+1,+1),(0,+1),(-1,+1),(-1,0),(-1,-1),(0,-1),(+1,-1), including edge vertices. First
   in-bounds height<=sea yields source/neighbor triples, both level0. Native unordered
   floating-point behavior must be read from instructions; do not invent a geometric shoreline
   approximation. */

void __fastcall LotTerrain_RebuildSeaBoundaryPairs(int param_1)

{
  int iVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined3 uVar4;
  bool bVar5;
  char cVar6;
  int iVar7;
  byte bVar8;
  int iVar9;
  int iVar10;
  float10 fVar11;
  char local_70;
  char local_6f;
  undefined1 local_6e;
  char local_6c;
  undefined1 local_6b;
  undefined1 local_6a;
  undefined2 local_68;
  int local_64;
  float local_60;
  int local_5c;
  char *local_58;
  undefined2 local_52;
  char cStack_50;
  char cStack_4f;
  byte bStack_4e;
  undefined1 uStack_4d;
  undefined1 local_4c [12];
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  *(undefined4 *)(param_1 + 0x158) = *(undefined4 *)(param_1 + 0x154);
  iVar1 = *(int *)(param_1 + 4);
  if (*(char *)(iVar1 + 0x4b0) != '\0') {
    local_6c = '\0';
    local_6b = 0;
    local_6a = 0;
    local_6f = (char)*(undefined4 *)(iVar1 + 0x178) + -1;
    local_70 = *(char *)(iVar1 + 0x174) + -1;
    local_6e = 0;
    local_64 = param_1;
    FUN_00af6590(local_4c,&local_6c,&local_70);
    fVar11 = Lot_GetLocalSeaLevel(*(int **)(param_1 + 4));
    local_60 = (float)fVar11;
    bVar5 = TilePartRectangleIterator_IsDone((int)local_4c);
    while (!bVar5) {
      local_58 = (char *)TilePartRectangleIterator_Current((int)local_4c);
      local_5c = *(int *)(param_1 + 4);
      iVar1 = *(int *)(local_5c + 0x290);
      iVar10 = *(int *)(iVar1 + 0x24);
      if (local_60 <
          *(float *)(*(int *)(iVar10 + 0x10) +
                    (((*(int *)(iVar1 + 0x18) - *(int *)(iVar1 + 0x10)) * *(int *)(iVar10 + 4) +
                     (int)*local_58) * *(int *)(iVar10 + 8) + (int)local_58[1]) * 4)) {
        iVar10 = 0;
        local_40 = 1;
        local_3c = 1;
        local_38 = 0;
        local_34 = 0xffffffff;
        local_30 = 0xffffffff;
        local_2c = 0xffffffff;
        local_28 = 0;
        local_24 = 1;
        local_20 = 0;
        local_1c = 0xffffffff;
        local_18 = 0xffffffff;
        local_14 = 0xffffffff;
        local_10 = 0;
        local_c = 1;
        local_8 = 1;
        local_4 = 1;
        do {
          cVar6 = *(char *)((int)&local_40 + iVar10) + *local_58;
          iVar7 = (int)cVar6;
          bVar8 = *(char *)((int)&local_20 + iVar10) + local_58[1];
          local_68 = CONCAT11(bVar8,cVar6);
          iVar9 = (int)(char)bVar8;
          param_1 = local_64;
          if ((((-1 < iVar7) && (iVar7 <= *(int *)(local_5c + 0x174))) && (-1 < iVar9)) &&
             ((iVar9 <= *(int *)(local_5c + 0x178) &&
              (iVar2 = *(int *)(iVar1 + 0x24),
              *(float *)(*(int *)(iVar2 + 0x10) +
                        (((*(int *)(iVar1 + 0x18) - *(int *)(iVar1 + 0x10)) * *(int *)(iVar2 + 4) +
                         iVar7) * *(int *)(iVar2 + 8) + iVar9) * 4) <= local_60)))) {
            local_52 = *(undefined2 *)local_58;
            cStack_50 = local_58[2];
            uVar4 = *(undefined3 *)local_58;
            uStack_4d = 0;
            puVar3 = *(undefined4 **)(local_64 + 0x158);
            cStack_4f = cVar6;
            bStack_4e = bVar8;
            if (puVar3 < *(undefined4 **)(local_64 + 0x15c)) {
              *(int *)(local_64 + 0x158) = (int)puVar3 + 6;
              if (puVar3 != (undefined4 *)0x0) {
                *puVar3 = CONCAT13(cVar6,uVar4);
                *(ushort *)(puVar3 + 1) = (ushort)bVar8;
              }
            }
            else {
              FUN_00aeb900((void *)(local_64 + 0x154),puVar3,(undefined4 *)&local_52);
            }
            goto LAB_00aec451;
          }
          iVar10 = iVar10 + 4;
        } while (iVar10 < 0x20);
      }
LAB_00aec451:
      FUN_00af6610(local_4c);
      bVar5 = TilePartRectangleIterator_IsDone((int)local_4c);
    }
  }
  return;
}

