/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   App3D_GetWorldBuilderCompatibilityVersionFromGame. Export ordinal(s): 1690. Entry VA: 0x1097e5d0.
   Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009CE. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

long __cdecl App3D_GetWorldBuilderCompatibilityVersionFromGame(int *param_1)

{
  int iVar1;
  long lVar2;
  wchar_t *local_654;
  undefined *local_650;
  undefined2 *local_64c;
  char *local_648;
  short *local_644 [2];
  int local_63c;
  int *local_638;
  char *local_630;
  short *local_62c;
  int local_568 [2];
  int local_560;
  int *local_55c;
  char *local_554;
  int local_550;
  undefined4 local_48c [291];
  
                    /* 0x97e5d0  1690  App3D_GetWorldBuilderCompatibilityVersionFromGame */
  if (param_1 != (int *)0x0) {
    FUN_10072150(local_644,param_1);
    local_630 = "Services/EAIO/PathString";
    FUN_10072150(local_568,(int *)PTR_u_Default_ini_10c59b30);
    local_554 = "Services/EAIO/PathString";
    FUN_109154b0((int *)local_644,local_568);
    FUN_10925100(local_48c,local_644[0],0,0);
    local_654 = (wchar_t *)&_Dst_10ca8244;
    local_650 = &_Dst_10ca8244;
    local_648 = "Scratch/CLRHosting/App3D_GetWorldBuilderCompatibilityVersionFromGame/value";
    local_64c = &DAT_10ca8246;
    iVar1 = FUN_10923910(local_48c,PTR_u_Version_10c59b34,
                         (short *)PTR_u_WorldBuilderCompatibilityVersion_10c59b38,&local_654);
    if (0 < iVar1) {
      lVar2 = _wtol(local_654);
      if ((2 < (int)((int)local_64c - (int)local_654 & 0xfffffffeU)) &&
         (local_654 != (wchar_t *)0x0)) {
        FUN_10918e90((int)local_654);
      }
      FUN_109241b0(local_48c);
      iVar1 = local_560 - local_568[0] >> 1;
      if (((1 < iVar1) && (local_568[0] != 0)) && (local_568[0] != local_550)) {
        (**(code **)(*local_55c + 0xc))(local_568[0],iVar1 * 2);
      }
      iVar1 = local_63c - (int)local_644[0] >> 1;
      if (((1 < iVar1) && (local_644[0] != (short *)0x0)) && (local_644[0] != local_62c)) {
        (**(code **)(*local_638 + 0xc))(local_644[0],iVar1 * 2);
      }
      return lVar2;
    }
    if ((2 < (int)((int)local_64c - (int)local_654 & 0xfffffffeU)) && (local_654 != (wchar_t *)0x0))
    {
      FUN_10918e90((int)local_654);
    }
    FUN_109241b0(local_48c);
    iVar1 = local_560 - local_568[0] >> 1;
    if (((1 < iVar1) && (local_568[0] != 0)) && (local_568[0] != local_550)) {
      (**(code **)(*local_55c + 0xc))(local_568[0],iVar1 * 2);
    }
    iVar1 = local_63c - (int)local_644[0] >> 1;
    if (((1 < iVar1) && (local_644[0] != (short *)0x0)) && (local_644[0] != local_62c)) {
      (**(code **)(*local_638 + 0xc))(local_644[0],iVar1 * 2);
    }
  }
  return -1;
}

