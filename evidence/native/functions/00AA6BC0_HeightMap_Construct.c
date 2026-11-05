/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. ECX object, no stack args; starts MOV EAX,ECX and
   preservesEAX through RET, returningthis. Installs vtable010650b8;100-byte owner, sample
   pointer+38=null, dimensions+14/+18=0, derived cache begin/end/capacity+44/+48/+4c=null,
   labelWorld/HeightMap. Initial decompiler void return discarded realEAX pointer. */

void * __thiscall HeightMap_Construct(void *this)

{
  undefined4 uVar1;
  
  *(undefined ***)this = &PTR_FUN_0102bba4;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  uVar1 = DAT_00f998f8;
  UNLOCK();
  *(undefined ***)this = &PTR_HeightMap_DeletingDestructor_010650b8;
  *(undefined4 *)((int)this + 8) = uVar1;
  *(undefined4 *)((int)this + 0xc) = uVar1;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x3c) = 0xffffffff;
  *(undefined4 *)((int)this + 0x40) = 0xffffffff;
  *(undefined4 *)((int)this + 0x44) = 0;
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined4 *)((int)this + 0x4c) = 0;
  *(char **)((int)this + 0x50) = "World/HeightMap";
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined4 *)((int)this + 0x58) = 0;
  *(undefined4 *)((int)this + 0x5c) = 0;
  *(undefined4 *)((int)this + 0x60) = 0;
  *(undefined1 *)((int)this + 0x34) = 0;
  return this;
}

