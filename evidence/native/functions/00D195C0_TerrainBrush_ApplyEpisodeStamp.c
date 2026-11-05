/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall pointpointer+samplepointer RET8void. Sample requiresnonnull lot38. ClampsXY
   tolot0..W/D BEFORE previous/currentupdate; gridcentre=resUINT*clampedFloat. MOVSS stores mean
   sample fieldsareFloat32bits, not numericcastsfromint as oldC. Orientation1 uses
   FPATAN(-(currentZ-prevZ),currentX-prevX), storesFloat32;2 callsBoundedLCG4 onthis24:
   nonzeroaddsFloat32wiggleandwrapsonce
   atFloat32TAU,0subtractsandaddsonceifnegative;otherwiseangle0. Changedboundsinitialize
   INTMAX/INTMIN then rasterD191A0. No sampleparallelism: callbacks see prior raster edits.
   HostportableMathFtrigneednotbitmatchx87,mode/edge/callbackordering remainscontract. */

void __thiscall
TerrainBrush_ApplyEpisodeStamp(void *this,LotPaintPoint *point,BrushRasterSample *sample)

{
  undefined *puVar1;
  uint uVar2;
  int iVar3;
  float10 fVar4;
  float fVar5;
  float local_c;
  float local_8;
  
  puVar1 = sample->lot;
  if (puVar1 != (undefined *)0x0) {
    local_c = point->x;
    local_8 = point->z;
    if (local_c < 0.0) {
      local_c = 0.0;
    }
    if ((float)*(int *)(puVar1 + 0x174) < local_c) {
      local_c = (float)*(int *)(puVar1 + 0x174);
    }
    if (local_8 < 0.0) {
      local_8 = 0.0;
    }
    if ((float)*(int *)(puVar1 + 0x178) < local_8) {
      local_8 = (float)*(int *)(puVar1 + 0x178);
    }
    fVar5 = (float)*(int *)((int)this + 0xc);
    if (*(int *)((int)this + 0xc) < 0) {
      fVar5 = fVar5 + 4.2949673e+09;
    }
    sample->gridX = fVar5 * local_c;
    fVar5 = (float)*(int *)((int)this + 0xc);
    if (*(int *)((int)this + 0xc) < 0) {
      fVar5 = fVar5 + 4.2949673e+09;
    }
    sample->previousX = sample->currentX;
    sample->gridZ = fVar5 * local_8;
    sample->previousZ = sample->currentZ;
    sample->currentX = local_c;
    sample->currentZ = local_8;
    uVar2 = sample->brush->orientation;
    if (uVar2 == 1) {
      fVar4 = (float10)fpatan(-((float10)sample->currentZ - (float10)sample->previousZ),
                              (float10)sample->currentX - (float10)sample->previousX);
      sample->angle = (float)fVar4;
    }
    else if (uVar2 == 2) {
      iVar3 = FUN_004faa30((void *)((int)this + 0x24),4);
      if (iVar3 == 0) {
        fVar5 = sample->angle - sample->brush->wiggle;
        sample->angle = fVar5;
        if (fVar5 < 0.0) {
          sample->angle = fVar5 + 6.2831855;
        }
      }
      else {
        fVar5 = sample->brush->wiggle + sample->angle;
        sample->angle = fVar5;
        if (6.2831855 <= fVar5) {
          sample->angle = fVar5 - 6.2831855;
        }
      }
    }
    else {
      sample->angle = 0.0;
    }
    sample->minChangedZ = 0x7fffffff;
    sample->minChangedX = 0x7fffffff;
    sample->maxChangedZ = -0x80000000;
    sample->maxChangedX = -0x80000000;
    TerrainBrush_RasterProfileRectangle(this,sample);
  }
  return;
}

