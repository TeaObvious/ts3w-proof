/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01156208, 0x01156470 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_PartSearchCompleteImpl [assembly=ScriptCore token=0x060002E0;
   handle: System.UInt32; return=System.Boolean]
   ScriptCore.CASUtils::CASUtils_KeySearchCompleteImpl [assembly=ScriptCore token=0x060002EC;
   handle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.CASUtils::CASUtils_PartSearchCompleteImpl(uint param_1)

{
  uint uVar1;
  int *piVar2;
  
  uVar1 = param_1 & 0xff000000;
  if (uVar1 == 0x35000000) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    uVar1 = (**(code **)(*piVar2 + 0xcc))(param_1);
  }
  return CONCAT31((int3)(uVar1 >> 8),1);
}

