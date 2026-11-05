/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01161d60 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.RouteManager::RouteManager_SetAvoidanceFieldSmoothing [assembly=ScriptCore
   token=0x0600107D; simObjId: System.UInt64, s: System.Single; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_RouteManager__RouteManager_SetAvoidanceFieldSmoothing
               (undefined4 param_1,undefined4 param_2,float param_3)

{
  void *pvVar1;
  float fVar2;
  
  fVar2 = 0.0;
  if ((param_3 < 0.0) || (fVar2 = 1.0, 1.0 < param_3)) {
    param_3 = fVar2;
  }
  pvVar1 = ObjectRegistry_GetGlobal();
  if (pvVar1 != (void *)0x0) {
    pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
    if (pvVar1 != (void *)0x0) {
      pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011ea138);
      if ((pvVar1 != (void *)0x0) && (*(int *)((int)pvVar1 + 0x10c) != 0)) {
        *(float *)(*(int *)((int)pvVar1 + 0x10c) + 0xb0) = param_3;
      }
    }
  }
  return;
}

