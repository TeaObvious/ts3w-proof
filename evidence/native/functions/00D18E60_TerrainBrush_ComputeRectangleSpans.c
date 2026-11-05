/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall cornerspointer,spanLow,spanHigh,firstRow,lastRow FIVEwords RET14hexvoid.
   FourFloat32XZcorners. Round/correctresidualsign-bit
   yieldsfloorforfiniteboundedpositions,currentCWroundingnotdirectlyfloorinstruction. Clamp rowrange
   toinclusivegridminZ/maxZ; eachedgecrossesonlyhalfopenlowZ<=row<highZ,horizontaledgeexcluded.
   Verticaledge floorsfixedX;nonverticalcomputes (deltaX/deltaZ)*(row-z0)+x0
   inthatdivision/multiplicationorder BEFOREfloor. low=minintersections
   clippedminX;high=maxintersections PLUS1 clippedmaxX; highisinclusiveinthesampleloop.
   Nativefixed256-entrylocalrowarraysareallocationimplementation,notportablegridlimitpolicy.
   Hostdynamicrowsareintentionalmemorysafetyownership. No callbackorpaintpolicyhere. */

void __thiscall
TerrainBrush_ComputeRectangleSpans
          (void *this,float *cornersXZ,int *spanLow,int *spanHigh,int *firstRow,int *lastRow)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  float *pfVar4;
  int iVar5;
  uint uVar6;
  uint uVar7;
  float fVar8;
  float fVar9;
  
  *firstRow = 0x7fffffff;
  *lastRow = -0x80000000;
  pfVar4 = cornersXZ + 1;
  iVar5 = 4;
  do {
    iVar2 = (int)ROUND(*pfVar4);
    iVar2 = iVar2 + -1 + (uint)((uint)(*pfVar4 - (float)iVar2) < 0x80000001);
    if (*lastRow < iVar2) {
      *lastRow = iVar2;
    }
    if (iVar2 < *firstRow) {
      *firstRow = iVar2;
    }
    pfVar4 = pfVar4 + 2;
    iVar5 = iVar5 + -1;
  } while (iVar5 != 0);
  if (*firstRow < *(int *)((int)this + 0x14)) {
    *firstRow = *(int *)((int)this + 0x14);
  }
  if (*(int *)((int)this + 0x1c) < *lastRow) {
    *lastRow = *(int *)((int)this + 0x1c);
  }
  iVar5 = *firstRow;
  if (iVar5 <= *lastRow) {
    do {
      iVar2 = iVar5 - *firstRow;
      spanLow[iVar2] = 0x7fffffff;
      spanHigh[iVar2] = -0x80000000;
      fVar8 = (float)iVar5;
      uVar6 = 0;
      do {
        uVar1 = uVar6 + 1;
        uVar7 = uVar1 & 0x80000003;
        if ((int)uVar7 < 0) {
          uVar7 = (uVar7 - 1 | 0xfffffffc) + 1;
        }
        if (((cornersXZ[uVar6 * 2 + 1] <= fVar8) && (fVar8 < cornersXZ[uVar7 * 2 + 1])) ||
           ((cornersXZ[uVar7 * 2 + 1] <= fVar8 && (fVar8 < cornersXZ[uVar6 * 2 + 1])))) {
          fVar9 = cornersXZ[uVar6 * 2];
          if (fVar9 == cornersXZ[uVar7 * 2]) {
            iVar3 = (int)ROUND(fVar9) + -1 +
                    (uint)((uint)(fVar9 - (float)(int)ROUND(fVar9)) < 0x80000001);
          }
          else {
            fVar9 = ((cornersXZ[uVar7 * 2] - cornersXZ[uVar6 * 2]) /
                    (cornersXZ[uVar7 * 2 + 1] - cornersXZ[uVar6 * 2 + 1])) *
                    (fVar8 - cornersXZ[uVar6 * 2 + 1]) + cornersXZ[uVar6 * 2];
            iVar3 = (int)ROUND(fVar9);
            iVar3 = iVar3 + -1 + (uint)((uint)(fVar9 - (float)iVar3) < 0x80000001);
          }
          if (iVar3 < spanLow[iVar2]) {
            spanLow[iVar2] = iVar3;
          }
          if (spanHigh[iVar2] < iVar3) {
            spanHigh[iVar2] = iVar3;
          }
        }
        uVar6 = uVar1;
      } while ((int)uVar1 < 4);
      if (spanLow[iVar2] < *(int *)((int)this + 0x10)) {
        spanLow[iVar2] = *(int *)((int)this + 0x10);
      }
      spanHigh[iVar2] = spanHigh[iVar2] + 1;
      if (*(int *)((int)this + 0x18) < spanHigh[iVar2]) {
        spanHigh[iVar2] = *(int *)((int)this + 0x18);
      }
      iVar5 = iVar5 + 1;
    } while (iVar5 <= *lastRow);
  }
  return;
}

