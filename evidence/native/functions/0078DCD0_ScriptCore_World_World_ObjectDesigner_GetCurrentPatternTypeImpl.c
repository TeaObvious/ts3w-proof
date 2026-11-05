/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163850 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ObjectDesigner_GetCurrentPatternTypeImpl [assembly=ScriptCore
   token=0x06000811; ; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_ObjectDesigner_GetCurrentPatternTypeImpl(void)

{
  int iVar1;
  
  iVar1 = FUN_00b302a0();
  if (*(int *)(iVar1 + 0xa4) != 0) {
    return *(undefined4 *)(*(int *)(iVar1 + 0xa4) + 0x88);
  }
  return 0;
}

