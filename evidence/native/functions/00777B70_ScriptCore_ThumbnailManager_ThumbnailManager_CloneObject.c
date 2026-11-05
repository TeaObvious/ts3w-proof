/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162b48 (original PC 1.67 TS3W.exe).
   ScriptCore.ThumbnailManager::ThumbnailManager_CloneObject [assembly=ScriptCore token=0x06000187;
   objId: System.UInt64; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8
ScriptCore_ThumbnailManager__ThumbnailManager_CloneObject(undefined4 param_1,undefined4 param_2)

{
  undefined8 uVar1;
  
  if (DAT_011eec30 == (void *)0x0) {
    return 0;
  }
  uVar1 = FUN_00d584f0(DAT_011eec30,param_1,param_2);
  return uVar1;
}

