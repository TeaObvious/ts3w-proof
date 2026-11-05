/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: PackageTool_Add. Export ordinal(s): 1998. Entry
   VA: 0x109874a0. Original managed P/Invoke MethodDef(s): WorldBuilderCS:0x06000163. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl PackageTool_Add(undefined4 param_1,LPCWSTR param_2,wchar_t *param_3)

{
  int ****ppppiVar1;
  LPVOID pvVar2;
  bool bVar3;
  char cVar4;
  undefined4 *puVar5;
  int *piVar6;
  int *****pppppiVar7;
  uint uVar8;
  DWORD DVar9;
  undefined4 uVar10;
  int *unaff_EDI;
  int *piVar11;
  int *piVar12;
  int ****local_25c;
  int ****local_258;
  int *local_254;
  undefined4 uStack_250;
  char *pcStack_24c;
  int aiStack_248 [4];
  LPVOID apvStack_238 [2];
  int iStack_230;
  undefined4 auStack_228 [138];
  
                    /* 0x9874a0  1998  PackageTool_Add */
  local_258 = (int ****)&local_25c;
  local_25c = (int ****)&local_25c;
  local_254 = (int *)0x0;
  puVar5 = FUN_10918fe0(0x398);
  if (puVar5 == (undefined4 *)0x0) {
    piVar6 = (int *)0x0;
  }
  else {
    piVar6 = FUN_108defd0(puVar5,(short *)0x0,0);
  }
  piVar11 = local_254;
  if (piVar6 != local_254) {
    piVar11 = piVar6;
    if ((int *****)local_258 == &local_25c) {
      if (local_254 != (int *)0x0) {
        (**(code **)*local_254)();
      }
    }
    else {
      local_25c[1] = (int ***)local_258;
      *local_258 = (int ***)local_25c;
      local_25c = (int ****)&local_25c;
      local_258 = local_25c;
    }
  }
  local_254 = piVar11;
  pppppiVar7 = (int *****)(**(code **)(*local_254 + 4))();
  if ((((char)pppppiVar7 == '\0') ||
      (pppppiVar7 = (int *****)(**(code **)(*local_254 + 0x2c))(), (char)pppppiVar7 == '\0')) ||
     (pppppiVar7 = (int *****)(**(code **)(*local_254 + 0x18))(), (char)pppppiVar7 == '\0')) {
    if (local_254 != (int *)0x0) {
      if ((int *****)local_258 == &local_25c) {
        uVar8 = (**(code **)*local_254)();
        return uVar8 & 0xffffff00;
      }
      local_25c[1] = (int ***)local_258;
      *local_258 = (int ***)local_25c;
      pppppiVar7 = (int *****)local_25c;
    }
    return (uint)pppppiVar7 & 0xffffff00;
  }
  FUN_10910830(auStack_228,param_3);
  bVar3 = FUN_10910380(auStack_228,1,6,1,0);
  if (!bVar3) {
    (**(code **)(*local_254 + 8))();
    FUN_10910890(auStack_228);
    uVar8 = FUN_109871a0((int *)&local_25c);
    return uVar8 & 0xffffff00;
  }
  DVar9 = FUN_10910530((int)auStack_228);
  pcStack_24c = "Scratch/PackageToolWrap/buf";
  FUN_10489170(apvStack_238,DVar9,(int *)&pcStack_24c);
  pvVar2 = apvStack_238[0];
  FUN_10910710(auStack_228,apvStack_238[0],DVar9);
  aiStack_248[0] = 0;
  aiStack_248[1] = 0;
  aiStack_248[2] = 0;
  aiStack_248[3] = 0;
  puVar5 = FUN_10926f20(apvStack_238,param_2,0xffffffff,(char *)0x0);
  FUN_1078d0f0((int)aiStack_248,puVar5);
  if ((1 < iStack_230 - (int)apvStack_238[0]) && (apvStack_238[0] != (LPVOID)0x0)) {
    FUN_10918e90((int)apvStack_238[0]);
  }
  uStack_250 = 0;
  piVar6 = aiStack_248;
  (**(code **)(*local_254 + 0x40))();
  piVar11 = local_254;
  ppppiVar1 = local_258;
  if (local_254 != (int *)0x0) {
    local_254 = (int *)0x0;
    (**(code **)(*piVar11 + 8))();
  }
  piVar12 = (int *)0x0;
  piVar11 = (int *)&DAT_00000001;
  cVar4 = (*(code *)(*ppppiVar1)[0xd])(&pcStack_24c,&local_254);
  if (cVar4 == '\0') {
    (**(code **)(*piVar6 + 8))();
    if (unaff_EDI != (int *)0x0) {
      (**(code **)(*unaff_EDI + 8))();
    }
    if (pvVar2 != (LPVOID)0x0) {
      FUN_10918e90((int)pvVar2);
    }
    FUN_10910890(aiStack_248 + 1);
    uVar8 = FUN_109871a0((int *)&stack0xfffffd88);
    return uVar8 & 0xffffff00;
  }
  piVar6 = (int *)(**(code **)(*unaff_EDI + 0x18))();
  (**(code **)(*piVar6 + 0x38))(pvVar2,DVar9);
  (**(code **)(*piVar12 + 0x20))();
  FUN_109104c0((int)&pcStack_24c);
  (**(code **)(*piVar11 + 8))();
  if (piVar12 != (int *)0x0) {
    (**(code **)(*piVar12 + 8))();
  }
  if (pvVar2 != (LPVOID)0x0) {
    FUN_10918e90((int)pvVar2);
  }
  FUN_10910890(&pcStack_24c);
  uVar10 = FUN_109871a0((int *)&stack0xfffffd80);
  return CONCAT31((int3)((uint)uVar10 >> 8),1);
}

