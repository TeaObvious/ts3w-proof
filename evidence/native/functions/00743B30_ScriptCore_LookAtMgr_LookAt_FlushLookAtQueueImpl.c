/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011613c8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.LookAtMgr::LookAt_FlushLookAtQueueImpl [assembly=ScriptCore token=0x06000FF4; handle:
   System.UInt64, priority: System.Int32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_LookAtMgr__LookAt_FlushLookAtQueueImpl
              (undefined4 param_1,undefined4 param_2,int param_3)

{
  void *pvVar1;
  int iVar2;
  
  pvVar1 = ObjectRegistry_GetGlobal();
  pvVar1 = ObjectRegistry_FindBorrowed(pvVar1,CONCAT44(param_2,param_1));
  if (pvVar1 != (void *)0x0) {
    pvVar1 = Object_GetComponentByMask(pvVar1,DAT_011dd484);
    if ((pvVar1 != (void *)0x0) && (*(void **)((int)pvVar1 + 0x28) != (void *)0x0)) {
      iVar2 = FUN_00581420(*(void **)((int)pvVar1 + 0x28),param_3);
      return iVar2;
    }
  }
  return 0;
}

