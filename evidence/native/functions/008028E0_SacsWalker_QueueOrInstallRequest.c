/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX walker,two physical words RET8. With no
   destination+24 call00802690 immediately; otherwise append8-byte state/flags pair, allocating
   deque storage through007276D0 if required. Queued branch sets walker dirty+C and driver+146, then
   schedules through007FCF80 when manager exists. No .NET Task or continuation in native pair. */

void __thiscall SacsWalker_QueueOrInstallRequest(void *this,uint param_1,uint param_2)

{
  uint *puVar1;
  int iVar2;
  
  if (*(int *)((int)this + 0x24) == 0) {
    SACS_WalkerInstallDestination_802690(this,param_1,param_2);
  }
  else {
    puVar1 = *(uint **)((int)this + 0x44);
    if (puVar1 + 2 == *(uint **)((int)this + 0x4c)) {
      FUN_007276d0((void *)((int)this + 0x2c),&param_1);
    }
    else {
      *(uint **)((int)this + 0x44) = puVar1 + 2;
      if (puVar1 != (uint *)0x0) {
        *puVar1 = param_1;
        puVar1[1] = param_2;
      }
    }
    *(undefined1 *)((int)this + 0xc) = 1;
    iVar2 = *(int *)((int)this + 4);
    *(undefined1 *)(iVar2 + 0x146) = 1;
    if (DAT_011d9d40 != (void *)0x0) {
      SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,iVar2,'\0');
      return;
    }
  }
  return;
}

