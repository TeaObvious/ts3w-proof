/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011637a0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HandToolGetObjectHeld [assembly=ScriptCore token=0x060007F8; ;
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_World__World_HandToolGetObjectHeld(void)

{
  int iVar1;
  
  iVar1 = FUN_00cfe370();
  if (iVar1 != 0) {
    return *(undefined8 *)(iVar1 + 8);
  }
  return 0;
}

