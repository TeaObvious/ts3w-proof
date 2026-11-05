/* Selects the linked-list insertion position using signed priority at record+0C and delegates the
   actual node insertion/copy to 44C970 or 44CB50. Selects a stable position within the
   equal-priority group; node insertion/copy remains delegated. ECX queue sentinel and one
   record-pointer stack word; RET4. Analyst-assigned name. */

void __thiscall InsertQueuedMessageByPriority(void *this,int param_1)

{
  int iVar1;
  int *piVar2;
  int *piVar3;

  /* 0044CC2D: Priority is signed Int32 record+0C; A913D0 queue submission supplies priority 0. Head/tail comparisons and directional searches select a stable position within the equal-priority group; actual node insertion/copy remains delegated. */
  piVar3 = *(int **)this;
  if ((piVar3 != this) &&
     (iVar1 = *(int *)(param_1 + 0xc), *(int *)(*(int *)((int)this + 4) + 0x14) < iVar1)) {
    if (piVar3[5] < iVar1) {
      /* 0044CC8E: The decompiler omits helper arguments: original pushes record EBX and the selected insertion position before 44C970; the 44CB50 sites likewise pass an iterator/output record. Node allocation/copy/failure policy remains in those children. */
      FUN_0044c970((int)this);
      return;
    }
    if (iVar1 < 1) {
      piVar2 = this;
      do {
        piVar2 = (int *)piVar2[1];
        if (iVar1 <= piVar2[5]) {
          FUN_0044cb50((int)this);
          return;
        }
      } while (piVar2 != piVar3);
      FUN_0044c970((int)this);
      return;
    }
    do {
      if (piVar3[5] < iVar1) {
        FUN_0044cb50((int)this);
        return;
      }
      piVar3 = (int *)*piVar3;
    } while (piVar3 != this);
  }
  FUN_0044c970((int)this);
  return;
}
