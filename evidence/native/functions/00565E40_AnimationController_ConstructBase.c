/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Initializes non-atomic controller
   reference count +4 to zero, listener interface +0xc with sentinel +0x10/+0x14, dispatch depth
   +0x18, borrowed animation interface +0x1c, unique controller id +0x20 and completed-once byte
   +0x24. No owner-interface AddRef appears here. */

void __thiscall AnimationController_ConstructBase(void *this,undefined4 param_1)

{
  int iVar1;
  
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined ***)((int)this + 8) = &PTR_LAB_00ffd294;
  *(undefined ***)((int)this + 0xc) = &PTR_FUN_00fc3fa8;
  iVar1 = (int)this + 0x10;
  *(int *)((int)this + 0x14) = iVar1;
  *(int *)iVar1 = iVar1;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = param_1;
  *(undefined1 *)((int)this + 0x24) = 0;
  *(undefined ***)this = &PTR_FUN_00fc29f8;
  *(undefined ***)((int)this + 8) = &PTR_LAB_00fc29ec;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fc29e8;
  iVar1 = DAT_01150590 + 1;
  *(int *)((int)this + 0x20) = DAT_01150590;
  DAT_01150590 = iVar1;
  return;
}

