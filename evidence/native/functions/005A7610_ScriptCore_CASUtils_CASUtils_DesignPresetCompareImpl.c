/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156730 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_DesignPresetCompareImpl [assembly=ScriptCore token=0x06000394;
   designPreset1: System.String, designPreset2: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_CASUtils__CASUtils_DesignPresetCompareImpl(undefined4 param_1)

{
  int *piVar1;
  LPCWSTR pWVar2;
  LPCWSTR pWVar3;
  uint uVar4;
  undefined4 uVar5;
  undefined4 auStack_68 [26];
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_1);
  if (pWVar2 == (LPCWSTR)0x0) {
    if (pWVar3 == (LPCWSTR)0x0) {
      return 1;
    }
  }
  else if (pWVar3 != (LPCWSTR)0x0) {
    FUN_005bfac0(auStack_68);
    FUN_005bfac0((undefined4 *)&stack0xffffff38);
    FUN_005c0060(auStack_68,pWVar2);
    FUN_005c0060(&stack0xffffff38,pWVar3);
    uVar4 = FUN_005befd0(auStack_68,(int)&stack0xffffff38);
    FUN_005bfce0((undefined4 *)&stack0xffffff38);
    uVar5 = FUN_005bfce0(auStack_68);
    return CONCAT31((int3)((uint)uVar5 >> 8),(char)uVar4);
  }
  return (uint)pWVar3 & 0xffffff00;
}

