/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_GetTattooTemplateIndex. Export
   ordinal(s): 110. Entry VA: 0x1039f080. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600048C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl CASUtils_GetTattooTemplateIndex(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  uint uVar5;
  undefined4 auStack_68 [26];
  
                    /* 0x39f080  110  CASUtils_GetTattooTemplateIndex */
  piVar1 = (int *)FUN_1055b120();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((pWVar2 != (LPCWSTR)0x0) && (pWVar3 != (LPCWSTR)0x0)) {
    FUN_103ba880(auStack_68);
    FUN_103bae20(auStack_68,pWVar2);
    FUN_103ba880((undefined4 *)&stack0xffffff38);
    FUN_103bae20(&stack0xffffff38,pWVar3);
    uVar5 = 1;
    do {
      uVar4 = FUN_103f0dc0(auStack_68,&stack0xffffff38,uVar5,(char)param_1);
      if ((char)uVar4 != '\0') {
        FUN_103baaa0((undefined4 *)&stack0xffffff38);
        FUN_103baaa0(auStack_68);
        return uVar5;
      }
      uVar5 = uVar5 + 1;
    } while (uVar5 < 6);
    FUN_103baaa0((undefined4 *)&stack0xffffff38);
    FUN_103baaa0(auStack_68);
    return 0xffffffff;
  }
  return 0;
}

