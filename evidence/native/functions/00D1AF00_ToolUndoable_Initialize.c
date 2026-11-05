/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* thiscallconstructorECX/noargs/plainRET fullEAXreceiver. Initializesfree14=1 untilBegin D1A870
   queries originalCanBeCharged. CapturescurrenttoolworldatCviaCEF500.
   Basepre/postoperations/lifecycleremainactualownedcontainers; no sourcebytechanges. */

undefined * __thiscall ToolUndoable_Initialize(void *this)

{
  int iVar1;
  
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined ***)((int)this + 8) = &PTR_LAB_00ffd294;
  *(undefined ***)this = &PTR_FUN_01085e00;
  *(undefined ***)((int)this + 8) = &PTR_LAB_0108708c;
  *(undefined4 *)((int)this + 0x10) = 0;
  *(undefined1 *)((int)this + 0x14) = 1;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x20) = 0;
  *(char **)((int)this + 0x24) = "UserTool/UserToolUndoable/mPreOperations";
  *(undefined4 *)((int)this + 0x28) = 0;
  *(undefined4 *)((int)this + 0x2c) = 0;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(char **)((int)this + 0x34) = "UserTool/UserToolUndoable/mPostOperations";
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x3c) = 0;
  *(undefined4 *)((int)this + 0x40) = 0;
  *(char **)((int)this + 0x44) = "UserTool/UserToolUndoable/mAbsolutePostOperations";
  *(undefined4 *)((int)this + 0x48) = 0;
  *(undefined1 *)((int)this + 0x4c) = 1;
  *(undefined1 *)((int)this + 0x4d) = 1;
  iVar1 = FUN_00cef500();
  if (iVar1 == 0) {
    *(undefined4 *)((int)this + 0xc) = 0;
  }
  else {
    *(undefined4 *)((int)this + 0xc) = *(undefined4 *)(iVar1 + 0x28);
  }
  if (DAT_011edbc4 != 0) {
    *(bool *)((int)this + 0x4e) = *(int *)(DAT_011edbc4 + 0x154) == 0xcc;
  }
  return this;
}

