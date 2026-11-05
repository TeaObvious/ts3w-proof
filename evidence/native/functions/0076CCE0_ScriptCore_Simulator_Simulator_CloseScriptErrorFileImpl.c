/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161fe0 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_CloseScriptErrorFileImpl [assembly=ScriptCore token=0x0600054E;
   fileHandle: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 __cdecl ScriptCore.Simulator::Simulator_CloseScriptErrorFileImpl(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  undefined4 uVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 0x18))();
    (**(code **)*piVar2)(1);
    uVar3 = (**(code **)(*piVar1 + 0xd8))(param_1);
    return CONCAT31((int3)((uint)uVar3 >> 8),1);
  }
  return 0;
}

