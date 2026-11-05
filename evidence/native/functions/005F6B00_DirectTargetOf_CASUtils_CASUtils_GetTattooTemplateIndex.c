/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.CASUtils::CASUtils_GetTattooTemplateIndex
   at 0x005a57e0, bytes e91b130500. This is a static control-flow link from the registered entry;
   the target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

uint __cdecl DirectTargetOf_CASUtils_CASUtils_GetTattooTemplateIndex(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  uint uVar5;
  undefined4 auStack_68 [26];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if ((pWVar2 != (LPCWSTR)0x0) && (pWVar3 != (LPCWSTR)0x0)) {
    FUN_005bfac0(auStack_68);
    FUN_005c0060(auStack_68,pWVar2);
    FUN_005bfac0((undefined4 *)&stack0xffffff38);
    FUN_005c0060(&stack0xffffff38,pWVar3);
    uVar5 = 1;
    do {
      uVar4 = FUN_005f6a90(auStack_68,&stack0xffffff38,uVar5,(char)param_1);
      if ((char)uVar4 != '\0') {
        FUN_005bfce0((undefined4 *)&stack0xffffff38);
        FUN_005bfce0(auStack_68);
        return uVar5;
      }
      uVar5 = uVar5 + 1;
    } while (uVar5 < 6);
    FUN_005bfce0((undefined4 *)&stack0xffffff38);
    FUN_005bfce0(auStack_68);
    return 0xffffffff;
  }
  return 0;
}

