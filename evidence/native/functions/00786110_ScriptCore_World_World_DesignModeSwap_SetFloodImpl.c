/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163b68 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_DesignModeSwap_SetFloodImpl [assembly=ScriptCore token=0x0600086F;
   handle: System.UInt32, flood: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 ScriptCore_World__World_DesignModeSwap_SetFloodImpl(uint param_1)

{
  undefined1 uVar1;
  int *piVar2;
  void *this;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((param_1 & 0xff000000) == 0x45000000) {
    this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
    if (this != (void *)0x0) {
      uVar1 = FUN_00a5e0a0(this,(char)param_1);
      return uVar1;
    }
  }
  return 0;
}

