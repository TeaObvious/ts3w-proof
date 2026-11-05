/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011563a0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SimBuilderShareOutfitImpl [assembly=ScriptCore token=0x06000319;
   handle: System.UInt32, packageName: System.String, description: System.String, uniformComponents:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.CASUtils::CASUtils_SimBuilderShareOutfitImpl(uint param_1,uint param_2)

{
  int *piVar1;
  LPCWSTR pWVar2;
  LPCWSTR pWVar3;
  void *this;
  uint uVar4;
  uint unaff_EBX;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uVar4 = 0;
  if (piVar1 != (int *)0x0) {
    pWVar2 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_2);
    pWVar3 = (LPCWSTR)(**(code **)(*piVar1 + 0x58))(param_2);
    uVar4 = unaff_EBX;
    if ((unaff_EBX & 0xff000000) == 0x35000000) {
      this = (void *)(**(code **)(*piVar1 + 0xcc))(unaff_EBX);
      uVar4 = 0;
      if (this != (void *)0x0) {
        uVar4 = FUN_005e2e10(this,pWVar2,pWVar3,param_1,param_2,0);
        return uVar4;
      }
    }
  }
  return uVar4 & 0xffffff00;
}

