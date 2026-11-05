/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Setsowner at +4, local quaternion+10 andlocal translation+20
   to identity/zero; parent+30=NULL,flags+34=1, installsTransform vtable. Returns this. */

void * __thiscall TransformComponent_Construct(void *this,void *owner)

{
  undefined4 uVar1;
  
  uVar1 = DAT_00f998f8;
  *(void **)((int)this + 4) = owner;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined ***)this = &PTR_FUN_010458cc;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = uVar1;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x34) = 1;
  Object_ClearUpdateFlags(*(void **)((int)this + 4),DAT_011ea154);
  return this;
}

