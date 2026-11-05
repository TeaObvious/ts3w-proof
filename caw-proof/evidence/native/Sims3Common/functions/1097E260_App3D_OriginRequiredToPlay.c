/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_OriginRequiredToPlay. Export ordinal(s):
   1695. Entry VA: 0x1097e260. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060009D3. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl App3D_OriginRequiredToPlay(int *param_1)

{
  short sVar1;
  int *piVar2;
  short *psVar3;
  int *piVar5;
  int iVar6;
  undefined4 uVar7;
  int iVar8;
  undefined *local_20;
  undefined *local_1c;
  undefined2 *local_18;
  char *local_14;
  LPCWSTR local_10;
  undefined *local_c;
  undefined2 *local_8;
  char *local_4;
  short *psVar4;
  
                    /* 0x97e260  1695  App3D_OriginRequiredToPlay */
  iVar8 = 0;
  iVar6 = *param_1;
  local_14 = "Services/String";
  local_20 = &_Dst_10ca8244;
  local_1c = &_Dst_10ca8244;
  local_18 = &DAT_10ca8246;
  piVar2 = param_1;
  while (iVar6 != 0) {
    if (0 < iVar8) {
      psVar3 = (short *)&_Src_10ac9498;
      do {
        psVar4 = psVar3;
        psVar3 = psVar4 + 1;
      } while (*psVar3 != 0);
      FUN_1001f3b0(&local_20,(int *)&_Src_10ac9498,
                   (int *)(&_Src_10ac9498 + ((int)(psVar4 + -0x8564a4b) >> 1) * 2));
    }
    piVar2 = (int *)*piVar2;
    sVar1 = (short)*piVar2;
    piVar5 = piVar2;
    while (sVar1 != 0) {
      piVar5 = (int *)((int)piVar5 + 2);
      sVar1 = *(short *)piVar5;
    }
    FUN_1001f3b0(&local_20,piVar2,(int *)((int)piVar2 + ((int)piVar5 - (int)piVar2 >> 1) * 2));
    iVar8 = iVar8 + 1;
    piVar2 = param_1 + iVar8;
    iVar6 = param_1[iVar8];
  }
  local_4 = "Services/String";
  local_10 = (LPCWSTR)&_Dst_10ca8244;
  local_c = &_Dst_10ca8244;
  local_8 = &DAT_10ca8246;
  iVar6 = FUN_105c4440(&local_10);
  if (iVar6 == -1) {
    if ((2 < (int)((int)local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (LPCWSTR)0x0)) {
      FUN_10918e90((int)local_10);
    }
    if ((2 < (int)((int)local_18 - (int)local_20 & 0xfffffffeU)) && (local_20 != (undefined *)0x0))
    {
      FUN_10918e90((int)local_20);
    }
    return 0xffffffff;
  }
  uVar7 = FUN_105c4e60(&local_10,&local_20,'\0');
  if ((2 < (int)((int)local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (LPCWSTR)0x0)) {
    FUN_10918e90((int)local_10);
  }
  if ((2 < (int)((int)local_18 - (int)local_20 & 0xfffffffeU)) && (local_20 != (undefined *)0x0)) {
    FUN_10918e90((int)local_20);
  }
  return uVar7;
}

