/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161f90 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Simulator::Simulator_DisableScriptImpl [assembly=ScriptCore token=0x0600053E;
   objectId: System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Simulator__Simulator_DisableScriptImpl(int param_1,int param_2)

{
  char cVar1;
  int *piVar2;
  void *pvVar3;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 != (int *)0x0) {
    cVar1 = (**(code **)(*piVar2 + 0x114))(param_1,param_2);
    if (cVar1 == '\0') {
      if (param_1 != 0 || param_2 != 0) {
        (**(code **)(*piVar2 + 0x10c))(param_1,param_2);
      }
    }
    else {
      pvVar3 = ObjectRegistry_GetGlobal();
      if ((pvVar3 != (void *)0x0) &&
         (pvVar3 = ObjectRegistry_FindBorrowed(pvVar3,CONCAT44(param_2,param_1)),
         pvVar3 != (void *)0x0)) {
        ObjectEvents_Dispatch(0x20,pvVar3,(void *)0x0);
        return;
      }
    }
  }
  return;
}

