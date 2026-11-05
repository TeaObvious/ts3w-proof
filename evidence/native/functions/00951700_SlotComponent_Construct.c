/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 instruction contract. ECX new Slot storage plus owner word/RET4.
   Initializes owner+4, slot/child resource state and authored component data;951760 stores zero
   into+64h. This establishes initial installed-pointer0 only for newly constructed Slots. No
   loaded-world event order or unrelated shared-field receiver type follows from this constructor.
    */

void __thiscall SlotComponent_Construct(void *this,undefined4 param_1)

{
  int iVar1;
  
  *(undefined4 *)((int)this + 4) = param_1;
  *(undefined ***)this = &PTR_FUN_01045338;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(undefined4 *)((int)this + 0x24) = 0;
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x34) = 0;
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x3c) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  *(undefined4 *)((int)this + 0x44) = 0;
  *(char **)((int)this + 0x50) = "Objects/SlotComponent/mChildren";
  iVar1 = (int)this + 0x48;
  *(int *)iVar1 = iVar1;
  *(int *)((int)this + 0x4c) = iVar1;
  *(undefined4 *)((int)this + 0x54) = 0;
  *(undefined4 *)((int)this + 0x58) = 0;
  *(undefined4 *)((int)this + 0x5c) = 0;
  *(char **)((int)this + 0x60) = "Objects/SlotComponent/AnimBoneContainmentSlot";
  *(undefined4 *)((int)this + 100) = 0;
  return;
}

