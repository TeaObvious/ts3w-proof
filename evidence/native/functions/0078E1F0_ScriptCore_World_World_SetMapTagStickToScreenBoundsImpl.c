/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163938 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_SetMapTagStickToScreenBoundsImpl [assembly=ScriptCore token=0x0600082B;
   winHandle: System.UInt32, stickToScreenBounds: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_SetMapTagStickToScreenBoundsImpl(char param_1)

{
  int *piVar1;
  int *piVar2;
  void *this;
  int iVar3;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))();
  if ((piVar1 != (int *)0x0) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 != (int *)0x0)) {
    for (piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(0); piVar2 != (int *)0x0;
        piVar2 = (int *)(**(code **)(*piVar1 + 0x110))(piVar2)) {
      this = (void *)(**(code **)(*piVar2 + 0xc))(0x486526a);
      if (this != (void *)0x0) {
        FUN_007dc0e0(this,param_1,(int)piVar1);
        break;
      }
    }
    piVar1 = (int *)(**(code **)(*piVar1 + 0x4c))();
    if ((piVar1 != (int *)0x0) && (iVar3 = (**(code **)(*piVar1 + 0xc))(0x5d14a88), iVar3 != 0)) {
      *(char *)(iVar3 + 0x33) = param_1;
    }
  }
  return;
}

