/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Collects by runtime
   flags +0x58,+0x48,+0x68. Primary and secondary can substitute extended resource +0x34 and grouped
   collector; supplemental stays direct. Query holds required/excluded masks, relative-level byte
   and optional hash/extra outputs. Named collector 0x009470e0 does not use these masks. */

void __thiscall FootprintComponent_CollectByFlagsAndLevel(void *this,undefined4 *param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  iVar1 = *(int *)((int)this + 0x28);
  if (((iVar1 != 0) || (*(int *)((int)this + 0x2c) != 0)) || (*(int *)((int)this + 0x34) != 0)) {
    if (iVar1 != 0) {
      if (*(int *)((int)this + 0x34) == 0) {
        piVar3 = (int *)((int)this + 0x58);
        puVar4 = param_1;
        piVar2 = (int *)FootprintResource_GetPrimaryPolygonVector(iVar1);
        FootprintPolygonVector_CollectByFlagsAndLevel(piVar2,piVar3,puVar4);
      }
      else {
        piVar3 = (int *)((int)this + 0x58);
        puVar4 = param_1;
        piVar2 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x34));
        FootprintPolygonVector_CollectExpandedByFlagsAndLevel(piVar2,piVar3,puVar4);
      }
    }
    if (*(int *)((int)this + 0x2c) != 0) {
      piVar3 = (int *)((int)this + 0x48);
      puVar4 = param_1;
      piVar2 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x2c));
      FootprintPolygonVector_CollectByFlagsAndLevel(piVar2,piVar3,puVar4);
    }
    if (*(int *)((int)this + 0x30) != 0) {
      if (*(int *)((int)this + 0x34) != 0) {
        piVar3 = (int *)((int)this + 0x68);
        piVar2 = (int *)FootprintResource_GetSecondaryPolygonVector(*(int *)((int)this + 0x34));
        FootprintPolygonVector_CollectExpandedByFlagsAndLevel(piVar2,piVar3,param_1);
        return;
      }
      piVar3 = (int *)((int)this + 0x68);
      piVar2 = (int *)FootprintResource_GetSecondaryPolygonVector(*(int *)((int)this + 0x30));
      FootprintPolygonVector_CollectByFlagsAndLevel(piVar2,piVar3,param_1);
    }
  }
  return;
}

