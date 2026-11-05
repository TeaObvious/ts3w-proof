/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Selects the serialized water-query root by
   floor((pointX-originX)/cellWidth) and floor((pointZ-originZ)/cellHeight). origin is this+A4/A8;
   cell sizes are this+10/+14; the nested root lookup begins atthis+6C. The lookup owns shared edges
   via floor-based cell selection. A scan of all closed root rectangles can select a different root
   on an edge. Reader and constructor establish the other grid fields. */

undefined8 __thiscall WaterGeometry_SelectQueryRoot(void *this,float *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 extraout_ECX;
  undefined4 extraout_ECX_00;
  int iVar3;
  undefined4 extraout_EDX;
  undefined4 extraout_EDX_00;
  int iVar4;
  ulonglong uVar5;

                    /* Floor-based X lookup ownership determines which root owns a shared root edge.
                        */
  floor((double)((*param_1 - *(float *)((int)this + 0xa4)) * (1.0 / *(float *)((int)this + 0x10))));
  uVar5 = FUN_00f7f620(extraout_ECX,extraout_EDX);
  iVar4 = (int)uVar5;
  floor((double)((param_1[1] - *(float *)((int)this + 0xa8)) * (1.0 / *(float *)((int)this + 0x14)))
       );
  uVar5 = FUN_00f7f620(extraout_ECX_00,extraout_EDX_00);
  iVar3 = (int)uVar5;
  if (((-1 < iVar4) && (-1 < iVar3)) &&
     (iVar4 < *(int *)((int)this + 0x70) - *(int *)((int)this + 0x6c) >> 4)) {
    piVar1 = (int *)(iVar4 * 0x10 + *(int *)((int)this + 0x6c));
    iVar4 = piVar1[1] - *piVar1 >> 2;
    uVar5 = CONCAT44(iVar4,iVar3);
    if ((iVar3 < iVar4) &&
       (iVar2 = *(int *)(*piVar1 + iVar3 * 4), uVar5 = CONCAT44(iVar4,iVar3), -1 < iVar2)) {
      iVar3 = *(int *)((int)this + 0x60) - *(int *)((int)this + 0x5c);
      iVar4 = iVar3 >> 0x1f;
      iVar3 = iVar3 / 0x28 + iVar4;
      iVar4 = iVar3 - iVar4;
      uVar5 = CONCAT44(iVar3,iVar4);
      if (iVar2 <= iVar4) {
        return CONCAT44(iVar3,iVar2);
      }
    }
  }
  return CONCAT44((int)(uVar5 >> 0x20),0xffffffff);
}


