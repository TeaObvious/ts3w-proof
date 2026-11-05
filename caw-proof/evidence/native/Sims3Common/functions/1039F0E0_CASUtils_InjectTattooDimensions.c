/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_InjectTattooDimensions. Export
   ordinal(s): 115. Entry VA: 0x1039f0e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000492. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 * __cdecl CASUtils_InjectTattooDimensions(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  uint unaff_EBP;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined4 uStack_a8;
  undefined **ppuStack_98;
  int iStack_94;
  undefined **appuStack_90 [2];
  undefined2 uStack_88;
  undefined2 uStack_86;
  undefined4 auStack_78 [2];
  undefined4 auStack_70 [28];
  
                    /* 0x39f0e0  115  CASUtils_InjectTattooDimensions */
  uStack_a8 = 0x103f15cd;
  piVar1 = (int *)FUN_1055b120();
  uStack_a8 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 == (LPCWSTR)0x0) {
    return (undefined1 *)0x0;
  }
  (**(code **)(*piVar1 + 0x78))(param_1,&uStack_88);
  uVar3 = 4;
  if (3 < unaff_EBP) {
    FUN_103ba880(auStack_70);
    FUN_103bae20(auStack_70,pWVar2);
    if (3 < unaff_EBP) {
      iVar5 = 1;
      iVar4 = 0;
      do {
        FUN_103f13a0(auStack_70,iVar5,(undefined4 *)(iVar4 + iStack_94));
        uVar3 = uVar3 + 4;
        iVar4 = iVar4 + 0x10;
        iVar5 = iVar5 + 1;
      } while (uVar3 <= unaff_EBP);
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
    if ((2 < (int)((int)&_Dst_10ca8244 - unaff_EBP & 0xfffffffe)) && (unaff_EBP != 0)) {
      FUN_10918e90(unaff_EBP);
    }
    FUN_103baaa0(auStack_78);
    return &stack0xffffff60;
  }
  return (undefined1 *)0x0;
}

