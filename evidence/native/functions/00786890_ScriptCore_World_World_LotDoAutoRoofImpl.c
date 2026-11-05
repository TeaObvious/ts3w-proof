/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163338 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LotDoAutoRoofImpl [assembly=ScriptCore token=0x06000764; lotId:
   System.UInt64; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_LotDoAutoRoofImpl(int param_1,int param_2)

{
  int *piVar1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    if ((piVar1 != (int *)0x0) && (piVar1[0xab] != 0)) {
      ScriptCore.Animation::Animation_SetMissingAnimationCallback();
      return;
    }
  }
  return;
}

