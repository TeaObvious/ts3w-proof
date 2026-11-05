/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void __thiscall
FUN_007894a0(void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
            undefined4 param_5)

{
  *(undefined ***)this = &PTR_LAB_00ff4a78;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined ***)((int)this + 8) = &PTR_FUN_00f9b454;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fa2b8c;
  *(undefined4 *)((int)this + 0x10) = param_1;
  *(undefined4 *)((int)this + 0x14) = param_2;
  *(undefined4 *)((int)this + 0x18) = param_3;
  *(undefined ***)this = &PTR_FUN_01011984;
  *(undefined ***)((int)this + 8) = &PTR_LAB_01011978;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_01011968;
  *(undefined4 *)((int)this + 0x1c) = param_4;
  *(undefined4 *)((int)this + 0x20) = param_5;
  *(undefined4 *)((int)this + 0x24) = 0;
  return;
}

