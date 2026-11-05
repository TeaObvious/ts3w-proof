/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011564e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CASUtils::CASUtils_SetBodyShapeInGameObjectImpl [assembly=ScriptCore token=0x06000339;
   fat: System.Single, fit: System.Single, thin: System.Single, pregnant: System.Single,
   scriptHandle: System.UInt64, callback: System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_CASUtils__CASUtils_SetBodyShapeInGameObjectImpl
               (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  void *pvVar1;
  undefined4 in_stack_00000014;
  undefined4 in_stack_00000018;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(in_stack_00000018,in_stack_00000014));
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea0fc);
    if (pvVar1 != (void *)0x0) {
      FUN_0094f610(pvVar1,param_1,param_2,param_3,param_4);
    }
  }
  return;
}

