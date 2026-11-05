/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * ECX request constructor plus six stack words RET24. Stores owner GUID, resource state+18 and callback+28, retains callback virtual0, stores5AE5B0 function pointer, resource manager virtual34 requests type025ED708 into state+18 with callbackD4B3A0 and flag1. Native tagged-resource/request lifetime is distinct from CLR Task scheduling.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 005AA330_FUN_005aa330.asm
 */

void * __thiscall
FUN_005aa330(void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5,undefined4 *param_6)

{
  *(undefined ***)this = &PTR_FUN_0106c91c;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined4 *)((int)this + 8) = param_1;
  *(undefined4 *)((int)this + 0xc) = param_2;
  *(code **)((int)this + 0x10) = FUN_005ae5b0;
  *(undefined ***)this = &PTR_FUN_00fdf88c;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x20) = param_4;
  *(undefined4 *)((int)this + 0x24) = param_5;
  *(undefined4 **)((int)this + 0x28) = param_6;
  if (param_6 != (undefined4 *)0x0) {
    (**(code **)*param_6)();
  }
  if (DAT_011d4c84 != (int *)0x0) {
    (**(code **)(*DAT_011d4c84 + 0x34))
              (param_3,0x25ed708,(undefined4 *)((int)this + 0x18),0,0,
               ResourceCallback_InvokeVirtual04,0,1);
  }
  return this;
}

