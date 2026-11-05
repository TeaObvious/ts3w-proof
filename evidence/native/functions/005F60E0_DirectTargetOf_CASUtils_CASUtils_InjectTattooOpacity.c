/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_InjectTattooOpacity at
   0x005a5820, bytes e9bb080500. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

undefined2 * __cdecl DirectTargetOf_CASUtils_CASUtils_InjectTattooOpacity(int param_1)

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
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return (undefined2 *)0x0;
  }
  FUN_005bfac0(auStack_64);
  FUN_005c0060(auStack_64,pWVar2);
  FUN_005bf290(auStack_64,(byte *)"ColorAlphaMultiply",2,param_1,0);
  ppuStack_8c = (undefined **)0xfdf90c;
  FUN_005bfd20(auStack_64,(undefined4 *)&stack0xffffff68);
  appuStack_84[0] = &PTR_FUN_0100886c;
  uStack_7a = 0x13;
  uStack_7c = 0xb;
  FUN_004f59c0(appuStack_84,0x13,9,&stack0xffffff68,0x10,1);
  (**(code **)(*piVar1 + 0x50))(appuStack_84,auStack_88);
  ppuStack_8c = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_84[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_8c,'\0');
  }
  if ((2 < (int)((int)&DAT_011c8e54 - param_1 & 0xfffffffeU)) && (param_1 != 0)) {
    FUN_004e44e0(param_1);
  }
  FUN_005bfce0(auStack_6c);
  return &DAT_011c8e56;
}

