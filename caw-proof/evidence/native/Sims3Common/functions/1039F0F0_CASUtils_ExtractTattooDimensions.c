/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_ExtractTattooDimensions. Export
   ordinal(s): 87. Entry VA: 0x1039f0f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000493. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl CASUtils_ExtractTattooDimensions(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  uint uVar3;
  int iVar4;
  undefined4 *puVar5;
  undefined4 uStack_d0;
  undefined4 uStack_c4;
  undefined4 uStack_c0;
  undefined4 uStack_bc;
  undefined4 uStack_b8;
  undefined4 uStack_b4;
  undefined4 uStack_b0;
  undefined4 uStack_ac;
  undefined4 uStack_a8;
  undefined4 auStack_7c [6];
  undefined4 auStack_64 [25];
  
                    /* 0x39f0f0  87  CASUtils_ExtractTattooDimensions */
  uStack_d0 = 0x103f173d;
  piVar1 = (int *)FUN_1055b120();
  uStack_d0 = param_1;
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))();
  if (pWVar2 != (LPCWSTR)0x0) {
    FUN_103ba880(auStack_64);
    FUN_103bae20(auStack_64,pWVar2);
    iVar4 = (-(uint)((char)param_1 != '\0') & 0xfffffff0) + 0x14;
    if ((char)param_1 == '\0') {
      uVar3 = 0;
      puVar5 = &uStack_b4;
      do {
        uVar3 = uVar3 + 1;
        FUN_103f1490(auStack_64,uVar3,puVar5);
        puVar5 = puVar5 + 4;
      } while (uVar3 < 5);
    }
    else {
      uStack_bc = 0;
      uStack_b8 = 0;
      uStack_c4 = 0;
      uStack_c0 = 0;
      FUN_103f0000(auStack_64,&uStack_bc,&uStack_c4);
      uStack_b4 = uStack_bc;
      uStack_b0 = uStack_b8;
      uStack_ac = uStack_c4;
      uStack_a8 = uStack_c0;
    }
    (**(code **)(*piVar1 + 0x90))(&stack0xffffff38,iVar4);
    (**(code **)(*piVar1 + 0xa8))(&uStack_d0,&uStack_bc,0);
    FUN_103baaa0(auStack_7c);
    return iVar4;
  }
  return 0;
}

