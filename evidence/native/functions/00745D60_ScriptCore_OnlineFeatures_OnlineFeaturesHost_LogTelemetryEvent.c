/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161550 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_LogTelemetryEvent [assembly=ScriptCore
   token=0x06000629; moduleId: Sims3.SimIFace.TelemetryModuleId, grpId:
   Sims3.SimIFace.TelemetryGroupId, telString: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_OnlineFeatures__OnlineFeaturesHost_LogTelemetryEvent
               (undefined4 param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  short *psVar2;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_3);
    FUN_00892a80((int *)&stack0x00000000,&param_1,psVar2);
  }
  return;
}

