/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163b60 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_DesignModeSwap_SetSourceObjectImpl [assembly=ScriptCore token=0x0600086E;
   handle: System.UInt32, sourceId: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_DesignModeSwap_SetSourceObjectImpl
               (undefined4 *param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  uint uVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((uint)param_1 & 0xff000000) == 0x45000000) {
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    piVar1 = (int *)0x0;
    if (this != (void *)0x0) {
      uVar2 = FUN_00a5f460(this,param_1,param_2);
      return uVar2;
    }
  }
  return (uint)piVar1 & 0xffffff00;
}

