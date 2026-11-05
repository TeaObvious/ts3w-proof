/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163310 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LotSetVisibilityImpl [assembly=ScriptCore token=0x0600075F; lotId:
   System.UInt64, bVisible: System.Boolean, bOutside: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_LotSetVisibilityImpl
               (int param_1,int param_2,undefined1 param_3,undefined1 param_4)

{
  int *this;
  
  if (DAT_011edbc4 != (void *)0x0) {
    this = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    if (this != (int *)0x0) {
      FUN_00ab5a60(this,param_3,param_4);
    }
  }
  return;
}

