/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161f90 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_DisableScriptImpl [assembly=ScriptCore token=0x0600053E;
   objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Simulator__Simulator_DisableScriptImpl(int param_1,int param_2)

{
  char cVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 != (int *)0x0) {
    cVar1 = (**(code **)(*piVar2 + 0x114))(param_1,param_2);
    if (cVar1 == '\0') {
      if (param_1 != 0 || param_2 != 0) {
        (**(code **)(*piVar2 + 0x10c))(param_1,param_2);
      }
    }
    else {
      iVar3 = FUN_00937570();
      if ((iVar3 != 0) && (uVar4 = FUN_00937f80(iVar3), uVar4 != 0)) {
        FUN_009356c0(0x20,uVar4,0);
        return;
      }
    }
  }
  return;
}

