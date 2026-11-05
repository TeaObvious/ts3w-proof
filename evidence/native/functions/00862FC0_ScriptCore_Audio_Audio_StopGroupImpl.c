/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011677d8 (original PC 1.67 TS3W.exe).
   ScriptCore.Audio::Audio_StopGroupImpl [assembly=ScriptCore token=0x060011E8; groupId:
   System.UInt32, hardStop: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_Audio__Audio_StopGroupImpl(void)

{
  int *piVar1;
  char unaff_SI;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)FUN_008afe00();
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 0x44))(0x1549cebe);
    (**(code **)(*piVar1 + 0x4c))(0x4362049,unaff_retaddr);
    (**(code **)(*piVar1 + 0x4c))(0x34753a0,unaff_SI != '\0');
                    /* WARNING: Could not recover jumptable at 0x0086300d. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*piVar1 + 0x68))();
    return;
  }
  return;
}

