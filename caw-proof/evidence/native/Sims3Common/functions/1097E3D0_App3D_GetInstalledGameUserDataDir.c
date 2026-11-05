/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: App3D_GetInstalledGameUserDataDir. Export
   ordinal(s): 1687. Entry VA: 0x1097e3d0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060009CC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 App3D_GetInstalledGameUserDataDir(void)

{
  WCHAR WVar1;
  LPWSTR _Src;
  LPWSTR pWVar2;
  int iVar3;
  WCHAR *pWVar4;
  int *piVar5;
  int iVar6;
  undefined4 uVar7;
  uint uVar8;
  uint cchBufferMax;
  int iVar9;
  uint local_254;
  LPWSTR local_250;
  LPWSTR local_24c;
  undefined2 *local_248;
  char *local_244;
  ushort *local_240;
  int local_23c;
  undefined4 local_238;
  char *local_234;
  int local_230;
  int local_22c;
  WCHAR local_228;
  WCHAR local_226 [15];
  short local_208 [260];
  
                    /* 0x97e3d0  1687  App3D_GetInstalledGameUserDataDir */
  pWVar2 = FUN_105c4190(&local_228,0x10);
  if (pWVar2 == (LPWSTR)0x0) {
    return 0;
  }
  local_240 = (ushort *)0x0;
  local_23c = 0;
  local_238 = 0;
  local_234 = "Scratch/CLRHosting/App3D_GetInstalledGameUserDataDir/locale";
  FUN_1006a620(&local_240,pWVar2);
  local_254 = 0;
  uVar8 = 1000;
  do {
    iVar3 = LoadStringW((HINSTANCE)&hInstance_10000000,uVar8,&local_228,0x10);
    if (iVar3 != 0) {
      pWVar4 = &local_228;
      WVar1 = local_228;
      while (WVar1 != L'\0') {
        pWVar4 = pWVar4 + 1;
        WVar1 = *pWVar4;
      }
      iVar3 = local_23c - (int)local_240 >> 1;
      iVar9 = ((int)pWVar4 - (int)&local_228 >> 1) * 2 >> 1;
      local_230 = iVar3;
      local_22c = iVar9;
      piVar5 = &local_22c;
      if (iVar3 <= iVar9) {
        piVar5 = &local_230;
      }
      iVar6 = FUN_1006c960(local_240,(ushort *)&local_228,*piVar5);
      if (((iVar6 == 0) && (iVar9 <= iVar3)) && (iVar3 <= iVar9)) {
        local_254 = uVar8 & 0xffff;
        goto LAB_1097e4b2;
      }
    }
    uVar8 = uVar8 + 100;
    if (0xce3 < (int)uVar8) {
LAB_1097e4b2:
      FUN_10931e80(local_208,L"Electronic Arts\\",0x208);
      local_244 = "Scratch/GetLocalizedString/localizedString";
      local_250 = (LPWSTR)&_Dst_10ca8244;
      local_24c = (LPWSTR)&_Dst_10ca8244;
      local_248 = &DAT_10ca8246;
      FUN_1006a8f0(&local_250,0x200,0);
      _Src = local_24c;
      pWVar2 = local_250;
      cchBufferMax = (int)local_24c - (int)local_250 >> 1;
      uVar8 = LoadStringW((HINSTANCE)&hInstance_10000000,local_254 + 2,local_250,cchBufferMax);
      if (uVar8 < cchBufferMax) {
        if (pWVar2 + uVar8 != _Src) {
          memmove(pWVar2 + uVar8,_Src,2);
        }
      }
      else if (cchBufferMax < uVar8) {
        FUN_1006a8f0(&local_250,uVar8 - cchBufferMax,0);
        pWVar2 = local_250;
      }
      FUN_10931f70(local_208,pWVar2,0x208);
      if ((2 < (int)((int)local_248 - (int)pWVar2 & 0xfffffffeU)) && (pWVar2 != (LPWSTR)0x0)) {
        FUN_10918e90((int)pWVar2);
      }
      FUN_10931f70(local_208,&DAT_10ab4134,0x208);
      uVar7 = Ordinal_2(local_208);
      if ((2 < (int)(local_23c - (int)local_244 & 0xfffffffeU)) && (local_244 != (char *)0x0)) {
        FUN_10918e90((int)local_244);
      }
      return uVar7;
    }
  } while( true );
}

