/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189f78 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_CheckObjectPlacementImpl [assembly=ScriptCore
   token=0x06000C18; productHandle: System.UInt32, checkForType: System.UInt32;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_UserToolUtils__UserToolUtils_CheckObjectPlacementImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  int unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((piVar1 != (int *)0x0) && ((param_1 & 0xff000000) == 0x45000000)) {
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    piVar1 = (int *)0x0;
    if (piVar2 != (int *)0x0) {
      piVar1 = (int *)(**(code **)(*piVar2 + 0xc))(0x519e4f25);
      if (piVar1 != (int *)0x0) {
        if (unaff_retaddr == 0) {
          return (uint)piVar1[0x29] >> 0xe & 1;
        }
        if (unaff_retaddr == 0x15) {
          return (uint)piVar1[0x26] >> 10 & 1;
        }
      }
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

