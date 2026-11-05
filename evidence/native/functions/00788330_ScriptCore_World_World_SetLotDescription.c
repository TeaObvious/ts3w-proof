/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011639c0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_SetLotDescription [assembly=ScriptCore token=0x0600084D; lotId:
   System.UInt64, lotDescription: System.String; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_SetLotDescription(int param_1,int param_2,undefined4 param_3)

{
  int *this;
  int *piVar1;
  wint_t *pwVar2;
  
  if (DAT_011edbc4 == (void *)0x0) {
    this = (int *)0x0;
  }
  else {
    this = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((this != (int *)0x0) && (piVar1 != (int *)0x0)) {
    pwVar2 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_3);
    FUN_00abd2a0(this,pwVar2);
  }
  return;
}

