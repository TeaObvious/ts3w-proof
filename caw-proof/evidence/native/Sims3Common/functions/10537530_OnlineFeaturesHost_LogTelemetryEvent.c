/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_LogTelemetryEvent. Export
   ordinal(s): 517. Entry VA: 0x10537530. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000587. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl OnlineFeaturesHost_LogTelemetryEvent(int param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  short *psVar2;
  
                    /* 0x537530  517  OnlineFeaturesHost_LogTelemetryEvent */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_3);
    FUN_10685f40((int *)&stack0x00000000,&param_1,psVar2);
  }
  return;
}

