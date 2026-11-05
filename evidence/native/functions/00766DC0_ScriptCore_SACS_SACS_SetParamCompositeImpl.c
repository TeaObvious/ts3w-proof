/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161e28 (original PC 1.67 TS3W.exe).
   ScriptCore.SACS::SACS_SetParamCompositeImpl [assembly=ScriptCore token=0x06000D64; driverHandle:
   System.UInt32, paramPrefix: System.String, paramName: System.String, valueHash: System.UInt32;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.SACS::SACS_SetParamCompositeImpl(undefined4 param_1)

{
  wint_t wVar1;
  int *piVar2;
  int iVar3;
  wint_t *pwVar4;
  wint_t *pwVar5;
  void *unaff_EBX;
  uint uVar6;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1);
  if (iVar3 != 0) {
    pwVar4 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    pwVar5 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    uVar6 = 0x811c9dc5;
    if (pwVar4 != (wint_t *)0x0) {
      wVar1 = *pwVar4;
      while (wVar1 != 0) {
        wVar1 = towlower(wVar1);
        pwVar4 = pwVar4 + 1;
        uVar6 = uVar6 * 0x1000193 ^ (uint)wVar1;
        wVar1 = *pwVar4;
      }
      uVar6 = uVar6 * 0x1000193 ^ 0x3a;
    }
    if (pwVar5 != (wint_t *)0x0) {
      wVar1 = *pwVar5;
      while (wVar1 != 0) {
        wVar1 = towlower(wVar1);
        pwVar5 = pwVar5 + 1;
        uVar6 = uVar6 * 0x1000193 ^ (uint)wVar1;
        wVar1 = *pwVar5;
      }
    }
    FUN_00801b80(unaff_EBX,uVar6,param_1);
  }
  return;
}

