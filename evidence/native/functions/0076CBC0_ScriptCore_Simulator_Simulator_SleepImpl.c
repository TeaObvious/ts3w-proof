/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161f70 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_SleepImpl [assembly=ScriptCore token=0x0600053F; simTicks:
   System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.Simulator::Simulator_SleepImpl(uint param_1)

{
  int *piVar1;
  
  if (0xfffffc16 < param_1) {
    param_1 = 0xfffffc17;
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 0x20))(param_1);
  return;
}

