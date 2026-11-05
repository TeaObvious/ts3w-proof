/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011611c8 (original PC 1.67 TS3W.exe).
   ScriptCore.EventQueue::EventQueue_ReleaseEventQueueImpl [assembly=ScriptCore token=0x060005EF;
   eventQueueHandle: System.UInt32; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_EventQueue__EventQueue_ReleaseEventQueueImpl(uint param_1)

{
  int *piVar1;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x118))();
    if ((param_1 & 0xff000000) == 0x22000000) {
      piVar1 = (int *)(**(code **)(*piVar1 + 0xd8))(param_1);
      if (piVar1 != (int *)0x0) {
        piVar1[2] = 0;
                    /* WARNING: Could not recover jumptable at 0x0074279c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
        (**(code **)(*piVar1 + 4))();
        return;
      }
    }
  }
  return;
}

