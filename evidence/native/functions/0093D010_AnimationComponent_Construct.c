/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. 0x40-byte component: owner object+4
   borrowed, animation interface+8=vtable01044404, runtime+0x24 initially0, rig/runtime fields
   zeroed, flags+0x2c=8, force byte+0x38=0. Interface attachment+0x14 resolves to0093ebb0;
   stop-all+0x18 to0093ca90. */

void * __thiscall AnimationComponent_Construct(void *this,int param_1)

{
  *(int *)((int)this + 4) = param_1;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined ***)((int)this + 8) = &PTR_LAB_0104433c;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_0104436c;
  *(undefined ***)((int)this + 0x10) = &PTR_LAB_010442a8;
  *(undefined ***)this = &PTR_LAB_01044434;
  *(undefined ***)((int)this + 8) = &PTR_FUN_01044404;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_010443ec;
  *(undefined ***)((int)this + 0x10) = &PTR_LAB_010443a0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x2c) = 8;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x34) = 0;
  *(undefined1 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  if ((*(uint *)(param_1 + 0x2c) & DAT_011ea0fc) != 0) {
    Object_MarkUpdateFlags(*(void **)((int)this + 4),DAT_011dd47c);
  }
  return this;
}

