/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011632f0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_SetObjectSnowImpl [assembly=ScriptCore token=0x0600075B; scriptHandle:
   System.UInt64, bEnabled: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_SetObjectSnowImpl(undefined4 param_1,undefined4 param_2,char param_3)

{
  int iVar1;
  void *pvVar2;
  
  iVar1 = FUN_00937570();
  if (iVar1 != 0) {
    pvVar2 = (void *)FUN_00937f80(iVar1);
    if (pvVar2 != (void *)0x0) {
      pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011ea2a8);
      if (pvVar2 != (void *)0x0) {
        FUN_0095f810(pvVar2,param_3,2);
      }
    }
  }
  return;
}

