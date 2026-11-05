/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163a60 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_EnableObjectScreenCoverage [assembly=ScriptCore token=0x06000850; enable:
   System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_EnableObjectScreenCoverage(int param_1)

{
  char *pcVar1;
  
  pcVar1 = FUN_0059f2d0();
  if (param_1 != 0) {
    FUN_0059ef80(pcVar1);
    return;
  }
  FUN_0059f290(pcVar1);
  return;
}

