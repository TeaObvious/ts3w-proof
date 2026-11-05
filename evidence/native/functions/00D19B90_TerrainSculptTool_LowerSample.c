/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Recovered complete169byte PC1.67 thiscallSamplepointerRET4ALBoolean.
   Samegates/Float32texelsoftnessmin255 andunorderedselectionasRaise.
   x87FLDstrength/FMULvalue/FSUBRcurrentheight/FSTPtargetFloat32
   (current-product,notproduct-current).
   NonzerotexelcanstillcallChangeGroundElevationwithsameheight.
   FPUprecisionprofileboundsmustbeexplicit; originaldoesnotsetprecisionhere. */

bool __thiscall TerrainSculptTool_LowerSample(void *this,BrushRasterSample *sample)

{
  int iVar1;
  int iVar2;
  BrushRasterSample *pBVar3;
  bool bVar4;
  
  pBVar3 = sample;
  if ((*(char *)((int)this + 0xe4) != '\0') && (sample->texel != 0)) {
    sample = (BrushRasterSample *)((float)sample->texel * sample->softness);
    if (255.0 < (float)sample) {
      sample = (BrushRasterSample *)0x437f0000;
    }
    iVar1 = *(int *)(pBVar3->lot + 0x290);
    iVar2 = *(int *)(iVar1 + 0x24);
    bVar4 = TerrainUndoable_ChangeGroundElevation
                      (*(void **)((int)this + 0x1a0),pBVar3->sampleX,pBVar3->sampleZ,
                       *(float *)(*(int *)(iVar2 + 0x10) +
                                 (((*(int *)(iVar1 + 0x18) - *(int *)(iVar1 + 0x10)) *
                                   *(int *)(iVar2 + 4) + pBVar3->sampleX) * *(int *)(iVar2 + 8) +
                                 pBVar3->sampleZ) * 4) - pBVar3->brush->strength * (float)sample,
                       (undefined *)((int)this + 0xe4),(undefined *)((int)this + 0x114));
    return bVar4;
  }
  return false;
}

