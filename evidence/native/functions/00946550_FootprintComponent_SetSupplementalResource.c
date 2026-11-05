/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Reference-counted
   swap of supplemental resource +0x2c. Rebuilds runtime array +0x48 from each primary polygon's
   default flags +8. Returns AL according to resource nonnull. */

bool __thiscall FootprintComponent_SetSupplementalResource(void *this,undefined4 *param_1)

{
  int *piVar1;
  uint uVar2;
  int iVar3;
  uint uVar4;
  
  if (param_1 != *(undefined4 **)((int)this + 0x2c)) {
    if (param_1 != (undefined4 *)0x0) {
      (**(code **)*param_1)();
    }
    if (*(int **)((int)this + 0x2c) != (int *)0x0) {
      (**(code **)(**(int **)((int)this + 0x2c) + 4))();
    }
    *(undefined4 **)((int)this + 0x2c) = param_1;
  }
  if (*(int *)((int)this + 0x2c) != 0) {
    piVar1 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x2c));
    uVar4 = piVar1[1] - *piVar1 >> 6;
    FUN_00c221f0((int *)((int)this + 0x48),uVar4);
    uVar2 = 0;
    if (uVar4 != 0) {
      iVar3 = 0;
      do {
        *(undefined4 *)(*(int *)((int)this + 0x48) + uVar2 * 4) =
             *(undefined4 *)(*piVar1 + 8 + iVar3);
        uVar2 = uVar2 + 1;
        iVar3 = iVar3 + 0x40;
      } while (uVar2 < uVar4);
    }
  }
  return *(int *)((int)this + 0x2c) != 0;
}

