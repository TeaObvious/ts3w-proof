/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX walker, plain RET. Empty deque clears
   destination+24, flags+20=40 and leaving+72=0. Otherwise oldest eight-byte state/flags pair is
   passed to00802690, deque head advances by8 with256-byte segment rollover/release, leaving
   cleared. Original pointer/flags queue is distinct from managed TaskCompletionSource ownership. */

void __fastcall SacsWalker_PopQueuedRequest(void *param_1)

{
  uint *puVar1;
  int iVar2;
  int *piVar3;
  
  puVar1 = *(uint **)((int)param_1 + 0x34);
  if (puVar1 == *(uint **)((int)param_1 + 0x44)) {
    *(undefined4 *)((int)param_1 + 0x24) = 0;
    *(undefined4 *)((int)param_1 + 0x20) = 0x40;
    *(undefined1 *)((int)param_1 + 0x72) = 0;
    return;
  }
  SACS_WalkerInstallDestination_802690(param_1,*puVar1,puVar1[1]);
  iVar2 = *(int *)((int)param_1 + 0x34) + 8;
  if (iVar2 == *(int *)((int)param_1 + 0x3c)) {
    if (*(void **)((int)param_1 + 0x38) != (void *)0x0) {
      Memory_FreeIfNonNull(*(void **)((int)param_1 + 0x38));
    }
    piVar3 = (int *)(*(int *)((int)param_1 + 0x40) + 4);
    *(int **)((int)param_1 + 0x40) = piVar3;
    iVar2 = *piVar3;
    *(int *)((int)param_1 + 0x38) = iVar2;
    *(int *)((int)param_1 + 0x3c) = iVar2 + 0x100;
    iVar2 = *(int *)((int)param_1 + 0x38);
  }
  *(int *)((int)param_1 + 0x34) = iVar2;
  *(undefined1 *)((int)param_1 + 0x72) = 0;
  return;
}

