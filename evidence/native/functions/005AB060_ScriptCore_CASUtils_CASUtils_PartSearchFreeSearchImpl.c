/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156220, 0x01156488 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_PartSearchFreeSearchImpl [assembly=ScriptCore token=0x060002E3;
   handle: System.UInt32; return=System.Void]
   ScriptCore.CASUtils::CASUtils_KeySearchFreeSearchImpl [assembly=ScriptCore token=0x060002EF;
   handle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_PartSearchFreeSearchImpl(uint param_1)

{
  int *piVar1;
  int *piVar2;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar2 + 0xd8))(param_1);
      if (*piVar1 != 0) {
        FUN_004e44e0(*piVar1);
      }
      FUN_004e44e0((int)piVar1);
    }
  }
  return;
}

