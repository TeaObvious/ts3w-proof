/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163b50 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_DesignModeSwap_ReleaseImpl [assembly=ScriptCore token=0x0600086C; handle:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_DesignModeSwap_ReleaseImpl(uint param_1)

{
  void *this;
  
  this = (void *)FUN_00b302a0();
  if ((param_1 & 0xff000000) == 0x45000000) {
    FUN_00b37060(this,param_1);
  }
  return;
}

