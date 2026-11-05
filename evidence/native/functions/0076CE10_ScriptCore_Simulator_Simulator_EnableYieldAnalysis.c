/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162018 (original PC 1.67 TS3W.exe).
   ScriptCore.Simulator::Simulator_EnableYieldAnalysis [assembly=ScriptCore token=0x06000554;
   checkTaskHandler: Sims3.SimIFace.YieldAnalysisTaskHandler, checkMethodHandler:
   Sims3.SimIFace.YieldAnalysisMethodHandler, callHandler: Sims3.SimIFace.YieldAnalysisCallHandler;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Simulator__Simulator_EnableYieldAnalysis
               (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  void *this;
  
  this = (void *)GetGlobalInterfacePointer_11D5BBC();
  FUN_00769970(this,param_1,param_2,param_3);
  return;
}

