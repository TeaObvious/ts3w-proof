/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x0115ed80 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CameraController::Camera_StartFlyThrough [assembly=ScriptCore token=0x06000712;
   pathIndex: System.UInt32, startFromCameraPosition: System.Boolean; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Complete PC 1.67 wrapper body 0073D7A0..0073D7C5: 38 bytes, 14 instructions. It calls00969BD0,
   tests EAX, then calls00F21FF0 with ECX from the first result and tests EAX again. Either zero
   result reaches the same plain RET(C3). With both nonzero, caller stack words[ESP+4] and[ESP+8]
   are forwarded unchanged to0096B230, pushing the second before the first, with ECX from the second
   lookup. The pristine ScriptCore implementation0600073F forwards UInt32 pathIndex/Boolean
   startFromCameraPosition to this native declaration06000712; the managed return contract is Void.
   Plain RET does not pop those caller argument words; the existing stored calling-convention/type
   projection is retained, not newly accepted as the physical ABI. Lookup ownership, helper0096B230
   effects/callbacks and exceptional exits are separate child contracts. */

void ScriptCore_CameraController__Camera_StartFlyThrough(uint param_1,undefined4 param_2)

{
  int iVar1;
  void *this;
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    this = (void *)FUN_00f21ff0(iVar1);
    if (this != (void *)0x0) {
      FUN_0096b230(this,param_1,param_2);
    }
  }
  return;
}

