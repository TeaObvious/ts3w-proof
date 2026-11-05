/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x0115ed88 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CameraController::Camera_GetCustomFlyThroughIndex [assembly=ScriptCore
   token=0x06000713; ; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Complete PC 1.67 wrapper body 0073D7D0..0073D7ED: 30 bytes, 11 instructions. It takes no caller
   arguments, calls00969BD0, then calls00F21FF0 with ECX from the first result only when nonzero.
   Either failed lookup reaches XOR EAX,EAX; RET(C3). Success moves the second result into ECX and
   tail-jumps to00969EF0, preserving the original return address; it is not a CALL followed by
   another wrapper return. ScriptCore implementation06000740/native declaration06000713 expose a
   UInt32 custom fly-through index. The tail target00969EF0 is identified only as a transfer
   destination in this finite wrapper publication; its internal effects, result production,
   initialization, mutations and ownership remain separate unpublished child contracts. Existing
   stored prototype/type/convention metadata is retained; original instructions govern. */

undefined4 ScriptCore_CameraController__Camera_GetCustomFlyThroughIndex(void)

{
  int iVar1;
  undefined4 uVar2;
  
  iVar1 = FUN_00969bd0();
  if (iVar1 != 0) {
    iVar1 = FUN_00f21ff0(iVar1);
    if (iVar1 != 0) {
      uVar2 = FUN_00969ef0(iVar1);
      return uVar2;
    }
  }
  return 0;
}

