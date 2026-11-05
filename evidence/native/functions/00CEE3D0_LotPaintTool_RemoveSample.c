/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Recovered full130byte original callback from concreteListingCMPentry throughRET4 atCEE44F,
   paddingstartsCEE452. Same typed sample layout and orderedalpha/NaNlowbyte semantics asCEE1E0.
   Checks currentokF0 and texel!=0, has NOexposed-floor test, then D24550(lot,x,z,alpha,okout). Do
   notinvent a floor admission gate for erase or expose nonexistent constructor/fullbody
   placeholders as full evidence.
   
   DECOMPILER LIMIT: genuine C renders COMISS/JC as ordinary f<255 and can hide that unorderedNaN
   ALSO takes conversion branch. Actual CF/PF branch behavior, not that C predicate's NaN semantics,
   establishes byte0. In recovered remove C, sample._0_1_ reuses the parameter STACK SLOT for alpha
   after its pointer is retained in EAX; it does not modify the sample object's first coordinate
   byte. Do not port that local/stack alias as an original object write. */

bool __thiscall LotPaintTool_RemoveSample(void *this,TerrainPaintSampleInput *sample)

{
  TerrainPaintSampleInput *pTVar1;
  bool bVar2;
  float fVar3;
  
  pTVar1 = sample;
  if ((*(char *)((int)this + 0xf0) != '\0') && (sample->texel != 0)) {
    fVar3 = sample->fade * sample->softness * sample->brush->strength * (float)sample->texel;
    if (fVar3 < 255.0) {
      if (fVar3 < 0.0) {
        return false;
      }
      sample._0_1_ = (byte)(int)fVar3;
    }
    else {
      sample._0_1_ = 0xff;
    }
    bVar2 = PaintUndoable_DiminishPaintAtSample
                      (*(void **)((int)this + 0x1b0),*(undefined **)((int)this + 0x34),
                       pTVar1->sampleX,pTVar1->sampleZ,(byte)sample,(bool *)((int)this + 0xf0));
    return bVar2;
  }
  return false;
}

