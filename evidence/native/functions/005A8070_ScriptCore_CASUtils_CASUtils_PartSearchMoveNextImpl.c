/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156210, 0x01156478 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_PartSearchMoveNextImpl [assembly=ScriptCore token=0x060002E1;
   handle: System.UInt32; return=System.Boolean]
   ScriptCore.CASUtils::CASUtils_KeySearchMoveNextImpl [assembly=ScriptCore token=0x060002ED;
   handle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool __cdecl ScriptCore.CASUtils::CASUtils_PartSearchMoveNextImpl(uint param_1)

{
  int *piVar1;
  
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      if (piVar1[5] != 0) {
        if (piVar1[4] != piVar1[1]) {
          piVar1[4] = piVar1[4] + 0x10;
        }
        return piVar1[4] != piVar1[1];
      }
      if (*piVar1 != piVar1[1]) {
        piVar1[5] = (int)(piVar1 + 4);
        piVar1[4] = *piVar1;
        return true;
      }
    }
  }
  return false;
}

