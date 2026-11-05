/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). thiscall component,
   in/out unsigned cursor, required mask, output polygon pointer, low-byte requireAll. requireAll=1
   => (runtimeFlags & mask)==mask; otherwise any bit. Walks primary, supplemental, secondary layers.
   Primary extended resource maps expanded index to base flags by unsigned quotient; two DIVs
   require nonzero base flags and expansion ratio. Secondary here stays base resource, unlike
   CollectNamedPolygons. Advances cursor past match or exhausted layers; false leaves output pointer
   unchanged.
   
   PC1.67 capability consumer closure: B450F0 supplies required5 and requireAll1. Selection uses
   runtimeflags not solely serializedflags; walks primary/supplemental/secondary,
   incrementscursoronmatch, leavesoutputunchangedonfalse. Expanded primary index mapping uses
   actualunsignedquotients andrequiresnonzero ratio/count. Empty selectedareas do not bypass caller
   later pivot/region checks. No game-owned tool/feature switch comes fromthisenumerator. */

bool __thiscall
FootprintComponent_NextPolygonByRuntimeFlags
          (void *this,uint *param_1,uint param_2,int *param_3,char param_4)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint *puVar5;
  uint uVar6;
  uint uVar7;
  
  uVar7 = 0;
  if (*(int *)((int)this + 0x28) != 0) {
    if (*(int *)((int)this + 0x34) == 0) {
      piVar1 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x28));
      uVar6 = *param_1;
      uVar7 = piVar1[1] - *piVar1 >> 6;
      if (uVar6 < uVar7) {
        puVar5 = (uint *)(*(int *)((int)this + 0x58) + uVar6 * 4);
        uVar2 = uVar6;
        do {
          if (param_4 == '\0') {
            uVar3 = *puVar5 & param_2;
          }
          else {
            uVar3 = (uint)((*puVar5 & param_2) == param_2);
          }
          if (uVar3 != 0) {
            *param_3 = uVar2 * 0x40 + *piVar1;
            *param_1 = uVar2 + 1;
            return true;
          }
          uVar2 = uVar2 + 1;
          puVar5 = puVar5 + 1;
        } while (uVar2 < uVar7);
      }
      if (uVar7 <= uVar6) goto LAB_009451a0;
    }
    else {
      piVar1 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x34));
      uVar7 = piVar1[1] - *piVar1 >> 6;
      uVar6 = *param_1;
      if (uVar6 < uVar7) {
        do {
          uVar2 = *(uint *)(*(int *)((int)this + 0x58) +
                           (int)((ulonglong)uVar6 /
                                ((ulonglong)uVar7 /
                                (ulonglong)
                                (uint)(*(int *)((int)this + 0x5c) - *(int *)((int)this + 0x58) >> 2)
                                )) * 4) & param_2;
          if (param_4 != '\0') {
            uVar2 = (uint)(uVar2 == param_2);
          }
          if (uVar2 != 0) {
            *param_3 = uVar6 * 0x40 + *piVar1;
            *param_1 = uVar6 + 1;
            return true;
          }
          uVar6 = uVar6 + 1;
        } while (uVar6 < uVar7);
      }
      if (uVar7 <= *param_1) goto LAB_009451a0;
    }
    *param_1 = uVar7;
  }
LAB_009451a0:
  if (*(int *)((int)this + 0x2c) != 0) {
    piVar1 = (int *)FootprintResource_GetPrimaryPolygonVector(*(int *)((int)this + 0x2c));
    iVar4 = *piVar1;
    uVar2 = piVar1[1] - iVar4 >> 6;
    uVar6 = *param_1 - uVar7;
    if (uVar6 < uVar2) {
      puVar5 = (uint *)(*(int *)((int)this + 0x48) + uVar6 * 4);
      do {
        uVar3 = *puVar5 & param_2;
        if (param_4 != '\0') {
          uVar3 = (uint)(uVar3 == param_2);
        }
        if (uVar3 != 0) goto LAB_009452a3;
        uVar6 = uVar6 + 1;
        puVar5 = puVar5 + 1;
      } while (uVar6 < uVar2);
    }
    uVar7 = uVar7 + uVar2;
    if (*param_1 < uVar7) {
      *param_1 = uVar7;
    }
  }
  if (*(int *)((int)this + 0x30) != 0) {
    piVar1 = (int *)FootprintResource_GetSecondaryPolygonVector(*(int *)((int)this + 0x30));
    iVar4 = *piVar1;
    uVar2 = piVar1[1] - iVar4 >> 6;
    uVar6 = *param_1 - uVar7;
    if (uVar6 < uVar2) {
      puVar5 = (uint *)(*(int *)((int)this + 0x68) + uVar6 * 4);
      do {
        uVar3 = *puVar5 & param_2;
        if (param_4 != '\0') {
          uVar3 = (uint)(uVar3 == param_2);
        }
        if (uVar3 != 0) {
LAB_009452a3:
          *param_3 = uVar6 * 0x40 + iVar4;
          *param_1 = uVar6 + 1 + uVar7;
          return true;
        }
        uVar6 = uVar6 + 1;
        puVar5 = puVar5 + 1;
      } while (uVar6 < uVar2);
    }
    if (*param_1 < uVar7 + uVar2) {
      *param_1 = uVar7 + uVar2;
    }
  }
  return false;
}

