/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: Bind core owner+18 and register0487B4AF with actual service and descriptor
   table1060680. This registers a callback, not proof of immediate/asynchronous scheduling. RET4. */

void __thiscall CeilingManager_BindOwnerAndRegisterRequest(void *this,undefined4 param_1)

{
  int *piVar1;
  
  *(undefined4 *)((int)this + 0x18) = param_1;
  piVar1 = (int *)FUN_007693a0();
  if (piVar1 != (int *)0x0) {
    *(int **)((int)this + 4) = piVar1;
    *(void **)((int)this + 8) = this;
    *(undefined **)((int)this + 0xc) = &DAT_01060680;
    *(undefined4 *)((int)this + 0x10) = 1;
    *(undefined4 *)((int)this + 0x14) = 0;
    (**(code **)(*piVar1 + 0x24))(this,0x487b4af,0,0);
  }
  return;
}

