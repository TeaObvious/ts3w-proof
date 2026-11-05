/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011613c8 (original PC 1.67 TS3W.exe).
   ScriptCore.LookAtMgr::LookAt_FlushLookAtQueueImpl [assembly=ScriptCore token=0x06000FF4; handle:
   System.UInt64, priority: System.Int32; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int ScriptCore_LookAtMgr__LookAt_FlushLookAtQueueImpl
              (undefined4 param_1,undefined4 param_2,int param_3)

{
  int iVar1;
  void *this;
  
  iVar1 = FUN_00937570();
  this = (void *)FUN_00937f80(iVar1);
  if (this != (void *)0x0) {
    iVar1 = FUN_00934260(this,DAT_011dd484);
    if ((iVar1 != 0) && (*(void **)(iVar1 + 0x28) != (void *)0x0)) {
      iVar1 = FUN_00581420(*(void **)(iVar1 + 0x28),param_3);
      return iVar1;
    }
  }
  return 0;
}

