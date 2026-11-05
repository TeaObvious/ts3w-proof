/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscallSamplepointerRET4ALBoolean. RequirescurrentokE4,ignores texel/strength/softness.
   ThreeZrows; eachrowADDSSleft+sum,thenmiddle+that,thenright+that. ActualSSEorder
   issequentialnineadds in ZthenX order (doNOTportregroupedgenuineCright+middle+left+sum
   asassociative Floatmath). mean=sum*.11111111Float32;target=((mean-current)*.2Float32)+current
   separateSSE. UCOMISS/LAHF/PF distinguishesunchanged: EXACTunchangedreturnsAL1 WITHOUTD2C420,so
   rasterbboxcanincludeunmodifiedflatsample. NaNunorderedstillcallschange; no nativeNaNskip here.
   Currentlegacyhostreturnedfalseunchanged,concretedifference. Groundselectedmanager18
   separatefromlotrange. */

bool __thiscall TerrainSculptTool_SmoothSample(void *this,BrushRasterSample *sample)

{
  int iVar1;
  int iVar2;
  float fVar3;
  int sampleX;
  int iVar4;
  int iVar5;
  int iVar6;
  int sampleZ;
  bool bVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  float fVar11;
  
  if (*(char *)((int)this + 0xe4) == '\0') {
    return false;
  }
  sampleX = sample->sampleX;
  fVar11 = 0.0;
  iVar4 = *(int *)(sample->lot + 0x290);
  iVar5 = *(int *)(iVar4 + 0x24);
  iVar6 = *(int *)(iVar5 + 8);
  iVar2 = (*(int *)(iVar4 + 0x18) - *(int *)(iVar4 + 0x10)) * *(int *)(iVar5 + 4) + -1 + sampleX;
  iVar5 = *(int *)(iVar5 + 0x10);
  sampleZ = sample->sampleZ;
  iVar8 = sampleZ + -1;
  sample = (BrushRasterSample *)0x3;
  do {
    iVar9 = iVar2 * iVar6 + iVar8;
    iVar10 = (iVar2 + 1) * iVar6 + iVar8;
    iVar1 = iVar8 + (iVar2 + 2) * iVar6;
    iVar8 = iVar8 + 1;
    sample = (BrushRasterSample *)((int)&sample[-1].fade + 3);
    fVar11 = *(float *)(iVar5 + iVar1 * 4) +
             *(float *)(iVar5 + iVar10 * 4) + *(float *)(iVar5 + iVar9 * 4) + fVar11;
  } while (sample != (BrushRasterSample *)0x0);
  iVar2 = *(int *)(iVar4 + 0x24);
  fVar3 = *(float *)(*(int *)(iVar2 + 0x10) +
                    (((*(int *)(iVar4 + 0x18) - *(int *)(iVar4 + 0x10)) * *(int *)(iVar2 + 4) +
                     sampleX) * *(int *)(iVar2 + 8) + sampleZ) * 4);
  fVar11 = (fVar11 * 0.11111111 - fVar3) * 0.2 + fVar3;
  if (fVar11 != fVar3) {
    bVar7 = TerrainUndoable_ChangeGroundElevation
                      (*(void **)((int)this + 0x1a0),sampleX,sampleZ,fVar11,
                       (undefined *)((int)this + 0xe4),(undefined *)((int)this + 0x114));
    return bVar7;
  }
  return true;
}

