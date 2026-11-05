/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* PC 1.67 destination release. Status 5 may transition listener to ready subject to controller/idle
   gating; then walker/driver are marked dirty and scheduled. Otherwise it clears bit 0x20 on the
   first queued request and returns immediately, without scheduling or actor-byte transfer. When not
   returning through that queue branch, source actor byte +0x24 is cleared and a nonzero value sets
   destination actor byte +0x24. Exact broader meaning of this byte remains unresolved. Raw proof:
   guides/sacs/native/disassembly/destination-wait-release-801bd0.objdump.txt;
   reference . */



/* PC 1.67 destination release. Status 5 may transition listener to ready subject to controller/idle
   gating; then walker/driver are marked dirty and scheduled. Otherwise it clears bit 0x20 on the
   first queued request and returns immediately, without scheduling or actor-byte transfer. When not
   returning through that queue branch, source actor byte +0x24 is cleared and a nonzero value sets
   destination actor byte +0x24. Exact broader meaning of this byte remains unresolved. Raw proof:
   the canonical ASM/C pair for this function; reference SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3. */

void __thiscall SACS_ReleaseDestinationWait_801bd0(void *this,int param_1)

{
  char cVar1;
  uint *puVar2;
  uint *puVar3;
  uint uVar4;
  undefined4 uVar5;
  int iVar6;
  
  if (*(int *)((int)this + 0x6c) == 5) {
    if (((*(int *)((int)this + 0x6c) < 1) ||
        (uVar4 = SacsListener_HasBlockingController(*(int *)((int)this + 100)), (char)uVar4 == '\0')
        ) || (uVar5 = SacsDriver_CheckWalkerIdleReadiness(*(void **)((int)this + 4),(int)this),
             (char)uVar5 != '\0')) {
      LOCK();
      *(int *)((int)this + 0x6c) = 0;
      UNLOCK();
      if (*(void **)((int)this + 100) != (void *)0x0) {
        RecordField14_StoreDword(*(void **)((int)this + 100),0);
      }
      iVar6 = *(int *)((int)this + 4);
      *(undefined1 *)((int)this + 0xc) = 1;
      *(undefined1 *)(iVar6 + 0x146) = 1;
      if (DAT_011d9d40 != (void *)0x0) {
        SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,iVar6,'\0');
      }
    }
  }
  else {
    puVar3 = *(uint **)((int)this + 0x34);
    puVar2 = *(uint **)((int)this + 0x3c);
    iVar6 = *(int *)((int)this + 0x40);
    while (puVar3 != *(uint **)((int)this + 0x44)) {
      if ((*puVar3 & 0x20) != 0) {
        *puVar3 = *puVar3 & 0xffffffdf;
        puVar3[1] = puVar3[1];
        return;
      }
      puVar3 = puVar3 + 2;
      if (puVar3 == puVar2) {
        puVar3 = *(uint **)(iVar6 + 4);
        iVar6 = iVar6 + 4;
        puVar2 = puVar3 + 0x40;
      }
    }
  }
  if ((param_1 != 0) &&
     (cVar1 = *(char *)(*(int *)(param_1 + 8) + 0x24),
     *(undefined1 *)(*(int *)(param_1 + 8) + 0x24) = 0, cVar1 != '\0')) {
    *(undefined1 *)(*(int *)((int)this + 8) + 0x24) = 1;
  }
  return;
}

