/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_InjectTattooColors. Export ordinal(s):
   114. Entry VA: 0x1039f090. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600048D. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined2 * __cdecl CASUtils_InjectTattooColors(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  int iVar3;
  undefined4 uStack_a8;
  undefined **ppuStack_98;
  int iStack_94;
  undefined **appuStack_90 [2];
  undefined2 uStack_88;
  undefined2 uStack_86;
  undefined4 auStack_78 [2];
  undefined4 auStack_70 [27];
  undefined4 uStack_4;
  
                    /* 0x39f090  114  CASUtils_InjectTattooColors */
  uStack_a8 = 0x103f100d;
  piVar1 = (int *)FUN_1055b120();
  uStack_a8 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 != (LPCWSTR)0x0) {
    (**(code **)(*piVar1 + 0x6c))(param_1);
    if (&stack0xffffff60 != (undefined1 *)0x0) {
      FUN_103ba880(auStack_70);
      FUN_103bae20(auStack_70,pWVar2);
      iVar3 = 0;
      if (0 < (int)&stack0xffffff60) {
        do {
          FUN_103f0f10(auStack_70,(&PTR_s_Layer_dColorR_10c27380)[iVar3],uStack_4,
                       *(undefined4 *)(iStack_94 + iVar3 * 4));
          iVar3 = iVar3 + 1;
        } while (iVar3 < (int)&stack0xffffff60);
      }
      ppuStack_98 = (undefined **)0x10afa858;
      FUN_103baae0(auStack_70,(undefined4 *)&stack0xffffff5c);
      appuStack_90[0] = &PTR_FUN_10aca5b4;
      uStack_86 = 0x13;
      uStack_88 = 0xb;
      FUN_10928b90(appuStack_90,0x13,9,&stack0xffffff5c,0x10,1);
      (**(code **)(*piVar1 + 0x50))(appuStack_90,&uStack_a8);
      ppuStack_98 = &PTR_FUN_10aca5b4;
      if (((uint)appuStack_90[0] & 4) != 0) {
        FUN_10928a90(&ppuStack_98,'\0');
      }
      if ((2 < (int)&_Dst_10ca8244 - (int)&stack0xffffff60) &&
         (&stack0xffffff60 != (undefined1 *)0x0)) {
        FUN_10918e90((int)&stack0xffffff60);
      }
      FUN_103baaa0(auStack_78);
      return &uStack_88;
    }
  }
  return (undefined2 *)0x0;
}

