/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_DesignPresetCompareImpl. Export
   ordinal(s): 79. Entry VA: 0x103a2040. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000488. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl CASUtils_DesignPresetCompareImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 auStack_68 [26];
  
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 == (LPCWSTR)0x0) {
    if (pWVar3 == (LPCWSTR)0x0) {
      return 1;
    }
  }
  else if (pWVar3 != (LPCWSTR)0x0) {
    FUN_103ba880(auStack_68);
    FUN_103ba880((undefined4 *)&stack0xffffff38);
    FUN_103bae20(auStack_68,pWVar2);
    FUN_103bae20(&stack0xffffff38,pWVar3);
    uVar4 = FUN_103b9df0(auStack_68,(int)&stack0xffffff38);
    FUN_103baaa0((undefined4 *)&stack0xffffff38);
    uVar5 = FUN_103baaa0(auStack_68);
    return CONCAT31((int3)((uint)uVar5 >> 8),(char)uVar4);
  }
  return (uint)pWVar3 & 0xffffff00;
}

