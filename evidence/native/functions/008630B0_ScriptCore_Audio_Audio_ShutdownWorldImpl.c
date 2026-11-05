/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01167758 (original PC 1.67 TS3W.exe).
   ScriptCore.Audio::Audio_ShutdownWorldImpl [assembly=ScriptCore token=0x060011D6; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Audio__Audio_ShutdownWorldImpl(void)

{
  if ((DAT_011d9c40 != 0) && ((int *)(DAT_011d9c40 + -0x27bd0) != (int *)0x0)) {
                    /* WARNING: Could not recover jumptable at 0x008630cb. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*(int *)(DAT_011d9c40 + -0x27bd0) + 0x24c))();
    return;
  }
  return;
}

