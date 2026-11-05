/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Sims3Bundle_CreateBundle. Export ordinal(s):
   2395. Entry VA: 0x109922c0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000619. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

char __cdecl
Sims3Bundle_CreateBundle
          (LPCWSTR param_1,int param_2,int param_3,wchar_t *param_4,int *param_5,char param_6)

{
  WCHAR WVar1;
  wchar_t wVar2;
  char cVar3;
  LPCWSTR pWVar4;
  wchar_t *pwVar5;
  undefined4 uVar6;
  char *local_3e8;
  int local_3e4 [3];
  char *local_3d8;
  undefined1 local_3d4 [12];
  undefined4 *local_3c8;
  int local_3b8 [3];
  char *local_3ac;
  undefined4 local_3a8 [117];
  undefined4 local_1d4 [117];
  
                    /* 0x9922c0  2395  Sims3Bundle_CreateBundle */
  if (param_1 == (LPCWSTR)0x0) {
    return '\0';
  }
  pWVar4 = param_1;
  do {
    WVar1 = *pWVar4;
    pWVar4 = pWVar4 + 1;
  } while (WVar1 != L'\0');
  if ((int)pWVar4 - (int)(param_1 + 1) >> 1 == 0) {
    return '\0';
  }
  if ((0 < param_2) && (param_3 == 0)) {
    return '\0';
  }
  if (param_4 == (wchar_t *)0x0) {
    return '\0';
  }
  pwVar5 = param_4;
  do {
    wVar2 = *pwVar5;
    pwVar5 = pwVar5 + 1;
  } while (wVar2 != L'\0');
  if ((int)pwVar5 - (int)(param_4 + 1) >> 1 == 0) {
    return '\0';
  }
  local_3e4[0] = 0;
  local_3e4[1] = 0;
  local_3e4[2] = 0;
  local_3d8 = "CSHost/Sims3BundleWrap/packages";
  local_3b8[0] = 0;
  local_3b8[1] = 0;
  local_3b8[2] = 0;
  local_3ac = "CSHost/Sims3BundleWrap/packagesAdded";
  local_3e8 = "CSHost/Sims3BundleWrap/superBundleFlags";
  FUN_10421600(local_3d4,&local_3e8);
  uVar6 = FUN_10991e80(param_1,param_2,param_3,local_3e4,param_5,local_3d4);
  if ((char)uVar6 != '\0') {
    FUN_107b5490(local_1d4);
    cVar3 = FUN_107b3a20(local_1d4,1);
    if ((cVar3 == '\0') || (uVar6 = FUN_107b96b0(local_1d4,param_1), (char)uVar6 == '\0')) {
      FUN_107b5700(local_1d4);
    }
    else {
      FUN_107b8260(local_3a8,(int)local_1d4);
      cVar3 = FUN_107b3a20(local_3a8,2);
      if (cVar3 != '\0') {
        FUN_107b41b0((int)local_1d4);
        uVar6 = FUN_109914a0(param_1,local_3a8,local_3e4,local_3b8,(int)local_3d4);
        if ((char)uVar6 != '\0') {
          uVar6 = FUN_10991b20(param_2,param_3,local_3a8,local_3e4,local_3b8,param_6,(int)local_3d4)
          ;
          if ((char)uVar6 != '\0') {
            cVar3 = FUN_107b7ba0(local_3a8,param_4);
            FUN_107b41b0((int)local_3a8);
            FUN_107b5700(local_3a8);
            FUN_107b5700(local_1d4);
            FUN_10121510(local_3c8);
            if (local_3b8[0] != 0) {
              FUN_10918e90(local_3b8[0]);
            }
            if (local_3e4[0] != 0) {
              FUN_10918e90(local_3e4[0]);
            }
            return cVar3;
          }
        }
        FUN_107b41b0((int)local_3a8);
        FUN_107b5700(local_3a8);
        FUN_107b5700(local_1d4);
        FUN_10121510(local_3c8);
        if (local_3b8[0] != 0) {
          FUN_10918e90(local_3b8[0]);
        }
        goto LAB_10992438;
      }
      FUN_107b41b0((int)local_1d4);
      FUN_107b5700(local_3a8);
      FUN_107b5700(local_1d4);
    }
  }
  FUN_10121510(local_3c8);
LAB_10992438:
  if (local_3e4[0] != 0) {
    FUN_10918e90(local_3e4[0]);
  }
  return '\0';
}

