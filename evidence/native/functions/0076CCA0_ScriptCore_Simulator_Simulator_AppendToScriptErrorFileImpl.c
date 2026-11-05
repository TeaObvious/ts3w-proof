/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161fd8 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_AppendToScriptErrorFileImpl [assembly=ScriptCore
   token=0x0600054D; fileHandle: System.UInt32, text: System.Char[]; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_Simulator__Simulator_AppendToScriptErrorFileImpl(undefined4 param_1,int param_2)

{
  uint in_EAX;
  int *piVar1;
  int iVar2;
  uint uVar3;
  
  if (param_2 != 0) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    in_EAX = 0;
    if (iVar2 != 0) {
      uVar3 = (**(code **)(*piVar1 + 0x150))(iVar2,param_2);
      return uVar3;
    }
  }
  return in_EAX & 0xffffff00;
}

