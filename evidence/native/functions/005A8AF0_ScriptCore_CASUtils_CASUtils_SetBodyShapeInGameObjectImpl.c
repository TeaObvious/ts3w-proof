/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011564e8 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_SetBodyShapeInGameObjectImpl [assembly=ScriptCore token=0x06000339;
   fat: System.Single, fit: System.Single, thin: System.Single, pregnant: System.Single,
   scriptHandle: System.UInt64, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_SetBodyShapeInGameObjectImpl
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int iVar1;
  void *pvVar2;
  
  iVar1 = FUN_00937570();
  pvVar2 = (void *)FUN_00937f80(iVar1);
  if (pvVar2 != (void *)0x0) {
    pvVar2 = (void *)FUN_00934260(pvVar2,DAT_011ea0fc);
    if (pvVar2 != (void *)0x0) {
      FUN_0094f610(pvVar2,param_1,param_2,param_3,param_4);
    }
  }
  return;
}

