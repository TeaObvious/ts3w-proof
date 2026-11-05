/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst-assigned PC 1.67 request-descriptor initializer, checked with the complete 79-instruction
   body and the registered general-thumbnail caller. ECX is the output descriptor; fifteen stack
   words are consumed by RET 0x3c. It initializes the fixed-vector boundaries, stores key
   instance-low/high/type/group at +0x78/+0x7c/+0x80/+0x84 and template object-ID words at
   +0x88/+0x8c. The caller mapping establishes index at +0x100, ageGender at +0x108, camera at
   +0xfc, geometry/material state at +0x10c/+0x110, and low-byte technique/liveUpdate at
   +0x114/+0x115. It zeroes four 16-byte entries and +0x104/+0x118/+0x11c/+0x120, then passes size
   and low-byte doNotCache into the existing 005e6cb0 child with zeroed remaining payload. Return is
   the descriptor pointer. Fixed-vector initialization does not establish child cache/render policy;
   inferred parameter types are not recovered original source types. */

void * __thiscall
UIThumbnail_InitializeRequestDescriptor
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          undefined4 param_5,undefined4 param_6,undefined4 param_7,undefined4 param_8,
          undefined4 param_9,undefined1 param_10,undefined4 param_11,undefined1 param_12,
          undefined4 param_13,undefined4 param_14,undefined1 param_15)

{
  undefined4 *puVar1;
  int iVar2;
  
  iVar2 = (int)this + 0x18;
  *(int *)((int)this + 0x10) = iVar2;
  *(int *)((int)this + 4) = iVar2;
  *(int *)this = iVar2;
  *(int *)((int)this + 8) = (int)this + 0x78;
  *(undefined4 *)((int)this + 0x78) = param_1;
  *(undefined4 *)((int)this + 0x7c) = param_2;
  *(undefined4 *)((int)this + 0x80) = param_3;
  *(undefined4 *)((int)this + 0x84) = param_4;
  *(undefined4 *)((int)this + 0x88) = param_5;
  *(undefined4 *)((int)this + 0x8c) = param_6;
  *(char **)((int)this + 0xc) = "EASTL fixed_vector";
  iVar2 = (int)this + 0xa8;
  *(int *)((int)this + 0xa0) = iVar2;
  *(int *)((int)this + 0x94) = iVar2;
  *(int *)((int)this + 0x90) = iVar2;
  *(char **)((int)this + 0x9c) = "EASTL fixed_vector";
  *(int *)((int)this + 0x98) = (int)this + 0xb8;
  puVar1 = (undefined4 *)((int)this + 0xb8);
  iVar2 = 3;
  do {
    *puVar1 = 0;
    puVar1[1] = 0;
    puVar1[2] = 0;
    puVar1[3] = 0;
    puVar1 = puVar1 + 4;
    iVar2 = iVar2 + -1;
  } while (-1 < iVar2);
  *(undefined4 *)((int)this + 0xfc) = param_11;
  *(undefined4 *)((int)this + 0x100) = param_7;
  *(undefined4 *)((int)this + 0x108) = param_9;
  *(undefined4 *)((int)this + 0x10c) = param_13;
  *(undefined4 *)((int)this + 0x110) = param_14;
  *(undefined1 *)((int)this + 0x114) = param_12;
  *(undefined1 *)((int)this + 0x115) = param_10;
  *(undefined4 *)((int)this + 0x104) = 0;
  *(undefined4 *)((int)this + 0x118) = 0;
  *(undefined4 *)((int)this + 0x11c) = 0;
  *(undefined4 *)((int)this + 0x120) = 0;
  FUN_005e6cb0(this,param_8,param_15,0,0,0,0);
  return this;
}

