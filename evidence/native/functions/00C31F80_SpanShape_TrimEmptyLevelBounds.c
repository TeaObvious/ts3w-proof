/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction topology/projection counterpart): ECX shape, no physical stack
   arguments, plain RET; void. Normalize leading and trailing retained level rows through existing
   C319C0. If normalized boundary row deque is empty, destroy/release its storage, advance the level
   deque and adjust signed-byte min/max level; stop on a nonempty boundary or total exhaustion.
   Empty shape sets minLevel0/maxLevelFF. Existing child normalizer and destructor/free effects are
   retained, not generalized as full shape creation or current exact-coverage validation. C32240
   invokes this only while dirty before recount. */

void __thiscall SpanShape_TrimEmptyLevelBounds(void *this)

{
  void *allocation;
  int iVar1;
  int *piVar2;
  void *pvVar3;
  
  if (*(int *)((int)this + 0xc) != *(int *)((int)this + 0x1c)) {
    do {
      iVar1 = *(int *)((int)this + 0xc);
      FUN_00c319c0(iVar1);
      if (*(int *)(iVar1 + 8) != *(int *)(iVar1 + 0x18)) break;
      piVar2 = *(int **)((int)this + 0xc);
      if (piVar2 + 0xc == *(int **)((int)this + 0x14)) {
        FUN_00c05710(piVar2);
        if (*(void **)((int)this + 0x10) != (void *)0x0) {
          Memory_FreeIfNonNull(*(void **)((int)this + 0x10));
        }
        piVar2 = (int *)(*(int *)((int)this + 0x18) + 4);
        *(int **)((int)this + 0x18) = piVar2;
        iVar1 = *piVar2;
        *(int *)((int)this + 0x10) = iVar1;
        *(int *)((int)this + 0x14) = iVar1 + 0xc0;
        *(undefined4 *)((int)this + 0xc) = *(undefined4 *)((int)this + 0x10);
      }
      else {
        *(int **)((int)this + 0xc) = piVar2 + 0xc;
        FUN_00c05710(piVar2);
      }
      *(char *)this = *(char *)this + '\x01';
    } while (*(int *)((int)this + 0xc) != *(int *)((int)this + 0x1c));
  }
  if (*(int *)((int)this + 0xc) != *(int *)((int)this + 0x1c)) {
    do {
      iVar1 = *(int *)((int)this + 0x1c);
      if (iVar1 == *(int *)((int)this + 0x20)) {
        iVar1 = *(int *)(*(int *)((int)this + 0x28) + -4) + 0xc0;
      }
      FUN_00c319c0(iVar1 + -0x30);
      if (*(int *)(iVar1 + -0x28) != *(int *)(iVar1 + -0x18)) break;
      pvVar3 = *(void **)((int)this + 0x1c);
      allocation = *(void **)((int)this + 0x20);
      if (pvVar3 == allocation) {
        if (allocation != (void *)0x0) {
          Memory_FreeIfNonNull(allocation);
        }
        piVar2 = (int *)(*(int *)((int)this + 0x28) + -4);
        *(int **)((int)this + 0x28) = piVar2;
        iVar1 = *piVar2;
        *(int *)((int)this + 0x20) = iVar1;
        pvVar3 = (void *)(iVar1 + 0xc0);
        *(void **)((int)this + 0x24) = pvVar3;
      }
      *(int **)((int)this + 0x1c) = (int *)((int)pvVar3 + -0x30);
      FUN_00c05710((int *)((int)pvVar3 + -0x30));
      *(char *)((int)this + 1) = *(char *)((int)this + 1) + -1;
    } while (*(int *)((int)this + 0xc) != *(int *)((int)this + 0x1c));
  }
  if (*(int *)((int)this + 0xc) == *(int *)((int)this + 0x1c)) {
    *(undefined1 *)this = 0;
    *(undefined1 *)((int)this + 1) = 0xff;
  }
  return;
}

