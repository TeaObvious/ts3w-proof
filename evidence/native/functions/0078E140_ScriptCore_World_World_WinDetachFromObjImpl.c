/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163920, 0x01163930 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_WinDetachFromObjImpl [assembly=ScriptCore token=0x06000828; winHandle:
   System.UInt32, simThread: System.Boolean, mapTag: System.Boolean; return=System.Void]
   ScriptCore.World::World_WinDetachFromWorldPositionImpl [assembly=ScriptCore token=0x0600082A;
   winHandle: System.UInt32, simThread: System.Boolean, mapTag: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_WinDetachFromObjImpl(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int *piVar4;
  char unaff_retaddr;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if ((piVar1 != (int *)0x0) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 != (int *)0x0)) {
    if (unaff_retaddr == '\0') {
      (**(code **)(*piVar1 + 0x88))(0);
      return;
    }
    piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(0);
    while (piVar2 != (int *)0x0) {
      piVar4 = (int *)0x0;
      if ((piVar2 != (int *)0x0) && (iVar3 = (**(code **)(*piVar2 + 0xc))(0x486526a), iVar3 != 0)) {
        (**(code **)(*piVar2 + 0xc))(0x486526a);
        piVar4 = piVar2;
      }
      piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(piVar2);
      if (piVar4 != (int *)0x0) {
        (**(code **)(*piVar1 + 0x10c))(piVar4);
      }
    }
  }
  return;
}

