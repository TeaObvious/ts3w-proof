/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 chimney-query boundary. ECXroofmanager, three physical words, RET0C, ALstatus;
   inferred LPCRITICAL_SECTION formal is not an input pointer contract. Lowbyte secondword selects
   exactlevel versus startlevel-and-above; thirdbyte permits coverage without virtual50 eave
   exclusion. Locks real manager+A0 while enumerating retained roof objects via virtual48/50, then
   unlocks. Caller owns coordinate/level record; project triangle list does not reproduce every
   object predicate/lifetime. */

uint __thiscall
RoofManager_TestPointCoverage
          (void *this,undefined4 *param_1,LPCRITICAL_SECTION param_2,char param_3)

{
  LPCRITICAL_SECTION p_Var1;
  int *piVar2;
  int iVar3;
  void *pvVar4;
  char cVar5;
  LPCRITICAL_SECTION *pp_Var6;
  uint uVar7;
  LONG LVar8;
  int iVar9;
  int iVar10;
  void *pvVar11;
  int *piVar12;
  LPCRITICAL_SECTION local_18;
  void *local_8;
  int local_4;
  
  local_8 = this;
  if ((char)param_2 == '\0') {
    uVar7 = param_1[2];
    if ((-1 < (int)uVar7) &&
       ((int)uVar7 < *(int *)((int)this + 0x10) - *(int *)((int)this + 0xc) >> 5)) {
      p_Var1 = (LPCRITICAL_SECTION)((int)this + 0xa0);
      param_2 = p_Var1;
      FUN_004e1c00(p_Var1,(uint *)&DAT_01070b2c);
      pvVar11 = (void *)(param_1[2] * 0x20 + *(int *)((int)this + 0xc));
      PickCandidateMap_Begin(pvVar11,&local_8);
      pvVar11 = *(void **)(*(int *)((int)pvVar11 + 4) + *(int *)((int)pvVar11 + 8) * 4);
      pvVar4 = local_8;
      iVar9 = local_4;
      while (pvVar4 != pvVar11) {
        piVar12 = *(int **)((int)pvVar4 + 4);
        if (((piVar12 != (int *)0x0) &&
            (cVar5 = (**(code **)(*piVar12 + 0x48))(*param_1,param_1[1]), cVar5 != '\0')) &&
           ((param_3 != '\0' ||
            (cVar5 = (**(code **)(*piVar12 + 0x50))(*param_1,param_1[1]), cVar5 == '\0')))) {
          LVar8 = FUN_004e1cc0(param_2);
          return CONCAT31((int3)((uint)LVar8 >> 8),1);
        }
        pvVar4 = *(void **)((int)pvVar4 + 8);
        while (p_Var1 = param_2, pvVar4 == (void *)0x0) {
          piVar12 = (int *)(iVar9 + 4);
          iVar9 = iVar9 + 4;
          pvVar4 = (void *)*piVar12;
        }
      }
      uVar7 = FUN_004e1cc0(p_Var1);
    }
    return uVar7 & 0xffffff00;
  }
  p_Var1 = (LPCRITICAL_SECTION)((int)this + 0xa0);
  FUN_004e1c00(p_Var1,(uint *)&DAT_01070b2c);
  pp_Var6 = (LPCRITICAL_SECTION *)(param_1 + 2);
  param_2 = (LPCRITICAL_SECTION)0x0;
  if ((int)*pp_Var6 < 1) {
    pp_Var6 = &param_2;
  }
  local_18 = *pp_Var6;
  iVar9 = *(int *)((int)this + 0x10) - *(int *)((int)this + 0xc) >> 5;
  if ((int)local_18 < iVar9) {
    param_2 = (LPCRITICAL_SECTION)((int)local_18 << 5);
    do {
      piVar2 = *(int **)((int)&param_2->LockCount + *(int *)((int)this + 0xc));
      iVar10 = *piVar2;
      piVar12 = piVar2;
      if (iVar10 == 0) {
        piVar12 = piVar2 + 1;
        iVar10 = piVar2[1];
        while (iVar10 == 0) {
          piVar12 = piVar12 + 1;
          iVar10 = *piVar12;
        }
        iVar10 = *piVar12;
      }
      iVar3 = piVar2[*(int *)((int)&param_2->RecursionCount + *(int *)((int)this + 0xc))];
      while (iVar10 != iVar3) {
        piVar2 = *(int **)(iVar10 + 4);
        if (((piVar2 != (int *)0x0) &&
            (cVar5 = (**(code **)(*piVar2 + 0x48))(*param_1,param_1[1]), cVar5 != '\0')) &&
           ((param_3 != '\0' ||
            (cVar5 = (**(code **)(*piVar2 + 0x50))(*param_1,param_1[1]), cVar5 == '\0')))) {
          LVar8 = FUN_004e1cc0(p_Var1);
          return CONCAT31((int3)((uint)LVar8 >> 8),1);
        }
        iVar10 = *(int *)(iVar10 + 8);
        while (this = local_8, iVar10 == 0) {
          piVar2 = piVar12 + 1;
          piVar12 = piVar12 + 1;
          iVar10 = *piVar2;
        }
      }
      param_2 = (LPCRITICAL_SECTION)&param_2[1].RecursionCount;
      local_18 = (LPCRITICAL_SECTION)((int)&local_18->DebugInfo + 1);
    } while ((int)local_18 < iVar9);
  }
  uVar7 = FUN_004e1cc0(p_Var1);
  return uVar7 & 0xffffff00;
}

