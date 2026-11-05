/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst note, original PC1.67 static. Complete188byte constructor53E640..53E6FB. ECX complete
   object, no stack arguments, plainRET and same object inEAX. Installs primaryFC0840, property
   subobject+4=FC0828, drawable interface+0C=FC07C0; DWORD reference counter+8 starts0. Initializes
   two eight-image banks at10..2C and30..4C, selected references50/78 and actual scalar/default
   fields through84. Primary retain/release are516C20/539560, forwarding to complete+8 shared
   counters; zero dispatch selects primary+8=53E700. Exact constants fromFAE554/F998F8/FB3F78, no
   invented deep thread/lifetime guarantee. */

void * __thiscall UiStdDrawable_Initialize(void *this)

{
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fbb1fc;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fc0758;
  *(undefined ***)this = &PTR_CountedReference_Retain_00fc0840;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fc0828;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fc07c0;
  *(undefined4 *)((int)this + 0x50) = 0;
  *(undefined4 *)((int)this + 0x54) = 1;
  *(undefined4 *)((int)this + 0x78) = 0;
  *(undefined4 *)((int)this + 0x58) = 0x3eaaaaab;
  *(undefined4 *)((int)this + 0x5c) = 0x3eaaaaab;
  *(undefined4 *)((int)this + 0x60) = 0x3eaaaaab;
  *(undefined4 *)((int)this + 100) = 0x3eaaaaab;
  *(float *)((int)this + 0x68) = 1.0;
  *(float *)((int)this + 0x6c) = 1.0;
  *(float *)((int)this + 0x70) = 1.0;
  *(float *)((int)this + 0x74) = 1.0;
  *(undefined4 *)((int)this + 0x7c) = 0x40c00000;
  *(undefined4 *)((int)this + 0x80) = 0;
  *(undefined4 *)((int)this + 0x84) = 0x80ffffff;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x34) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x3c) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x44) = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x4c) = 0;
  return this;
}
