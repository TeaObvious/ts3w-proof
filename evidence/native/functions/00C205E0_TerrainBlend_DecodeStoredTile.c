/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 sparse blend instruction contract. thiscall owner ECX plusSEVEN stack slots
   reader,layer,kindByte,tileIndex,blockSide,coarseColumns,scratch;RET1C. kind0 reads byte intensity
   payload, kind1 reads one uniform byte, other kindsALfalse. blockSide>>4<=1 path reads256 bytes or
   stores one byte directly. Larger blocks require scratch/nonzero coarseColumns; unsigned
   index/coarseColumns and remainder locate origin, blockSide>>4 subdivisions. Full payload
   blockSide squared is split16x16; uniform subtiles stored inline0..255, others256byte allocations
   row-copied. No bitplane expansion/blur/layer-name ranking here. Stream wrapper status remains
   separate from helper AL1; allocation/overflow/array containment not generally safe. Decompiled
   pointer-shaped loop indices are register reuse, not pointers from input. This is a READER, not
   writer. */

bool __thiscall
TerrainBlend_DecodeStoredTile
          (void *this,void *reader,void *layer,uchar kind,uint tileIndex,uint blockSide,
          uint coarseColumns,uchar *scratch)

{
  int *piVar1;
  bool bVar2;
  uint uVar3;
  uint uVar4;
  uchar *puVar5;
  int *_Dst;
  int *piVar6;
  int iVar7;
  uint uVar8;
  uchar *puVar9;
  uchar *puVar10;
  void *pvVar11;
  uchar *puVar12;
  uchar *puVar13;
  uchar *puVar14;
  uchar *puVar15;
  uchar *puVar16;
  int local_28;
  uchar *local_1c;
  uchar *local_14;
  
  uVar8 = blockSide;
  puVar10 = (uchar *)(blockSide >> 4);
  if (puVar10 < (uchar *)0x2) {
    if (kind == '\0') {
      pvVar11 = TerrainBlendLayer_GetOrMaterializeTile(layer,tileIndex,false);
      bVar2 = Stream_ReadExactBytes(*(void **)((int)reader + 8),pvVar11,0x100);
      StreamReader_AccumulateStatus(reader,bVar2);
      return true;
    }
    if (kind == '\x01') {
      bVar2 = Stream_ReadByte(*(void **)((int)reader + 8),&kind);
      StreamReader_AccumulateStatus(reader,bVar2);
      TerrainBlendLayer_ReplaceEncodedTile(layer,tileIndex,(uint)kind);
      return true;
    }
  }
  else if ((scratch != (uchar *)0x0) && (coarseColumns != 0)) {
    uVar3 = tileIndex / coarseColumns;
    iVar7 = tileIndex - uVar3 * coarseColumns;
    if (kind == '\0') {
      StreamReader_ReadBytesInto(reader,scratch,blockSide * blockSide);
      local_14 = (uchar *)0x0;
      if (puVar10 != (uchar *)0x0) {
        coarseColumns = iVar7 * (int)puVar10;
        tileIndex = uVar3 * (int)puVar10;
        reader = (void *)0x0;
        local_28 = 0;
        puVar12 = scratch;
        do {
          puVar13 = local_14 + tileIndex;
          local_1c = (uchar *)0x0;
          puVar15 = puVar12;
          do {
            puVar14 = local_1c + *(int *)((int)this + 0x10) * (int)puVar13 + coarseColumns;
            kind = *puVar15;
            puVar16 = (uchar *)((int)local_1c * 0x10);
            puVar9 = puVar12;
            pvVar11 = reader;
            if (reader < (void *)((int)reader + 0x10U)) {
              do {
                puVar5 = puVar16;
                if (puVar16 < puVar15 + (0x10 - (int)puVar12)) {
LAB_00c20797:
                  if (puVar9[(int)puVar5] == kind) goto code_r0x00c207a0;
                  _Dst = *(int **)(*(int *)layer + (int)puVar14 * 4);
                  if ((_Dst == (int *)0x0) || (_Dst < (int *)0x100)) {
                    kind = (uchar)_Dst;
                    _Dst = FUN_004e6f20(DAT_011cc864,0x100,0);
                    if (_Dst != (int *)0x0) {
                      memset(_Dst,(uint)kind,0x100);
                    }
                    *(int **)(*(int *)layer + (int)puVar14 * 4) = _Dst;
                  }
                  piVar6 = (int *)(puVar16 + local_28 + (int)scratch);
                  iVar7 = 0x10;
                  do {
                    *_Dst = *piVar6;
                    _Dst[1] = piVar6[1];
                    _Dst[2] = piVar6[2];
                    piVar1 = piVar6 + 3;
                    piVar6 = (int *)((int)piVar6 + blockSide);
                    _Dst[3] = *piVar1;
                    _Dst = _Dst + 4;
                    iVar7 = iVar7 + -1;
                  } while (iVar7 != 0);
                  goto LAB_00c2087b;
                }
LAB_00c207ab:
                pvVar11 = (void *)((int)pvVar11 + 1);
                puVar9 = puVar9 + blockSide;
              } while (pvVar11 < (void *)((int)reader + 0x10U));
            }
            uVar3 = *(uint *)(*(int *)layer + (int)puVar14 * 4);
            if (uVar3 != 0) {
              if (0xff < uVar3) {
                FUN_004e5e70(DAT_011cc864,uVar3);
              }
              *(undefined4 *)(*(int *)layer + (int)puVar14 * 4) = 0;
            }
            *(uint *)(*(int *)layer + (int)puVar14 * 4) = (uint)kind;
LAB_00c2087b:
            local_1c = local_1c + 1;
            puVar15 = puVar15 + 0x10;
          } while (local_1c < puVar10);
          local_28 = local_28 + uVar8 * 0x10;
          local_14 = local_14 + 1;
          reader = (void *)((int)reader + 0x10);
          puVar12 = puVar12 + uVar8 * 0x10;
          if (puVar10 <= local_14) {
            return true;
          }
        } while( true );
      }
    }
    else {
      if (kind != '\x01') {
        return false;
      }
      StreamReader_ReadByteInto(reader,&kind);
      scratch = (uchar *)0x0;
      if (puVar10 != (uchar *)0x0) {
        uVar8 = iVar7 * (int)puVar10;
        tileIndex = uVar3 * (int)puVar10;
        coarseColumns = uVar8;
        do {
          puVar12 = scratch + tileIndex;
          puVar15 = (uchar *)0x0;
          do {
            uVar4 = (uint)kind;
            puVar13 = puVar15 + *(int *)((int)this + 0x10) * (int)puVar12 + uVar8;
            uVar3 = *(uint *)(*(int *)layer + (int)puVar13 * 4);
            if (uVar3 != 0) {
              if (0xff < uVar3) {
                FUN_004e5e70(DAT_011cc864,uVar3);
                uVar8 = coarseColumns;
              }
              *(undefined4 *)(*(int *)layer + (int)puVar13 * 4) = 0;
            }
            puVar15 = puVar15 + 1;
            *(uint *)(*(int *)layer + (int)puVar13 * 4) = uVar4;
          } while (puVar15 < puVar10);
          scratch = scratch + 1;
        } while (scratch < puVar10);
        return true;
      }
    }
    return true;
  }
  return false;
code_r0x00c207a0:
  puVar5 = puVar5 + 1;
  if (puVar15 + (0x10 - (int)puVar12) <= puVar5) goto LAB_00c207ab;
  goto LAB_00c20797;
}

