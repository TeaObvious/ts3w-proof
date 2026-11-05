/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_InjectTattooOpacity. Export ordinal(s):
   116. Entry VA: 0x1039f0c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000490. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined2 * __cdecl CASUtils_InjectTattooOpacity(int param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  undefined **ppuStack_8c;
  undefined1 auStack_88 [4];
  undefined **appuStack_84 [2];
  undefined2 uStack_7c;
  undefined2 uStack_7a;
  undefined4 auStack_6c [2];
  undefined4 auStack_64 [25];
  
                    /* 0x39f0c0  116  CASUtils_InjectTattooOpacity */
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return (undefined2 *)0x0;
  }
  FUN_103ba880(auStack_64);
  FUN_103bae20(auStack_64,pWVar2);
  FUN_103ba050(auStack_64,(byte *)"ColorAlphaMultiply",2,param_1,0);
  ppuStack_8c = (undefined **)0x10afa858;
  FUN_103baae0(auStack_64,(undefined4 *)&stack0xffffff68);
  appuStack_84[0] = &PTR_FUN_10aca5b4;
  uStack_7a = 0x13;
  uStack_7c = 0xb;
  FUN_10928b90(appuStack_84,0x13,9,&stack0xffffff68,0x10,1);
  (**(code **)(*piVar1 + 0x50))(appuStack_84,auStack_88);
  ppuStack_8c = &PTR_FUN_10aca5b4;
  if (((uint)appuStack_84[0] & 4) != 0) {
    FUN_10928a90(&ppuStack_8c,'\0');
  }
  if ((2 < (int)((int)&_Dst_10ca8244 - param_1 & 0xfffffffeU)) && (param_1 != 0)) {
    FUN_10918e90(param_1);
  }
  FUN_103baaa0(auStack_6c);
  return &DAT_10ca8246;
}

