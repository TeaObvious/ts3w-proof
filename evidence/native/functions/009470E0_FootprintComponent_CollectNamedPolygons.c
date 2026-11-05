/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Appends deep copies
   of every 0x40-byte polygon matching the 32-bit name hash. Initializes outRelativeLevel byte to
   0x80; last match overwrites it with record+5. Resource +0x28 uses primary vector, replaced by
   +0x34 when present. Supplemental +0x2c uses its primary. Resource +0x30 uses secondary, replaced
   by +0x34 when present. Resource version >=5 selects vectors +0x38/+0x48; older versions share
   +0x28. No runtime enabled flag or mask is consulted. Appends to existing output vector. */

void __thiscall
FootprintComponent_CollectNamedPolygons(void *this,int param_1,void *param_2,undefined1 *param_3)

{
  undefined4 *puVar1;
  void *this_00;
  int *piVar2;
  int iVar3;
  int *piVar4;
  
  this_00 = param_2;
  *param_3 = 0x80;
  if (*(int *)((int)this + 0x28) != 0) {
    if (*(int *)((int)this + 0x34) == 0) {
      piVar2 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x28));
      param_2 = (void *)(piVar2[1] - *piVar2 >> 6);
      if (param_2 != (void *)0x0) {
        iVar3 = 0;
        do {
          piVar4 = (int *)(*piVar2 + iVar3);
          if (*piVar4 == param_1) {
            puVar1 = *(undefined4 **)((int)this_00 + 4);
            if (puVar1 < *(undefined4 **)((int)this_00 + 8)) {
              *(undefined4 **)((int)this_00 + 4) = puVar1 + 0x10;
              if (puVar1 != (undefined4 *)0x0) {
                FootprintPolygon_CopyConstruct(puVar1,piVar4);
              }
            }
            else {
              FUN_0082f220(this_00,puVar1,piVar4);
            }
            *param_3 = *(undefined1 *)((int)piVar4 + 5);
          }
          iVar3 = iVar3 + 0x40;
          param_2 = (void *)((int)param_2 + -1);
        } while (param_2 != (void *)0x0);
      }
    }
    else {
      piVar2 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x34));
      param_2 = (void *)(piVar2[1] - *piVar2 >> 6);
      if (param_2 != (void *)0x0) {
        iVar3 = 0;
        do {
          piVar4 = (int *)(*piVar2 + iVar3);
          if (*piVar4 == param_1) {
            puVar1 = *(undefined4 **)((int)this_00 + 4);
            if (puVar1 < *(undefined4 **)((int)this_00 + 8)) {
              *(undefined4 **)((int)this_00 + 4) = puVar1 + 0x10;
              if (puVar1 != (undefined4 *)0x0) {
                FootprintPolygon_CopyConstruct(puVar1,piVar4);
              }
            }
            else {
              FUN_0082f220(this_00,puVar1,piVar4);
            }
            *param_3 = *(undefined1 *)((int)piVar4 + 5);
          }
          iVar3 = iVar3 + 0x40;
          param_2 = (void *)((int)param_2 + -1);
        } while (param_2 != (void *)0x0);
      }
    }
  }
  if (*(int *)((int)this + 0x2c) != 0) {
    piVar2 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x2c));
    param_2 = (void *)(piVar2[1] - *piVar2 >> 6);
    if (param_2 != (void *)0x0) {
      iVar3 = 0;
      do {
        piVar4 = (int *)(*piVar2 + iVar3);
        if (*piVar4 == param_1) {
          puVar1 = *(undefined4 **)((int)this_00 + 4);
          if (puVar1 < *(undefined4 **)((int)this_00 + 8)) {
            *(undefined4 **)((int)this_00 + 4) = puVar1 + 0x10;
            if (puVar1 != (undefined4 *)0x0) {
              FootprintPolygon_CopyConstruct(puVar1,piVar4);
            }
          }
          else {
            FUN_0082f220(this_00,puVar1,piVar4);
          }
          *param_3 = *(undefined1 *)((int)piVar4 + 5);
        }
        iVar3 = iVar3 + 0x40;
        param_2 = (void *)((int)param_2 + -1);
      } while (param_2 != (void *)0x0);
    }
  }
  if (*(int *)((int)this + 0x30) != 0) {
    if (*(int *)((int)this + 0x34) == 0) {
      piVar2 = (int *)FootprintResource_GetSecondaryPolygonVector(*(int *)((int)this + 0x30));
      param_2 = (void *)(piVar2[1] - *piVar2 >> 6);
      if (param_2 != (void *)0x0) {
        iVar3 = 0;
        do {
          piVar4 = (int *)(*piVar2 + iVar3);
          if (*piVar4 == param_1) {
            puVar1 = *(undefined4 **)((int)this_00 + 4);
            if (puVar1 < *(undefined4 **)((int)this_00 + 8)) {
              *(undefined4 **)((int)this_00 + 4) = puVar1 + 0x10;
              if (puVar1 != (undefined4 *)0x0) {
                FootprintPolygon_CopyConstruct(puVar1,piVar4);
              }
            }
            else {
              FUN_0082f220(this_00,puVar1,piVar4);
            }
            *param_3 = *(undefined1 *)((int)piVar4 + 5);
          }
          iVar3 = iVar3 + 0x40;
          param_2 = (void *)((int)param_2 + -1);
        } while (param_2 != (void *)0x0);
      }
    }
    else {
      piVar2 = (int *)FootprintResource_GetSecondaryPolygonVector(*(int *)((int)this + 0x34));
      param_2 = (void *)(piVar2[1] - *piVar2 >> 6);
      if (param_2 != (void *)0x0) {
        iVar3 = 0;
        do {
          piVar4 = (int *)(*piVar2 + iVar3);
          if (*piVar4 == param_1) {
            puVar1 = *(undefined4 **)((int)this_00 + 4);
            if (puVar1 < *(undefined4 **)((int)this_00 + 8)) {
              *(undefined4 **)((int)this_00 + 4) = puVar1 + 0x10;
              if (puVar1 != (undefined4 *)0x0) {
                FootprintPolygon_CopyConstruct(puVar1,piVar4);
              }
            }
            else {
              FUN_0082f220(this_00,puVar1,piVar4);
            }
            *param_3 = *(undefined1 *)((int)piVar4 + 5);
          }
          iVar3 = iVar3 + 0x40;
          param_2 = (void *)((int)param_2 + -1);
        } while (param_2 != (void *)0x0);
        return;
      }
    }
  }
  return;
}

