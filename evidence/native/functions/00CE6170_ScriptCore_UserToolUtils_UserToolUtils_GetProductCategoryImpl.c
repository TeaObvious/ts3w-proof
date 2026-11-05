/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189e08 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_GetProductCategoryImpl [assembly=ScriptCore
   token=0x06000BE3; productHandle: System.UInt32, type: System.UInt32; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_UserToolUtils__UserToolUtils_GetProductCategoryImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x45000000)) {
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if ((param_1 != 0) && ((param_1 < 3 && (piVar1 != (int *)0x0)))) {
      iVar2 = (**(code **)(*piVar1 + 0xc))(0xf14a3b3c);
      if (iVar2 != 0) {
        return *(undefined4 *)(iVar2 + 0xa0);
      }
    }
  }
  return 0;
}

