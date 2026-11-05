/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst-assigned name. Selects the serialized water-query root by
   floor((pointX-originX)/cellWidth) and floor((pointZ-originZ)/cellHeight). origin is this+A4/A8;
   cell sizes are this+10/+14; the nested root lookup begins atthis+6C. The lookup owns shared edges
   via floor-based cell selection. A scan of all closed root rectangles can select a different root
   on an edge. Reader and constructor establish the other grid fields. */

undefined8 __thiscall WaterGeometry_SelectQueryRoot(void *this,float *param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int extraout_EDX;
  int iVar4;
  double dVar5;
  
                    /* Floor-based X lookup ownership determines which root owns a shared root edge.
                        */
  dVar5 = floor((double)((*param_1 - *(float *)((int)this + 0xa4)) *
                        (1.0 / *(float *)((int)this + 0x10))));
  iVar2 = Compiler_TruncateX87ToLowInt32((float10)dVar5);
  dVar5 = floor((double)((param_1[1] - *(float *)((int)this + 0xa8)) *
                        (1.0 / *(float *)((int)this + 0x14))));
  iVar3 = Compiler_TruncateX87ToLowInt32((float10)dVar5);
  iVar4 = extraout_EDX;
  if (((-1 < iVar2) && (-1 < iVar3)) &&
     (iVar2 < *(int *)((int)this + 0x70) - *(int *)((int)this + 0x6c) >> 4)) {
    piVar1 = (int *)(iVar2 * 0x10 + *(int *)((int)this + 0x6c));
    iVar4 = piVar1[1] - *piVar1 >> 2;
    if ((iVar3 < iVar4) && (iVar2 = *(int *)(*piVar1 + iVar3 * 4), -1 < iVar2)) {
      iVar4 = *(int *)((int)this + 0x60) - *(int *)((int)this + 0x5c);
      iVar3 = iVar4 >> 0x1f;
      iVar4 = iVar4 / 0x28 + iVar3;
      if (iVar2 <= iVar4 - iVar3) {
        return CONCAT44(iVar4,iVar2);
      }
    }
  }
  return CONCAT44(iVar4,0xffffffff);
}

