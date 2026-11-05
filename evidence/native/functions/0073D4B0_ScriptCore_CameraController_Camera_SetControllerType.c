/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x0115ec48 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.CameraController::Camera_SetControllerType [assembly=ScriptCore token=0x060006EB;
   type: System.UInt32; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Complete PC 1.67 wrapper body 0073D4B0..0073D4D4: 37 bytes, 14 instructions. It calls00969BD0 and
   then00F21FF0 only if the first EAX is nonzero; a second zero skips the child too. On the resolved
   branch, it forwards caller word[ESP+4] plus a literal zero to0096B060 with ECX from the second
   lookup. Every ordinary branch then executes MOV AL,1 before plain RET(C3), including
   missing-lookup branches. This establishes low-byte Boolean success on ordinary return, not
   EAX==1: upper24bits are not normalized, and no result from0096B060 is claimed. ScriptCore
   implementation06000718 forwards its controller value to native Boolean declaration060006EB. The
   wrapper does not pop its caller argument; existing stored prototypes/calling convention remain
   unchanged and are not the ABI authority. Lookup ownership, child controller transitions/callbacks
   and exceptional exits remain separate. */

undefined4 ScriptCore_CameraController__Camera_SetControllerType(int param_1)

{
  int iVar1;
  void *this;
  undefined4 uVar2;
  
  iVar1 = FUN_00969bd0();
  uVar2 = 0;
  if (iVar1 != 0) {
    this = (void *)FUN_00f21ff0(iVar1);
    uVar2 = 0;
    if (this != (void *)0x0) {
      uVar2 = FUN_0096b060(this,param_1,'\0');
    }
  }
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

