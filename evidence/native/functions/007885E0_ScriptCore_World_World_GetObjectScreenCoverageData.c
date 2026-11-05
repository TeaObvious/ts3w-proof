/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163a58 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetObjectScreenCoverageData [assembly=ScriptCore token=0x0600084F; ;
   return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_GetObjectScreenCoverageData(void)

{
  undefined1 *this;
  undefined4 *puVar1;
  undefined4 uStack_4;
  
  puVar1 = &uStack_4;
  this = FUN_0059f2d0();
  FUN_0059e8c0(this,puVar1);
  return uStack_4;
}

