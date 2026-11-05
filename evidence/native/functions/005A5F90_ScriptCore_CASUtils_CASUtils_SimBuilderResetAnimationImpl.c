/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156300 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderResetAnimationImpl [assembly=ScriptCore token=0x06000305;
   handle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.CASUtils::CASUtils_SimBuilderResetAnimationImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  int iVar3;
  
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x35000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1);
    uVar1 = 0;
    if (iVar3 != 0) {
      uVar1 = FUN_005e15f0(iVar3);
      return uVar1;
    }
  }
  return uVar1;
}

