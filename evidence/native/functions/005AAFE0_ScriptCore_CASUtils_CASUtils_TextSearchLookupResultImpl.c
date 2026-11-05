/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156808 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_TextSearchLookupResultImpl [assembly=ScriptCore token=0x0600038D;
   handle: System.UInt32, searchHandle: System.UInt32, index: System.UInt32;
   return=Sims3.SimIFace.CAS.CASPart]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 *
ScriptCore_CASUtils__CASUtils_TextSearchLookupResultImpl
          (undefined4 *param_1,uint param_2,uint param_3)

{
  int *piVar1;
  void *this;
  undefined4 uVar2;
  int *unaff_retaddr;
  
  memset(param_1,0,0x48);
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_2);
    if (this != (void *)0x0) {
      uVar2 = FUN_005aade0(this,param_2,param_3);
      if ((char)uVar2 != '\0') {
        FUN_005a7e90((uint *)(unaff_retaddr + 2),param_1);
        (**(code **)(*unaff_retaddr + 4))();
      }
    }
  }
  return param_1;
}

