/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011637a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HandToolGetObjectHeld [assembly=ScriptCore token=0x060007F8; ;
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_World__World_HandToolGetObjectHeld(void)

{
  int iVar1;
  
  iVar1 = HandTool_GetCurrentHeldPointer();
  if (iVar1 == 0) {
    return 0;
  }
  return *(undefined8 *)(iVar1 + 8);
}

