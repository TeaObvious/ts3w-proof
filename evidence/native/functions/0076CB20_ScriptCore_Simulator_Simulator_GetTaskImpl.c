/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161f68 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_GetTaskImpl [assembly=ScriptCore token=0x06000542; objectId:
   System.UInt64, preInit: System.Boolean; return=Sims3.SimIFace.ITask]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Simulator__Simulator_GetTaskImpl
               (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0x17c))();
  (**(code **)(*piVar1 + 0x18))(param_1,param_2,param_3);
  return;
}

