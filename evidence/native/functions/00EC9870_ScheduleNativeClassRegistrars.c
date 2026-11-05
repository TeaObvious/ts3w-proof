/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration-path observation: Original startup stores callback 0x00EC96E0 via
   0x0076B600; the callback later invokes class registrars including SACS. This is static setup-path
   reachability. Raw source:
   evidence/bindings/consumer-trace.md; TS3W.exe
   . */

void __cdecl
ScheduleNativeClassRegistrars(undefined4 param_1,char param_2,undefined4 param_3,undefined4 param_4)

{
  InstallScriptHostSetupCallback(param_1,param_2,RegisterNativeScriptClasses,param_3,param_4);
  return;
}

