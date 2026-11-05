/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 grid dimension initialization. Multiplies both supplied Single maxima by physical
   Float32 one-over32 atFA2BB0 in x87, uses a temporary truncation rounding control and FISTP Int64
   conversion, stores each low32 result at receiver+30/+34, and changes only zero counts to one with
   unsigned CMP/JNC. Resizes and initializes cell storage using unsigned counts. The supplied maxima
   are not widths with an implied origin subtraction; allocation children and inherited x87
   precision-control state are separate contracts. */

void __thiscall NeighborhoodLightGrid_InitializeDimensions(void *this,float param_1,float param_2)

{
  float fVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  bool bVar5;
  longlong local_10;
  undefined4 local_8;
  char *local_4;
  
  fVar1 = DAT_00fa2bb0;
  local_10._0_4_ = (int)(longlong)ROUND(param_1 * DAT_00fa2bb0);
  *(int *)((int)this + 0x30) = (int)local_10;
  bVar5 = (int)local_10 == 0;
  local_10 = (longlong)ROUND(fVar1 * param_2);
  *(int *)((int)this + 0x34) = (int)local_10;
  if (bVar5) {
    *(undefined4 *)((int)this + 0x30) = 1;
  }
  if ((int)local_10 == 0) {
    *(undefined4 *)((int)this + 0x34) = 1;
  }
  FUN_006aee20(*(int **)this,*(int **)((int)this + 4));
  *(undefined4 *)((int)this + 4) = *(undefined4 *)this;
  local_10 = 0;
  local_8 = 0;
  local_4 = "Lighting/LightCells";
  FUN_006b6fd0(this,*(uint *)((int)this + 0x30),(int *)&local_10);
  uVar4 = 0;
  if (*(int *)((int)this + 0x30) != 0) {
    iVar3 = 0;
    do {
      FUN_006b6d90((void *)(*(int *)this + iVar3),*(uint *)((int)this + 0x34));
      uVar4 = uVar4 + 1;
      iVar3 = iVar3 + 0x10;
    } while (uVar4 < *(uint *)((int)this + 0x30));
  }
  uVar4 = 0;
  if (*(int *)((int)this + 0x30) != 0) {
    do {
      uVar2 = 0;
      if (*(int *)((int)this + 0x34) != 0) {
        iVar3 = 0;
        do {
          *(uint *)(iVar3 + 0x20 + *(int *)(uVar4 * 0x10 + *(int *)this)) =
               *(int *)((int)this + 0x34) * uVar4 + uVar2;
          uVar2 = uVar2 + 1;
          iVar3 = iVar3 + 0x24;
        } while (uVar2 < *(uint *)((int)this + 0x34));
      }
      uVar4 = uVar4 + 1;
    } while (uVar4 < *(uint *)((int)this + 0x30));
  }
  return;
}

