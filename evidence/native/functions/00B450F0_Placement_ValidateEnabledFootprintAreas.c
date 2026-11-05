/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 cdecl context/optionalfeedback, plainRET lowALBoolean. Null object or absent Footprint
   component returns1. Calls945080 cursor0 requiredmask5 requireAll1; selected nonempty polygon
   vectors callB44CE0. No enabled area yields no per-area rejection, BUT later
   pivot/region/special-state checks remain and can fail. Failure can shortcircuit without feedback
   or accumulate with it. Missing resource authority is not the same as no component. */

bool __cdecl Placement_ValidateEnabledFootprintAreas(int *param_1,void *param_2)

{
  int *piVar1;
  bool bVar2;
  char cVar3;
  void *this;
  undefined4 uVar4;
  void *pvVar5;
  int iVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  bool local_79;
  uint local_78;
  float local_74 [9];
  float local_50 [19];
  
  local_79 = true;
  if (((void *)*param_1 == (void *)0x0) ||
     (this = Object_GetComponentByMask((void *)*param_1,DAT_011e9fa8), this == (void *)0x0)) {
    return true;
  }
  piVar1 = param_1 + 0x27;
  local_78 = 0;
  *piVar1 = 0;
  if ((*(char *)((int)param_1 + 0x81) == '\0') ||
     (uVar4 = FUN_00b00810(*param_1), (char)uVar4 != '\0')) {
    fVar9 = (float)param_1[3];
    iVar6 = param_1[7];
    pvVar5 = (void *)*param_1;
    fVar8 = (float)param_1[2];
    fVar7 = (float)param_1[5];
  }
  else {
    fVar9 = (float)param_1[3];
    fVar8 = (float)param_1[2];
    fVar7 = (float)param_1[5];
    iVar6 = 0;
    pvVar5 = (void *)0x0;
  }
  Footprint_BuildXZRotationTranslationMatrix(pvVar5,iVar6,fVar7,fVar8,fVar9,'\0',local_74);
  bVar2 = FootprintComponent_NextPolygonByRuntimeFlags(this,&local_78,5,piVar1,'\x01');
  if (bVar2) {
    do {
      if (((*(int *)(*piVar1 + 0x30) != *(int *)(*piVar1 + 0x34)) &&
          (bVar2 = Placement_ValidateTransformedFootprintCoverage(param_1,local_74,param_2), !bVar2)
          ) && (local_79 = bVar2, param_2 == (void *)0x0)) {
        return false;
      }
      bVar2 = FootprintComponent_NextPolygonByRuntimeFlags(this,&local_78,5,piVar1,'\x01');
    } while (bVar2);
  }
  if (param_1[0x26] != 0) {
    return local_79;
  }
  if (((*(char *)((int)param_1 + 0x82) == '\0') &&
      (uVar4 = FUN_00b00d70((void *)*param_1,0x10,'\0'), (char)uVar4 != '\0')) &&
     (uVar4 = FUN_00b00d70((void *)*param_1,0x20,'\0'), (char)uVar4 == '\0')) {
    cVar3 = FUN_00b46f60(*(void **)(param_1[1] + 0x298),(float *)(param_1 + 2));
    if (cVar3 == '\0') {
      if (param_2 == (void *)0x0) {
        return false;
      }
      FUN_00ad6720(local_50,0xbe,param_1[1],(float *)(param_1 + 2),0,0);
      FUN_00ad8570(param_2,local_50);
      FUN_00ad70d0((int)local_50);
      return false;
    }
  }
  return local_79;
}

