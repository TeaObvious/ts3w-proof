/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_OpenPackage. Export ordinal(s): 2036.
   Entry VA: 0x1098b330. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000892. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl ResourceMgr_OpenPackage(uint param_1,char *param_2,uint param_3)

{
  int ****ppppiVar1;
  int *****pppppiVar2;
  void *pvVar3;
  char cVar4;
  int *piVar5;
  int ***pppiVar6;
  uint uVar7;
  wchar_t *_Str2;
  int iVar8;
  undefined4 *this;
  int *piVar9;
  int ***unaff_EBX;
  undefined4 unaff_retaddr;
  int ***local_2c;
  int local_28 [2];
  int ****ppppiStack_20;
  int ****ppppiStack_1c;
  int *piStack_18;
  undefined4 ****local_14;
  undefined4 ****local_10;
  undefined4 local_c;
  undefined4 local_8;
  wchar_t *local_4;
  
                    /* 0x98b330  2036  ResourceMgr_OpenPackage */
  piVar5 = (int *)FUN_108e50d0();
  if (piVar5 == (int *)0x0) {
    return 0xffffffff;
  }
  pppiVar6 = (int ***)ResourceMgr_HashString(param_2);
  pvVar3 = DAT_10cb8078;
  local_2c = pppiVar6;
  FUN_106a8410(DAT_10cb8078,local_28,(uint *)&local_2c);
  if (local_28[0] != *(int *)(*(int *)((int)pvVar3 + 4) + *(int *)((int)pvVar3 + 8) * 4)) {
    uVar7 = (**(code **)(**(int **)(local_28[0] + 4) + 0x20))();
    if ((param_3 & ~uVar7) == 0) {
      return (uint)pppiVar6;
    }
    return 0xffffffff;
  }
  local_c = FUN_10722830();
  local_14 = &local_14;
  local_8 = 0;
  local_4 = L"ResourceSystem/ManagerWrap";
  local_10 = local_14;
  (**(code **)(*piVar5 + 0x48))(local_14);
  if ((int *****)ppppiStack_1c != &ppppiStack_1c) {
    do {
      ppppiVar1 = (int ****)ppppiStack_1c[2];
      _Str2 = (wchar_t *)(*(code *)(*ppppiVar1)[10])();
      iVar8 = _wcsicmp(local_4,_Str2);
      if (iVar8 == 0) {
        uVar7 = (*(code *)(*ppppiVar1)[8])();
        if ((param_1 & ~uVar7) == 0) {
          (*(code *)*ppppiVar1[1])();
          local_2c = (int ***)ppppiVar1;
          FUN_105c6f80(DAT_10cb8078,local_28,(uint *)&stack0xffffffd0);
          FUN_10a8e530(&ppppiStack_1c);
          return (uint)unaff_EBX;
        }
        goto LAB_1098b572;
      }
      ppppiStack_1c = (int ****)*ppppiStack_1c;
      pppiVar6 = unaff_EBX;
    } while ((int *****)ppppiStack_1c != &ppppiStack_1c);
  }
  this = FUN_10919060(0x398,"ResMan",0);
  if (this == (undefined4 *)0x0) {
    piVar9 = (int *)0x0;
  }
  else {
    piVar9 = FUN_108defd0(this,(short *)0x0,0);
    if (piVar9 != (int *)0x0) {
      (**(code **)piVar9[1])();
    }
  }
  cVar4 = (**(code **)(*piVar9 + 0x2c))(local_4);
  if (cVar4 == '\0') {
    (**(code **)(piVar9[1] + 4))();
    if ((int *****)ppppiStack_20 != &ppppiStack_20) {
      do {
        pppppiVar2 = (int *****)*ppppiStack_20;
        (**(code **)(*piStack_18 + 0xc))(ppppiStack_20,0xc);
        ppppiStack_20 = (int ****)pppppiVar2;
      } while (pppppiVar2 != &ppppiStack_20);
    }
    return 0xffffffff;
  }
  cVar4 = (**(code **)(*piVar9 + 4))();
  if (cVar4 == '\0') {
    (**(code **)(piVar9[1] + 4))();
    FUN_10a8e530(&ppppiStack_20);
    return 0xffffffff;
  }
  cVar4 = (**(code **)(*piVar9 + 0x18))(unaff_retaddr,param_1,0);
  if (cVar4 != '\0') {
    FUN_105c6f80(DAT_10cb8078,(undefined4 *)&stack0xffffffc8,(uint *)&stack0xffffffc0);
    (**(code **)(*piVar5 + 0x34))(1,piVar9,0);
    FUN_10a8e530((undefined4 *)&stack0xffffffc8);
    return (uint)pppiVar6;
  }
  (**(code **)(*piVar9 + 8))();
  (**(code **)(piVar9[1] + 4))();
LAB_1098b572:
  FUN_10a8e530(&ppppiStack_1c);
  return 0xffffffff;
}

