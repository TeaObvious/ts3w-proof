/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). AL query over runtime
   flag arrays. Matches (flags & required)==required and (flags & excluded)==0 across base primary,
   supplemental primary and base secondary. Distinct from named polygon collection. Extended copies
   have no independent flag array here. */

bool __thiscall FootprintComponent_HasEnabledFlags(void *this,uint param_1,uint param_2)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  uint *puVar4;
  
  if (*(int *)((int)this + 0x28) != 0) {
    piVar1 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x28));
    uVar2 = 0;
    uVar3 = piVar1[1] - *piVar1 >> 6;
    if (uVar3 != 0) {
      puVar4 = *(uint **)((int)this + 0x58);
      do {
        if (((*puVar4 & param_1) == param_1) && ((param_2 & *puVar4) == 0)) {
          return true;
        }
        uVar2 = uVar2 + 1;
        puVar4 = puVar4 + 1;
      } while (uVar2 < uVar3);
    }
  }
  if (*(int *)((int)this + 0x2c) != 0) {
    piVar1 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x2c));
    uVar2 = 0;
    uVar3 = piVar1[1] - *piVar1 >> 6;
    if (uVar3 != 0) {
      puVar4 = *(uint **)((int)this + 0x48);
      do {
        if (((*puVar4 & param_1) == param_1) && ((param_2 & *puVar4) == 0)) {
          return true;
        }
        uVar2 = uVar2 + 1;
        puVar4 = puVar4 + 1;
      } while (uVar2 < uVar3);
    }
  }
  if (*(int *)((int)this + 0x30) != 0) {
    piVar1 = (int *)FootprintResource_GetSecondaryPolygonVector(*(int *)((int)this + 0x30));
    uVar2 = 0;
    uVar3 = piVar1[1] - *piVar1 >> 6;
    if (uVar3 != 0) {
      puVar4 = *(uint **)((int)this + 0x68);
      do {
        if (((*puVar4 & param_1) == param_1) && ((param_2 & *puVar4) == 0)) {
          return true;
        }
        uVar2 = uVar2 + 1;
        puVar4 = puVar4 + 1;
      } while (uVar2 < uVar3);
    }
  }
  return false;
}

