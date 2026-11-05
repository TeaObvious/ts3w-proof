/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Physical ECX receiver, no stack inputs, RET; initial MOV
   EAX,ECX remains unchanged through the full body, so EAX returns receiver. Installs primary
   vtableF9B380 including pump slot8C=4107C0. Initial flags dword+8=2A includes message bit20 and
   invalidation bit08. Clears message service+5C, callback+64 and cookie+68, and stores original
   Services/EAApp/Canvas allocation name at+30. Full field initialization and literal widths remain
   in ASM, no inferred complete source class layout or scheduling contract. This is the actual
   selected producer of pump flags/receiver table; caller allocation/application lifetime remains
   outside this body. */

void * __thiscall WindowCanvas_InitializeFields(void *this)

{
  *(undefined ***)this = &PTR_FUN_00f9b380;
  *(undefined4 *)((int)this + 4) = 0xf;
  *(undefined4 *)((int)this + 8) = 0x2a;
  *(undefined1 *)((int)this + 0xc) = 0;
  *(undefined1 *)((int)this + 0xd) = 0;
  *(undefined1 *)((int)this + 0xe) = 0;
  *(undefined1 *)((int)this + 0xf) = 0;
  *(undefined1 *)((int)this + 0x10) = 0;
  *(undefined1 *)((int)this + 0x11) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined1 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(char **)((int)this + 0x30) = "Services/EAApp/Canvas";
  *(undefined2 **)((int)this + 0x2c) = &DAT_011c8e56;
  *(undefined1 **)((int)this + 0x24) = &DAT_011c8e54;
  *(undefined1 **)((int)this + 0x28) = &DAT_011c8e54;
  *(undefined4 *)((int)this + 0x34) = 0;
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x3c) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  *(undefined4 *)((int)this + 0x44) = 0;
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined1 *)((int)this + 0x4c) = 1;
  *(undefined1 *)((int)this + 0x4d) = 0;
  *(undefined1 *)((int)this + 0x4e) = 0;
  *(undefined1 *)((int)this + 0x4f) = 0;
  *(undefined4 *)((int)this + 0x50) = 2000;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined4 *)((int)this + 0x58) = 0;
  *(undefined4 *)((int)this + 0x5c) = 0;
  *(undefined4 *)((int)this + 0x60) = 0;
  *(undefined4 *)((int)this + 100) = 0;
  *(undefined4 *)((int)this + 0x68) = 0;
  *(undefined2 *)((int)this + 0x6c) = 0;
  *(undefined4 *)((int)this + 0x70) = 0;
  *(undefined4 *)((int)this + 0x74) = 0;
  *(undefined4 *)((int)this + 0x78) = 0;
  *(undefined4 *)((int)this + 0x7c) = 0;
  *(undefined4 *)((int)this + 0x80) = 0xc80000;
  *(undefined4 *)((int)this + 0x84) = 0;
  *(undefined4 *)((int)this + 0x88) = 0;
  *(undefined4 *)((int)this + 0x8c) = 0;
  *(undefined4 *)((int)this + 0x90) = 0;
  return this;
}

