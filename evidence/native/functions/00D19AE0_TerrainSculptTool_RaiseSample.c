/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Recovered complete169byte PC1.67 thiscallSamplepointerRET4ALBoolean. IfcurrentokE4false or
   sampletexel8zero returnsAL0. value=Float32(texel)*softness50; COMISS/JBE
   selectsoriginalvalueon<=255 ORUNORDERED,otherwise255. Targetcomputed
   x87FLDstrength20,FMULstoredFloatvalue,FADDcurrentground,FSTPFloat32; no intermediateFloat32
   productstore. Thus portableFloatmultiply-then-add neednotmatchextendedprecision;
   a53bitdoubleintermediateprofilemustbeexplicitnotuniversalCWclaim. CallsD2C420
   evenforunchangedtargetwithnonzerotexel. Sample X/Z
   signedInt32,groundmanagerselected18-relativeMin10 usesretainedgridstrides. */

bool __thiscall TerrainSculptTool_RaiseSample(void *this,BrushRasterSample *sample)

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
                       pBVar3->brush->strength * (float)sample +
                       *(float *)(*(int *)(iVar2 + 0x10) +
                                 (((*(int *)(iVar1 + 0x18) - *(int *)(iVar1 + 0x10)) *
                                   *(int *)(iVar2 + 4) + pBVar3->sampleX) * *(int *)(iVar2 + 8) +
                                 pBVar3->sampleZ) * 4),(undefined *)((int)this + 0xe4),
                       (undefined *)((int)this + 0x114));
    return bVar4;
  }
  return false;
}

