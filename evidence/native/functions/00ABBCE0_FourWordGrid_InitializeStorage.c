/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Initializes compressed four-word grid dimensions and empty storage using allocator labels. This
   constructor alone establishes neither serialized cell order nor an empty marker value. */

void __thiscall FourWordGrid_InitializeStorage(void *this,char *param_1)

{
  char *pcVar1;
  
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined ***)this = &PTR_FUN_010660a4;
  pcVar1 = param_1;
  if (param_1 == (char *)0x0) {
    pcVar1 = "EASTL";
  }
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(char **)((int)this + 0x1c) = pcVar1;
  *(undefined ***)this = &PTR_FUN_010660f0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  pcVar1 = param_1;
  if (param_1 == (char *)0x0) {
    pcVar1 = "EASTL";
  }
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(char **)((int)this + 0x34) = pcVar1;
  pcVar1 = param_1;
  if (param_1 == (char *)0x0) {
    pcVar1 = "EASTL";
  }
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x3c) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  *(char **)((int)this + 0x44) = pcVar1;
  if (param_1 == (char *)0x0) {
    param_1 = "EASTL";
  }
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined4 *)((int)this + 0x4c) = 0;
  *(undefined4 *)((int)this + 0x50) = 0;
  *(char **)((int)this + 0x54) = param_1;
  return;
}

