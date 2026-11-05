/* Tests all three other floor-grid corner heights against the first corner using strict absolute
   difference below binary32 0.05. Reads the Float32 grid at lot+290 manager+24; no own bounds or
   null guards. Returns full EAX 0 or 1. Analyst-assigned name. */

undefined4 __cdecl TestFloorCellCornerHeightAgreement(int param_1,char *param_2)

{
  float fVar1;
  char cVar2;
  char cVar3;
  char cVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;

  cVar2 = param_2[2];
  cVar3 = *param_2;
  cVar4 = param_2[1];
  /* 00ACFF4C: Read floor-manager Float32 grid +24. Index uses signed level minus manager+10 and signed X/Z. X+1 and Z+1 narrow as bytes before sign extension. */
  iVar5 = *(int *)(param_1 + 0x290);
  iVar6 = *(int *)(iVar5 + 0x24);
  fVar1 = *(float *)(*(int *)(iVar6 + 0x10) +
                    ((((int)cVar2 - *(int *)(iVar5 + 0x10)) * *(int *)(iVar6 + 4) + (int)cVar3) *
                     *(int *)(iVar6 + 8) + (int)cVar4) * 4);
  iVar6 = *(int *)(iVar5 + 0x24);
  iVar7 = *(int *)(iVar5 + 0x24);
  iVar8 = *(int *)(iVar5 + 0x24);
  /* 00ACFFAA: Threshold at 01066B24 has bytes CDCC4C3D (binary32 0.05). The three comparisons are against the first sampled corner, not pairwise maxima or neighboring edges. */
  /* 00ACFFFA: FCOMI compares threshold with absolute difference; JBE rejects equality and unordered. All three differences must be strictly below threshold before full EAX=1. */
  if (((ABS(fVar1 - *(float *)(*(int *)(iVar6 + 0x10) +
                              ((((int)cVar2 - *(int *)(iVar5 + 0x10)) * *(int *)(iVar6 + 4) +
                               (int)cVar3) * *(int *)(iVar6 + 8) + (int)(char)(cVar4 + '\x01')) * 4)
           ) < 0.05) &&
      (ABS(fVar1 - *(float *)(*(int *)(iVar7 + 0x10) +
                             ((((int)cVar2 - *(int *)(iVar5 + 0x10)) * *(int *)(iVar7 + 4) +
                              (int)(char)(cVar3 + '\x01')) * *(int *)(iVar7 + 8) +
                             (int)(char)(cVar4 + '\x01')) * 4)) < 0.05)) &&
     (ABS(fVar1 - *(float *)(*(int *)(iVar8 + 0x10) +
                            ((((int)cVar2 - *(int *)(iVar5 + 0x10)) * *(int *)(iVar8 + 4) +
                             (int)(char)(cVar3 + '\x01')) * *(int *)(iVar8 + 8) + (int)cVar4) * 4))
      < 0.05)) {
    return 1;
  }
  return 0;
}
