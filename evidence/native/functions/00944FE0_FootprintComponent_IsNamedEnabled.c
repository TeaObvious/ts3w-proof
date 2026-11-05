/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). AL: first hash match
   in base primary, then base secondary returns (runtimeFlags>>2)&1. Missing hash returns false.
   Supplemental is not searched. */

bool __thiscall FootprintComponent_IsNamedEnabled(void *this,int param_1)

{
  int iVar1;
  undefined4 *puVar2;
  uint uVar3;
  uint uVar4;
  int *piVar5;
  uint *puVar6;
  
  iVar1 = *(int *)((int)this + 0x28);
  if ((iVar1 == 0) && (*(int *)((int)this + 0x30) == 0)) {
    return false;
  }
  if (iVar1 != 0) {
    puVar2 = (undefined4 *)FootprintResource_GetPrimaryPolygonVector(iVar1);
    piVar5 = (int *)*puVar2;
    uVar3 = puVar2[1] - (int)piVar5 >> 6;
    uVar4 = 0;
    if (uVar3 != 0) {
      puVar6 = *(uint **)((int)this + 0x58);
      do {
        if (param_1 == *piVar5) goto LAB_00945069;
        uVar4 = uVar4 + 1;
        puVar6 = puVar6 + 1;
        piVar5 = piVar5 + 0x10;
      } while (uVar4 < uVar3);
    }
  }
  if (*(int *)((int)this + 0x30) != 0) {
    puVar2 = (undefined4 *)FootprintResource_GetSecondaryPolygonVector(*(int *)((int)this + 0x30));
    piVar5 = (int *)*puVar2;
    uVar3 = puVar2[1] - (int)piVar5 >> 6;
    uVar4 = 0;
    if (uVar3 != 0) {
      puVar6 = *(uint **)((int)this + 0x68);
      do {
        if (param_1 == *piVar5) {
LAB_00945069:
          return (bool)((byte)(*puVar6 >> 2) & 1);
        }
        uVar4 = uVar4 + 1;
        puVar6 = puVar6 + 1;
        piVar5 = piVar5 + 0x10;
      } while (uVar4 < uVar3);
    }
  }
  return false;
}

