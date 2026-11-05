/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst description; PC 1.67. Three stack arguments, caller cleanup. A null third/window
   interface returns immediately. Otherwise pass the first two values and a stack-record output to
   0x007F0090, ask window virtual + 0x14 for its system interface, and if nonnull call system
   virtual + 0x10 with the window in both receiver/destination slots, the built record and literal
   0. No handled return or record-field/event-ID mapping is established by this body; native record
   builder/dispatcher consumers remain explicit gaps. The selected managed TriggerDown/Up and
   handled-result facts are separate evidence, not an inferred layout for this record. */

void __cdecl UiTriggerHooks_BuildAndDispatchWindowRecord(int param_1,int param_2,int *param_3)

{
  int *piVar1;
  undefined1 local_1c [28];
  
  if (param_3 != (int *)0x0) {
    FUN_007f0090(param_1,param_2,(int)local_1c);
    piVar1 = (int *)(**(code **)(*param_3 + 0x14))();
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))(param_3,param_3,local_1c,0);
    }
  }
  return;
}

