/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163a68 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_ForceVisibilityForPicture [assembly=ScriptCore token=0x06000851; bForce:
   System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_ForceVisibilityForPicture(char param_1)

{
  int iVar1;
  
  iVar1 = FUN_006e8170();
  if (iVar1 != 0) {
    LOCK();
    *(uint *)(iVar1 + 0x2a4) = (uint)(param_1 != '\0');
    UNLOCK();
  }
  return;
}

