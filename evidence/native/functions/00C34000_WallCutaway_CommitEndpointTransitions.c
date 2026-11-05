/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. PC1.67 static instruction review. ECX cutaway manager. Commits old/new
   endpoint sets and posts affected wall endpoint state pairs through00C4BF90 (two orientations).
   Reviews transition publication only; upstream camera/room wall selection and node flags4/8/10
   semantics remain partially inferred. Original body has multiple ranges; canonical ASM includes
   its full envelope. */

void __thiscall WallCutaway_CommitEndpointTransitions(void *this)

{
  float *pfVar1;
  undefined4 *puVar2;
  char *pcVar3;
  void *pvVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  int iVar7;
  int *piVar8;
  int iVar9;
  byte *pbVar10;
  char *pcVar11;
  byte *pbVar12;
  int iVar13;
  char *pcVar14;
  byte secondUp;
  byte local_7c;
  undefined1 local_78;
  undefined1 local_74;
  undefined1 local_70;
  uint local_6c;
  byte *local_68;
  float local_64;
  float local_60;
  float local_5c;
  float local_58;
  byte *local_54;
  undefined1 local_50 [4];
  undefined1 uStack_4c;
  char local_4b;
  undefined1 local_48 [5];
  undefined1 local_43;
  float local_40 [4];
  float local_30;
  int local_2c;
  float local_28;
  float local_24;
  float local_1c;
  float local_18;
  int local_14;
  char *local_10;
  undefined4 local_c;
  
  iVar13 = *(int *)((int)this + 8);
  local_40[2] = (float)*(undefined4 *)(iVar13 + 0x278);
  iVar9 = *(int *)((int)this + 0x88);
  piVar8 = *(int **)(iVar9 + 8);
  local_40[0] = *(float *)(iVar13 + 0x270);
  local_40[1] = (float)*(undefined4 *)(iVar13 + 0x27c);
joined_r0x00c34045:
  if (piVar8 == (int *)(iVar9 + 4)) {
    if (*(char *)((int)this + 0xb2) == '\0') {
      FUN_00c32fb0(*(int *)((int)this + 0x88),*(int *)((int)this + 0x8c));
    }
    else {
      iVar13 = *(int *)((int)this + 0x8c);
      puVar6 = *(undefined4 **)(iVar13 + 0xc);
      while (puVar6 != (undefined4 *)0x0) {
        FUN_008b19b0((undefined4 *)*puVar6);
        puVar2 = (undefined4 *)puVar6[1];
        Memory_FreeIfNonNull(puVar6);
        puVar6 = puVar2;
      }
      iVar9 = iVar13 + 4;
      *(int *)iVar9 = iVar9;
      *(int *)(iVar13 + 8) = iVar9;
      *(undefined4 *)(iVar13 + 0xc) = 0;
      *(undefined1 *)(iVar13 + 0x10) = 0;
      *(undefined4 *)(iVar13 + 0x14) = 0;
      pcVar11 = *(char **)((int)this + 0x40);
      pcVar3 = *(char **)((int)this + 0x44);
      if (pcVar11 != pcVar3) {
        pcVar14 = pcVar11 + 5;
        do {
          local_14 = (int)pcVar14[-3];
          local_40[3] = (float)(int)*pcVar11;
          local_30 = (float)(int)pcVar14[-4];
          local_c = 1;
          local_6c = local_6c & 0xffffff00;
          local_1c = local_40[3];
          local_18 = local_30;
          local_10 = pcVar11;
          FUN_00c33390(*(void **)((int)this + 0x8c),(undefined4 *)local_48,&local_1c);
          local_28 = (float)(int)pcVar14[-2];
          local_14 = (int)*pcVar14;
          local_24 = (float)(int)pcVar14[-1];
          local_c = 2;
          local_1c = local_28;
          local_18 = local_24;
          local_10 = pcVar11;
          FUN_00c33390(*(void **)((int)this + 0x8c),(undefined4 *)local_50,&local_1c);
          pcVar11 = pcVar11 + 6;
          pcVar14 = pcVar14 + 6;
        } while (pcVar11 != pcVar3);
      }
      FUN_00c32fb0(*(int *)((int)this + 0x88),*(int *)((int)this + 0x8c));
      iVar13 = *(int *)((int)this + 0x88);
      for (piVar8 = *(int **)(iVar13 + 8); piVar8 != (int *)(iVar13 + 4);
          piVar8 = FUN_004e1030(piVar8)) {
        piVar8[8] = piVar8[8] | 4;
      }
    }
    iVar13 = *(int *)((int)this + 0x88);
    for (piVar8 = *(int **)(iVar13 + 8); piVar8 != (int *)(iVar13 + 4);
        piVar8 = FUN_004e1030(piVar8)) {
      if (((piVar8[8] & 4U) != 0) && ((piVar8[8] & 0x10U) == 0)) {
        pfVar1 = (float *)(piVar8 + 4);
        FUN_00c4d210(*(void **)((int)this + 8),pfVar1,'\0');
        iVar9 = 0;
LAB_00c342f0:
        iVar7 = WallGraph_FindVertexForCompactLocation((void *)local_40[iVar9],pfVar1);
        if (iVar7 == 0) goto code_r0x00c342fe;
        pbVar12 = *(byte **)(iVar7 + 8);
        local_54 = pbVar12;
        do {
          iVar9 = WallHalfEdge_ReadOppositeVertex(pbVar12);
          local_68 = (byte *)*pfVar1;
          local_4b = *(char *)(iVar9 + 6);
          local_2c = (int)local_4b;
          local_60 = (float)(int)*(char *)(iVar9 + 4);
          local_5c = (float)(int)*(char *)(iVar9 + 5);
          local_7c = (byte)(int)ROUND((float)local_68);
          local_64 = (float)piVar8[5];
          local_78 = (undefined1)(int)ROUND(local_64);
          local_50[2] = (undefined1)piVar8[6];
          local_50[1] = local_78;
          local_50[0] = local_7c;
          local_74 = (undefined1)(int)ROUND(local_60);
          local_70 = (undefined1)(int)ROUND(local_5c);
          stack0xffffffb3 = CONCAT11(local_70,local_74);
          local_40[3] = local_60;
          local_30 = local_5c;
          FUN_00c4d2d0(*(void **)((int)this + 8),local_50,'\0');
          pvVar4 = *(void **)((int)this + 0x88);
          FUN_00b03bc0(pvVar4,(int *)&local_58,local_40 + 3);
          if ((local_58 == (float)((int)pvVar4 + 4)) ||
             (local_6c = local_6c & 0xffffff00, (*(byte *)((int)local_58 + 0x20) & 0x10) != 0)) {
            local_6c = CONCAT31(local_6c._1_3_,1);
          }
          local_48._0_2_ = stack0xffffffb3;
          local_48[2] = local_4b;
          local_43 = local_50[2];
          local_48._3_2_ = local_50._0_2_;
          secondUp = (byte)local_6c;
          WallRender_PostEndpointVisibility(*(void **)((int)this + 8),local_50,0,secondUp);
          WallRender_PostEndpointVisibility(*(void **)((int)this + 8),local_48,secondUp,0);
          pbVar12 = *(byte **)(pbVar12 + 4);
        } while (pbVar12 != local_54);
      }
LAB_00c34452:
    }
    iVar13 = *(int *)((int)this + 0x8c);
    piVar8 = *(int **)(iVar13 + 8);
    while( true ) {
      if (piVar8 == (int *)(iVar13 + 4)) {
        uVar5 = *(undefined4 *)((int)this + 0x88);
        *(undefined4 *)((int)this + 0x88) = *(undefined4 *)((int)this + 0x8c);
        *(undefined4 *)((int)this + 0x8c) = uVar5;
        iVar13 = *(int *)((int)this + 0x88);
        puVar6 = *(undefined4 **)(iVar13 + 0xc);
        while (puVar6 != (undefined4 *)0x0) {
          FUN_008b19b0((undefined4 *)*puVar6);
          puVar2 = (undefined4 *)puVar6[1];
          Memory_FreeIfNonNull(puVar6);
          puVar6 = puVar2;
        }
        iVar9 = iVar13 + 4;
        *(int *)(iVar13 + 8) = iVar9;
        *(undefined4 *)(iVar13 + 0xc) = 0;
        *(undefined1 *)(iVar13 + 0x10) = 0;
        *(undefined4 *)(iVar13 + 0x14) = 0;
        *(int *)iVar9 = iVar9;
        return;
      }
      if (((piVar8[8] & 4U) != 0) && ((piVar8[8] & 0x10U) == 0)) break;
LAB_00c34614:
      piVar8 = FUN_004e1030(piVar8);
    }
    pfVar1 = (float *)(piVar8 + 4);
    FUN_00c4d210(*(void **)((int)this + 8),pfVar1,'\x01');
    iVar9 = 0;
LAB_00c344b0:
    iVar7 = WallGraph_FindVertexForCompactLocation((void *)local_40[iVar9],pfVar1);
    if (iVar7 == 0) goto code_r0x00c344be;
    pbVar12 = *(byte **)(iVar7 + 8);
    local_68 = pbVar12;
    do {
      iVar9 = WallHalfEdge_ReadOppositeVertex(pbVar12);
      local_54 = (byte *)*pfVar1;
      local_4b = *(char *)(iVar9 + 6);
      local_2c = (int)local_4b;
      local_5c = (float)(int)*(char *)(iVar9 + 4);
      local_60 = (float)(int)*(char *)(iVar9 + 5);
      local_6c = (uint)ROUND((float)local_54);
      local_58 = (float)piVar8[5];
      local_70 = (undefined1)(int)ROUND(local_58);
      local_50[2] = (undefined1)piVar8[6];
      local_50[1] = local_70;
      local_50[0] = (undefined1)local_6c;
      local_74 = (undefined1)(int)ROUND(local_5c);
      local_78 = (undefined1)(int)ROUND(local_60);
      pvVar4 = *(void **)((int)this + 0x88);
      stack0xffffffb3 = CONCAT11(local_78,local_74);
      local_40[3] = local_5c;
      local_30 = local_60;
      FUN_00b03bc0(pvVar4,(int *)&local_64,local_40 + 3);
      if ((local_64 == (float)((int)pvVar4 + 4)) || ((*(byte *)((int)local_64 + 0x20) & 0x10) != 0))
      {
        local_7c = 1;
        FUN_00c4d2d0(*(void **)((int)this + 8),local_50,'\x01');
      }
      else {
        local_7c = 0;
      }
      local_48._0_2_ = stack0xffffffb3;
      local_48[2] = local_4b;
      local_43 = local_50[2];
      local_48._3_2_ = local_50._0_2_;
      WallRender_PostEndpointVisibility(*(void **)((int)this + 8),local_50,1,local_7c);
      WallRender_PostEndpointVisibility(*(void **)((int)this + 8),local_48,local_7c,1);
      pbVar12 = *(byte **)(pbVar12 + 4);
    } while (pbVar12 != local_68);
    goto LAB_00c34614;
  }
  if ((*(byte *)(piVar8 + 8) & 8) == 0) {
    iVar13 = 0;
    do {
      iVar7 = WallGraph_FindVertexForCompactLocation((void *)local_40[iVar13],(float *)(piVar8 + 4))
      ;
      if (iVar7 != 0) {
        pbVar12 = *(byte **)(iVar7 + 8);
        pbVar10 = pbVar12;
        goto LAB_00c34081;
      }
      iVar13 = iVar13 + 1;
    } while (iVar13 < 3);
  }
  goto LAB_00c340e6;
code_r0x00c342fe:
  iVar9 = iVar9 + 1;
  if (2 < iVar9) goto LAB_00c34452;
  goto LAB_00c342f0;
code_r0x00c344be:
  iVar9 = iVar9 + 1;
  if (2 < iVar9) goto LAB_00c34614;
  goto LAB_00c344b0;
  while (pbVar10 = *(byte **)(pbVar10 + 4), pbVar10 != pbVar12) {
LAB_00c34081:
    iVar13 = WallHalfEdge_ReadOppositeVertex(pbVar10);
    pvVar4 = *(void **)((int)this + 0x88);
    local_2c = (int)*(char *)(iVar13 + 6);
    local_40[3] = (float)(int)*(char *)(iVar13 + 4);
    local_30 = (float)(int)*(char *)(iVar13 + 5);
    FUN_00b03bc0(pvVar4,(int *)&local_6c,local_40 + 3);
    if ((local_6c == (int)pvVar4 + 4U) || ((*(byte *)(local_6c + 0x20) & 8) != 0)) {
      piVar8[8] = piVar8[8] | 0x10;
      break;
    }
  }
LAB_00c340e6:
  piVar8 = FUN_004e1030(piVar8);
  goto joined_r0x00c34045;
}

