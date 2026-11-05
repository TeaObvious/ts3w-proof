/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163940 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ForceMaptagTickImpl [assembly=ScriptCore token=0x0600082C; winHandle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ForceMaptagTickImpl(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (((piVar1 != (int *)0x0) &&
      (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 != (int *)0x0)) &&
     (piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(0), piVar2 != (int *)0x0)) {
    while (piVar3 = (int *)(**(code **)(*piVar2 + 0xc))(0x486526a), piVar3 == (int *)0x0) {
      piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(piVar2);
      if (piVar2 == (int *)0x0) {
        return;
      }
    }
    (**(code **)(*piVar3 + 0x60))(piVar1);
  }
  return;
}

