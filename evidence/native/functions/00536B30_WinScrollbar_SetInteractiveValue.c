/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67: upper then lower clamp, optional old/new event or target sync, invalidate; void
   RET8.
   Upper-then-lower clamp precedes changed-value event 0x8ef0c8dd when notifying, otherwise target
   synchronization. No local literal IWindow mask query occurs in this function. Event-field to
   managed-argument mapping remains separate. No value result; RET 8. No inferred prototype is
   forced.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

void __thiscall WinScrollbar_SetInteractiveValue(int param_1,int param_2,char param_3)

{
  int iVar1;
  int iVar2;
  undefined1 auStack_1c [8];
  undefined4 uStack_14;
  int iStack_10;
  int iStack_c;
  int iStack_8;
  
  iVar2 = *(int *)(param_1 + 0x18) - *(int *)(param_1 + 0x1c);
  iVar1 = *(int *)(param_1 + 4);
  if (iVar2 < param_2) {
    param_2 = iVar2;
  }
  if (param_2 < *(int *)(param_1 + 0x14)) {
    param_2 = *(int *)(param_1 + 0x14);
  }
  if (param_2 != iVar1) {
    *(int *)(param_1 + 4) = param_2;
    if (param_3 == '\0') {
      *(int *)(param_1 + 0xc) = param_2;
    }
    else {
      iStack_10 = *(int *)(param_1 + -0x214);
      uStack_14 = 0x8ef0c8dd;
      if (iStack_10 == 0) {
        iStack_10 = *(int *)(param_1 + -0x218);
      }
      iStack_c = iVar1;
      iStack_8 = param_2;
      (**(code **)(*(int *)(param_1 + -0x24c) + 0x118))(auStack_1c);
    }
    (**(code **)(*(int *)(param_1 + -0x250) + 0x9c))();
  }
  return;
}

