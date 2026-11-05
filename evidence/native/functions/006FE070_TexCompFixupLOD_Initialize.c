/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67 two-key initializer. Initializes base/derived vtables and reference-count word,
   copies each 16-byte key into receiver+08 and+18, and clears only low two bits of receiver+28.
   Applied callback7227B0 interprets these lanes as diffusemap/specularmap; this constructor
   performs no material substitution or texture acquisition. */

void __thiscall TexCompFixupLOD_Initialize(void *this,undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  
  *(undefined ***)this = &PTR_FUN_00ff0fdc;
  LOCK();
  *(undefined4 *)((int)this + 4) = 0;
  UNLOCK();
  *(undefined ***)this = &PTR_FUN_00ffaf88;
  *(undefined4 *)((int)this + 8) = *param_1;
  *(undefined4 *)((int)this + 0xc) = param_1[1];
  *(undefined4 *)((int)this + 0x10) = param_1[2];
  *(undefined4 *)((int)this + 0x14) = param_1[3];
  *(undefined4 *)((int)this + 0x18) = *param_2;
  *(undefined4 *)((int)this + 0x1c) = param_2[1];
  *(undefined4 *)((int)this + 0x20) = param_2[2];
  uVar1 = param_2[3];
  *(byte *)((int)this + 0x28) = *(byte *)((int)this + 0x28) & 0xfc;
  *(undefined4 *)((int)this + 0x24) = uVar1;
  return;
}

