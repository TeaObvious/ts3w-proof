/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a08 (original PC 1.67 TS3W.exe).
   ScriptCore.VisualEffect::Swarm_SetNeverHide [assembly=ScriptCore token=0x060004C5; effectHandle:
   System.UInt64, neverHide: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_VisualEffect__Swarm_SetNeverHide(undefined4 param_1,undefined4 param_2,byte param_3)

{
  int iVar1;
  void *pvVar2;
  
  iVar1 = FUN_00937570();
  pvVar2 = (void *)FUN_00937f80(iVar1);
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011e9e90);
    if (pvVar2 != (void *)0x0) {
      FUN_00943730(pvVar2,param_3);
    }
  }
  return;
}

