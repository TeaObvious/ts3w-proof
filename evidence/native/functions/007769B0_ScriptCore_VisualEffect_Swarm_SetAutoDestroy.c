/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a00 (original PC 1.67 TS3W.exe).
   ScriptCore.VisualEffect::Swarm_SetAutoDestroy [assembly=ScriptCore token=0x060004C4;
   effectHandle: System.UInt64, destroy: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_VisualEffect__Swarm_SetAutoDestroy
               (undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  void *this;
  void *this_00;
  uint uStack_4;
  
  iVar1 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar1);
  if (this != (void *)0x0) {
    this_00 = (void *)FUN_00934260(this,DAT_011e9e90);
    if (this_00 != (void *)0x0) {
      uStack_4 = (uint)(param_3 != '\0');
      FUN_009445a0(this_00,5,(int *)&uStack_4,1);
    }
    iVar1 = FUN_00934260(this,DAT_011ea158);
    if (iVar1 != 0) {
      FUN_00955f30(iVar1);
      return;
    }
  }
  return;
}

