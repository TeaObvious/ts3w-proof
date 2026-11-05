/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Original instruction review: cdecl outkey, sourcekey andoptional key range. Type220557da
   hasseparate0099a1d0 path. Otherwise combines first uint32 RNGoutput shifted by 32 (EAX/EDX
   withCL=32 __allshl ABI) with second uint32 RNGoutput. Copies originaltype/group unchanged. Tries
   up to 5000 while checking resourcehostandowner key collisions andoptionalrange. Exhaustion
   returns the last candidate without a distinct failure code. Decompiler __allshl(0x20,0)
   andlatercopiedwordexpressions are incorrect register/stackrenderings; original instructions
   govern. */

uint * __cdecl
DownloadContent_GenerateUnusedResourceKey(uint *param_1,uint *param_2,undefined4 *param_3)

{
  char cVar1;
  void *this;
  int *piVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  longlong lVar6;
  ulonglong uVar7;
  uint local_10;
  uint local_c;
  uint local_8;
  uint local_4;
  
  if (param_2[2] == 0x220557da) {
    FUN_0099a1d0(param_1,param_2);
    return param_1;
  }
  if ((_DAT_011ea6a0 & 1) == 0) {
    _DAT_011ea6a0 = _DAT_011ea6a0 | 1;
    FUN_004fa9f0(&DAT_011ea69c,-1);
  }
  FUN_004afe80();
  local_4 = param_2[3];
  local_10 = 0;
  local_c = 0;
  local_8 = param_2[2];
  iVar5 = 5000;
  while (iVar5 != 0) {
    FUN_004faa10((uint *)&DAT_011ea69c);
    lVar6 = __allshl(0x20,0);
    uVar7 = FUN_004faa10((uint *)&DAT_011ea69c);
    local_10 = (uint)uVar7 | (uint)lVar6;
    local_c = (uint)((ulonglong)lVar6 >> 0x20);
    this = DownloadContent_GetOwnerFromGlobalLink();
    piVar2 = (int *)FUN_004afe80();
    iVar3 = (**(code **)(*piVar2 + 0x58))(&local_10);
    if (iVar3 == 0) {
      iVar3 = (**(code **)(*piVar2 + 0x44))(&local_10);
      if (iVar3 != 0) goto LAB_0099a399;
      cVar1 = FUN_00984200(this,(int *)&local_10);
      if (cVar1 != '\0') goto LAB_0099a399;
      if (param_3 == (undefined4 *)0x0) break;
      piVar2 = (int *)param_3[1];
      piVar4 = (int *)FUN_005b5ea0((int *)*param_3,piVar2,(int *)&local_10);
      if (piVar4 == piVar2) break;
      iVar5 = iVar5 + -1;
    }
    else {
LAB_0099a399:
      iVar5 = iVar5 + -1;
    }
  }
  *param_1 = local_10;
  param_1[1] = local_c;
  param_1[2] = local_8;
  param_1[3] = local_4;
  return param_1;
}

