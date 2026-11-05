/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Analyst-defined CAWAnalysisKdOwner layout: scale floats
   +60, inverseScale +70, nodes begin/end/capacity +80/+84/+88, signed-short XYZ vertex triples
   begin/end/capacity +90/+94/+98, ordered ushort indices begin/end/capacity +A0/+A4/+A8.
   CAWAnalysisKdNode is word/split (8 bytes); CAWAnalysisFaceVector is begin/end/capacity/allocation
   tag (16 bytes). Confirmed ABI: owner ECX, then stack +4/+8/+C/+10/+14, original RET14. These
   metadata types are analyst definitions, not recovered original names. The correct conceptual
   parameters are owner, node index, ushort source indices, mutable face-offset vector, uint32 start
   offset and six signed integer child bounds; decompiler pointer/float casts are ABI artifacts.
   Fewer than 21 triangles form a leaf. Otherwise clamp measured raw bounds to child bounds, choose
   largest binary32 world-scaled extent with X/Y/Z tie preference, and use arithmetic integer
   midpoint. Two unstable partitions first use maximum coordinate and then minimum coordinate;
   straddlers are duplicated into the right range. Append adjacent child nodes, build right subtree
   first, truncate scratch faces, then build left. Rejected subdivision retains mutated face order.
   Leaf word is (faceStart + count*0x100000)*4; internal word is leftChild*4+axis+1; second word is
   binary32 split plane or zero. Analyst-assigned helper names are not recovered original symbols.
   Original instructions govern decompiler ABI/register artifacts. */

void __thiscall
CAW_BuildTerrainKdPartition
          (CAWAnalysisKdOwner *this,uint nodeIndex,ushort *sourceIndices,
          CAWAnalysisFaceVector *faces,uint firstFace,int *childBounds)

{
  short *psVar1;
  int iVar2;
  CAWAnalysisKdNode *pCVar3;
  int *_Src;
  float fVar4;
  CAWAnalysisKdOwner *pCVar5;
  ushort **ppuVar6;
  ushort **ppuVar7;
  ushort **ppuVar8;
  ushort ***pppuVar9;
  ushort **ppuVar10;
  ushort **ppuVar11;
  ushort ***pppuVar12;
  ushort **ppuVar13;
  int iVar14;
  uint uVar15;
  ushort **ppuVar16;
  uint uVar17;
  ushort *puVar18;
  CAWAnalysisKdNode **this_00;
  float fVar19;
  float fVar20;
  ushort *local_a4;
  ushort *local_a0;
  ushort *local_9c;
  ushort *local_98;
  ushort *local_94;
  ushort **local_90;
  ushort *local_8c;
  ushort *local_88;
  undefined4 local_84;
  ushort *local_80;
  CAWAnalysisKdOwner *local_7c;
  ushort **local_78;
  int *local_74;
  ushort **local_70;
  uint local_6c;
  ushort **local_68;
  ushort **local_64;
  float local_60;
  ushort *puStack_5c;
  ushort *puStack_58;
  ushort *puStack_54;
  ushort *local_50;
  ushort *local_4c;
  float local_40;
  ushort *puStack_3c;
  ushort *puStack_38;
  ushort *apuStack_34 [5];
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_70 = (ushort **)faces->end;
  local_7c = this;
  local_74 = faces->begin;
  ppuVar6 = (ushort **)((int)local_70 - (int)local_74 >> 2);
  local_88 = (ushort *)ppuVar6;
  local_6c = (int)ppuVar6 - firstFace;
  if (local_6c < 0x15) goto LAB_1047701c;
  puVar18 = (ushort *)0x7fffffff;
  local_98 = (ushort *)0x7fffffff;
  local_8c = (ushort *)0x7fffffff;
  local_a0 = (ushort *)0x7fffffff;
  local_90 = (ushort **)0x80000000;
  local_94 = (ushort *)0x80000000;
  local_9c = (ushort *)0x80000000;
  local_78 = (ushort **)(local_74 + firstFace);
  if ((ushort **)(local_74 + firstFace) != local_70) {
    local_80 = (ushort *)this->verticesBegin;
    do {
      psVar1 = (short *)(local_80 + (uint)sourceIndices[(int)*local_78] * 3);
      local_a4 = (ushort *)(int)*psVar1;
      ppuVar13 = &local_a4;
      if ((int)puVar18 <= (int)local_a4) {
        ppuVar13 = &local_98;
      }
      local_98 = *ppuVar13;
      pppuVar12 = (ushort ***)&local_a4;
      if ((int)local_a4 <= (int)local_90) {
        pppuVar12 = &local_90;
      }
      local_a4 = (ushort *)(int)psVar1[1];
      local_90 = *pppuVar12;
      ppuVar10 = &local_a4;
      if ((int)local_8c <= (int)local_a4) {
        ppuVar10 = &local_8c;
      }
      local_8c = *ppuVar10;
      ppuVar7 = &local_a4;
      if ((int)local_a4 <= (int)local_94) {
        ppuVar7 = &local_94;
      }
      local_94 = *ppuVar7;
      local_a4 = (ushort *)(int)psVar1[2];
      ppuVar11 = &local_a4;
      if ((int)local_a0 <= (int)local_a4) {
        ppuVar11 = &local_a0;
      }
      local_a0 = *ppuVar11;
      ppuVar8 = &local_a4;
      if ((int)local_a4 <= (int)local_9c) {
        ppuVar8 = &local_9c;
      }
      psVar1 = (short *)(local_80 + (uint)sourceIndices[(int)*local_78 + 1] * 3);
      local_a4 = (ushort *)(int)*psVar1;
      local_9c = *ppuVar8;
      ppuVar16 = &local_a4;
      if ((int)*ppuVar13 <= (int)local_a4) {
        ppuVar16 = &local_98;
      }
      local_98 = *ppuVar16;
      pppuVar9 = (ushort ***)&local_a4;
      if ((int)local_a4 <= (int)*pppuVar12) {
        pppuVar9 = &local_90;
      }
      local_a4 = (ushort *)(int)psVar1[1];
      local_90 = *pppuVar9;
      ppuVar13 = &local_a4;
      if ((int)*ppuVar10 <= (int)local_a4) {
        ppuVar13 = &local_8c;
      }
      local_8c = *ppuVar13;
      ppuVar10 = &local_a4;
      if ((int)local_a4 <= (int)*ppuVar7) {
        ppuVar10 = &local_94;
      }
      local_94 = *ppuVar10;
      local_a4 = (ushort *)(int)psVar1[2];
      ppuVar7 = &local_a4;
      if ((int)*ppuVar11 <= (int)local_a4) {
        ppuVar7 = &local_a0;
      }
      local_a0 = *ppuVar7;
      ppuVar11 = &local_a4;
      if ((int)local_a4 <= (int)*ppuVar8) {
        ppuVar11 = &local_9c;
      }
      psVar1 = (short *)(local_80 + (uint)sourceIndices[(int)*local_78 + 2] * 3);
      local_a4 = (ushort *)(int)*psVar1;
      local_9c = *ppuVar11;
      ppuVar8 = &local_a4;
      if ((int)*ppuVar16 <= (int)local_a4) {
        ppuVar8 = &local_98;
      }
      puVar18 = *ppuVar8;
      local_98 = puVar18;
      pppuVar12 = (ushort ***)&local_a4;
      if ((int)local_a4 <= (int)*pppuVar9) {
        pppuVar12 = &local_90;
      }
      local_a4 = (ushort *)(int)psVar1[1];
      local_90 = *pppuVar12;
      ppuVar8 = &local_a4;
      if ((int)*ppuVar13 <= (int)local_a4) {
        ppuVar8 = &local_8c;
      }
      local_8c = *ppuVar8;
      ppuVar13 = &local_a4;
      if ((int)local_a4 <= (int)*ppuVar10) {
        ppuVar13 = &local_94;
      }
      local_94 = *ppuVar13;
      local_a4 = (ushort *)(int)psVar1[2];
      ppuVar13 = &local_a4;
      if ((int)*ppuVar7 <= (int)local_a4) {
        ppuVar13 = &local_a0;
      }
      local_a0 = *ppuVar13;
      ppuVar13 = &local_a4;
      if ((int)local_a4 <= (int)*ppuVar11) {
        ppuVar13 = &local_9c;
      }
      local_78 = local_78 + 1;
      local_9c = *ppuVar13;
    } while (local_78 != local_70);
  }
  ppuVar13 = (ushort **)childBounds;
  if (*childBounds <= (int)puVar18) {
    ppuVar13 = &local_98;
  }
  local_98 = *ppuVar13;
  ppuVar13 = (ushort **)(childBounds + 1);
  local_78 = ppuVar13;
  if (childBounds[1] <= (int)local_8c) {
    ppuVar13 = &local_8c;
  }
  local_8c = *ppuVar13;
  ppuVar13 = (ushort **)(childBounds + 2);
  local_64 = ppuVar13;
  if (childBounds[2] <= (int)local_a0) {
    ppuVar13 = &local_a0;
  }
  local_a0 = *ppuVar13;
  pppuVar12 = (ushort ***)(childBounds + 3);
  local_68 = (ushort **)pppuVar12;
  if ((int)local_90 <= childBounds[3]) {
    pppuVar12 = &local_90;
  }
  ppuVar13 = (ushort **)(childBounds + 4);
  local_90 = ppuVar13;
  if ((int)local_94 <= childBounds[4]) {
    ppuVar13 = &local_94;
  }
  ppuVar10 = (ushort **)(childBounds + 5);
  local_70 = ppuVar10;
  if ((int)local_9c <= (int)*ppuVar10) {
    ppuVar10 = &local_9c;
  }
  fVar4 = this->scale[0];
  fVar19 = (float)((int)*pppuVar12 - (int)local_98);
  local_98 = (ushort *)((int)*pppuVar12 + (int)local_98 >> 1);
  local_60 = fVar4 * fVar19;
  fVar20 = this->scale[1];
  puStack_5c = (ushort *)(fVar4 * fVar19);
  puStack_58 = (ushort *)(fVar4 * fVar19);
  puStack_54 = (ushort *)(fVar4 * fVar19);
  fVar19 = (float)((int)*ppuVar13 - (int)local_8c);
  local_40 = fVar20 * fVar19;
  fVar4 = this->scale[2];
  puStack_3c = (ushort *)(fVar20 * fVar19);
  puStack_38 = (ushort *)(fVar20 * fVar19);
  apuStack_34[0] = (ushort *)(fVar20 * fVar19);
  fVar20 = (float)((int)*ppuVar10 - (int)local_a0);
  local_94 = (ushort *)0x0;
  local_20 = fVar4 * fVar20;
  fStack_1c = fVar4 * fVar20;
  fStack_18 = fVar4 * fVar20;
  fStack_14 = fVar4 * fVar20;
  if (local_40 <= local_60) {
    if (local_60 < local_20) goto LAB_10476acc;
  }
  else {
    if (local_40 < local_20) {
LAB_10476acc:
      iVar14 = (int)*ppuVar10 + (int)local_a0;
      local_94 = (ushort *)0x2;
    }
    else {
      local_94 = (ushort *)0x1;
      iVar14 = (int)local_8c + (int)*ppuVar13;
    }
    local_98 = (ushort *)(iVar14 >> 1);
  }
  psVar1 = this->verticesBegin;
  local_a0 = (ushort *)firstFace;
  while( true ) {
    ppuVar6 = (ushort **)((int)ppuVar6 + -1);
    local_80 = (ushort *)ppuVar6;
    if ((int)ppuVar6 < (int)local_a0) break;
    do {
      iVar14 = local_74[(int)local_a0];
      local_88 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar14] * 3];
      local_a4 = local_88;
      local_9c = (ushort *)0x80000000;
      ppuVar13 = &local_a4;
      if ((int)local_88 < -0x7fffffff) {
        ppuVar13 = &local_9c;
      }
      local_a4 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar14 + 1] * 3];
      local_9c = *ppuVar13;
      ppuVar10 = &local_a4;
      if ((int)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar14 + 1] * 3] <= (int)*ppuVar13) {
        ppuVar10 = &local_9c;
      }
      local_a4 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar14 + 2] * 3];
      local_9c = *ppuVar10;
      ppuVar13 = &local_a4;
      if ((int)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar14 + 2] * 3] <= (int)*ppuVar10) {
        ppuVar13 = &local_9c;
      }
    } while (((int)*ppuVar13 <= (int)local_98) &&
            (local_a0 = (ushort *)((int)local_a0 + 1), (int)local_a0 <= (int)ppuVar6));
    while( true ) {
      if ((int)ppuVar6 <= (int)local_a0) goto LAB_10476c4e;
      iVar14 = local_74[(int)ppuVar6];
      local_88 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar14] * 3];
      local_a4 = local_88;
      local_9c = (ushort *)0x80000000;
      ppuVar13 = &local_a4;
      if ((int)local_88 < -0x7fffffff) {
        ppuVar13 = &local_9c;
      }
      local_a4 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar14 + 1] * 3];
      local_9c = *ppuVar13;
      ppuVar10 = &local_a4;
      if ((int)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar14 + 1] * 3] <= (int)*ppuVar13) {
        ppuVar10 = &local_9c;
      }
      local_a4 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar14 + 2] * 3];
      local_9c = *ppuVar10;
      ppuVar13 = &local_a4;
      if ((int)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar14 + 2] * 3] <= (int)*ppuVar10) {
        ppuVar13 = &local_9c;
      }
      if ((int)*ppuVar13 < (int)local_98) break;
      ppuVar6 = (ushort **)((int)ppuVar6 + -1);
      local_80 = (ushort *)ppuVar6;
    }
    if ((int)ppuVar6 <= (int)local_a0) break;
    iVar14 = local_74[(int)local_a0];
    local_74[(int)local_a0] = local_74[(int)ppuVar6];
    local_74[(int)ppuVar6] = iVar14;
    local_a0 = (ushort *)((int)local_a0 + 1);
  }
LAB_10476c4e:
  puVar18 = local_a0;
  local_80 = local_a0;
  iVar14 = (int)faces->end - (int)faces->begin >> 2;
  for (; iVar14 = iVar14 + -1, (int)local_a0 <= iVar14; local_a0 = (ushort *)((int)local_a0 + 1)) {
    do {
      iVar2 = local_74[(int)local_a0];
      local_a4 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar2] * 3];
      local_9c = (ushort *)0x7fffffff;
      ppuVar6 = &local_a4;
      if (0x7ffffffe < (int)local_a4) {
        ppuVar6 = &local_9c;
      }
      local_88 = local_a4;
      local_a4 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar2 + 1] * 3];
      local_9c = *ppuVar6;
      ppuVar13 = &local_a4;
      if ((int)*ppuVar6 <= (int)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar2 + 1] * 3]) {
        ppuVar13 = &local_9c;
      }
      local_a4 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar2 + 2] * 3];
      local_9c = *ppuVar13;
      ppuVar6 = &local_a4;
      if ((int)*ppuVar13 <= (int)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar2 + 2] * 3]) {
        ppuVar6 = &local_9c;
      }
    } while (((int)*ppuVar6 <= (int)local_98) &&
            (local_a0 = (ushort *)((int)local_a0 + 1), (int)local_a0 <= iVar14));
    while( true ) {
      if (iVar14 <= (int)local_a0) goto LAB_10476daa;
      iVar2 = local_74[iVar14];
      local_a4 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar2] * 3];
      local_9c = (ushort *)0x7fffffff;
      ppuVar6 = &local_a4;
      if (0x7ffffffe < (int)local_a4) {
        ppuVar6 = &local_9c;
      }
      local_88 = local_a4;
      local_a4 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar2 + 1] * 3];
      local_9c = *ppuVar6;
      ppuVar13 = &local_a4;
      if ((int)*ppuVar6 <= (int)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar2 + 1] * 3]) {
        ppuVar13 = &local_9c;
      }
      local_a4 = (ushort *)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar2 + 2] * 3];
      local_9c = *ppuVar13;
      ppuVar6 = &local_a4;
      if ((int)*ppuVar13 <= (int)(int)psVar1[(int)local_94 + (uint)sourceIndices[iVar2 + 2] * 3]) {
        ppuVar6 = &local_9c;
      }
      if ((int)*ppuVar6 < (int)local_98) break;
      iVar14 = iVar14 + -1;
    }
    if (iVar14 <= (int)local_a0) break;
    local_88 = (ushort *)local_74[(int)local_a0];
    local_74[(int)local_a0] = local_74[iVar14];
    local_74[iVar14] = (int)local_88;
  }
LAB_10476daa:
  if (((int)local_a0 - firstFace < local_6c) && ((local_6c - (int)puVar18) + firstFace < local_6c))
  {
    FUN_1058c3e0(faces,faces->end,faces->begin + (int)puVar18,faces->begin + (int)local_a0);
    pCVar5 = local_7c;
    pCVar3 = local_7c->nodesEnd;
    this_00 = &local_7c->nodesBegin;
    uVar17 = (int)local_7c->nodesEnd - (int)local_7c->nodesBegin >> 3;
    if (pCVar3 < local_7c->nodesCapacity) {
      local_7c->nodesEnd = pCVar3 + 1;
      if (pCVar3 != (CAWAnalysisKdNode *)0x0) {
        pCVar3->word = 0;
        pCVar3->split = 0.0;
      }
    }
    else {
      local_88 = (ushort *)0x0;
      local_84 = 0;
      FUN_101f5b70(this_00,&pCVar3->word,&local_88);
    }
    pCVar3 = pCVar5->nodesEnd;
    if (pCVar3 < pCVar5->nodesCapacity) {
      pCVar5->nodesEnd = pCVar3 + 1;
      if (pCVar3 != (CAWAnalysisKdNode *)0x0) {
        pCVar3->word = 0;
        pCVar3->split = 0.0;
      }
    }
    else {
      local_88 = (ushort *)0x0;
      local_84 = 0;
      FUN_101f5b70(this_00,&pCVar3->word,&local_88);
    }
    pCVar3 = *this_00;
    pCVar3[nodeIndex].word = (int)local_94 + uVar17 * 4 + 1;
    pCVar3[nodeIndex].split = (float)(int)local_98;
    local_60 = (float)*childBounds;
    puStack_5c = *local_78;
    puStack_58 = *local_64;
    puStack_54 = *local_68;
    local_50 = *local_90;
    local_4c = *local_70;
    (&local_60)[(int)local_94] = (float)local_98;
    CAW_BuildTerrainKdPartition
              (local_7c,uVar17 + 1,sourceIndices,faces,(uint)local_a0,(int *)&local_60);
    _Src = faces->end;
    puVar18 = (ushort *)((int)_Src - (int)faces->begin >> 2);
    if (puVar18 < local_a0) {
      local_88 = (ushort *)0x0;
      FUN_10506500(faces,_Src,(int)local_a0 - (int)puVar18,&local_88);
    }
    else {
      local_88 = (ushort *)(faces->begin + (int)local_a0);
      memmove(local_88,_Src,0);
      faces->end = faces->end + -((int)_Src - (int)local_88 >> 2);
    }
    local_40 = (float)*childBounds;
    puStack_3c = *local_78;
    puStack_38 = *local_64;
    apuStack_34[0] = *local_68;
    apuStack_34[1] = *local_90;
    apuStack_34[2] = *local_70;
    apuStack_34[(int)local_94] = local_98;
    CAW_BuildTerrainKdPartition(local_7c,uVar17,sourceIndices,faces,firstFace,(int *)&local_40);
    return;
  }
LAB_1047701c:
  pCVar3 = this->nodesBegin;
  ppuVar6 = &this->orderedIndicesBegin;
  pCVar3[nodeIndex].word =
       ((uint)((int)this->orderedIndicesEnd - (int)this->orderedIndicesBegin >> 1) / 3 +
       local_6c * 0x100000) * 4;
  pCVar3[nodeIndex].split = 0.0;
  if (local_6c != 0) {
    puVar18 = this->orderedIndicesEnd;
    local_70 = (ushort **)((int)this->orderedIndicesEnd - (int)*ppuVar6 >> 1);
    uVar17 = (int)local_70 + local_6c * 3;
    uVar15 = (int)puVar18 - (int)*ppuVar6 >> 1;
    if (uVar15 < uVar17) {
      local_88 = (ushort *)0x0;
      FUN_1003e530(ppuVar6,(undefined4 *)puVar18,uVar17 - uVar15,(undefined2 *)&local_88);
    }
    else {
      local_88 = *ppuVar6 + uVar17;
      memmove(local_88,puVar18,0);
      this->orderedIndicesEnd = this->orderedIndicesEnd + -((int)puVar18 - (int)local_88 >> 1);
    }
    puVar18 = *ppuVar6 + (int)local_70;
    if (local_6c != 0) {
      iVar14 = firstFace * 4;
      do {
        iVar2 = *(int *)(iVar14 + (int)faces->begin);
        *(undefined4 *)puVar18 = *(undefined4 *)(sourceIndices + iVar2);
        puVar18[2] = sourceIndices[iVar2 + 2];
        puVar18 = puVar18 + 3;
        iVar14 = iVar14 + 4;
        local_6c = local_6c - 1;
      } while (local_6c != 0);
    }
  }
  return;
}

