/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. ECX container, RET4 UInt16 index. Requires mode
   exactly1 and source stream. Entry stride868h; compares zero-extended index to vector count.
   Out-of-range sets entry pointer0 but subsequent access dereferences entry+24: this leaf does NOT
   promise graceful invalid-index failure. Seek parent to payloadBase+entryOffset, construct
   child0x24. Caller validity and parent/child lifetime require separate evidence. */

void * __thiscall Sims3Pack_OpenEntryStream(void *this,ushort entryIndex)

{
  int *owner;
  bool bVar1;
  void *this_00;
  void *pvVar2;
  
  if ((*(int *)((int)this + 0xb4) == 1) &&
     (owner = *(int **)((int)this + 0x110), owner != (int *)0x0)) {
    if ((uint)entryIndex < (uint)((*(int *)((int)this + 8) - *(int *)((int)this + 4)) / 0x868)) {
      pvVar2 = (void *)((uint)entryIndex * 0x868 + *(int *)((int)this + 4));
    }
    else {
      pvVar2 = (void *)0x0;
    }
    bVar1 = (**(code **)(*owner + 0x28))
                      (owner,*(int *)((int)pvVar2 + 0x24) + *(int *)((int)this + 0x118),0);
    if (bVar1) {
      this_00 = (void *)FUN_004e4500(0x24,"DownloadContent/Sims3PackFile/FileEntryStream",0);
      if (this_00 != (void *)0x0) {
        pvVar2 = Sims3PackEntryStream_Construct
                           (this_00,pvVar2,*(void **)((int)this + 0x110),
                            *(uint *)((int)this + 0x118),*(uint *)((int)this + 0xb4));
        return pvVar2;
      }
    }
    return (void *)0x0;
  }
  return (void *)0x0;
}

