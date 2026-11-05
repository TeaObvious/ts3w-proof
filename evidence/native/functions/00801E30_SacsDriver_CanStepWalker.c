/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX driver, walker RET4, AL Boolean. Null
   false. Signed positive status plus interruptbit2 and active1/2/3/7 atomically becomes-1, resets
   listener field14, invokes graph-abandon8017A0 and dirties/schedules. Remaining positive status
   rejects. Sync departure to nonsync destination waits on each stateful actor
   destination/status5/6. Without interrupt, tail-readiness800150 decides; interrupt returns true.
   Signed status/AL take precedence over uint decompiler casts. */

uint __thiscall SacsDriver_CanStepWalker(void *this,uint param_1)

{
  uint *puVar1;
  uint in_EAX;
  uint uVar2;
  int iVar3;
  
  if (param_1 == 0) {
    return in_EAX & 0xffffff00;
  }
  puVar1 = (uint *)(param_1 + 0x6c);
  if ((((0 < *(int *)(param_1 + 0x6c)) && ((*(byte *)(param_1 + 0x20) & 2) != 0)) &&
      (uVar2 = *puVar1, 0 < (int)uVar2)) && (((int)uVar2 < 4 || (uVar2 == 7)))) {
    LOCK();
    *puVar1 = 0xffffffff;
    UNLOCK();
    if (*(void **)(param_1 + 100) != (void *)0x0) {
      RecordField14_StoreDword(*(void **)(param_1 + 100),0);
    }
    FUN_008017a0(*(void **)(param_1 + 4),param_1);
    iVar3 = *(int *)(param_1 + 4);
    *(undefined1 *)(param_1 + 0xc) = 1;
    *(undefined1 *)(iVar3 + 0x146) = 1;
    if (DAT_011d9d40 != (void *)0x0) {
      SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,iVar3,'\0');
    }
  }
  uVar2 = *puVar1;
  if (0 < (int)uVar2) {
LAB_00801eff:
    return uVar2 & 0xffffff00;
  }
  if (((*(char *)((int)this + 0x3c) != '\0') && (uVar2 = *(uint *)(param_1 + 0x24), uVar2 != 0)) &&
     (*(char *)(uVar2 + 0x4c) == '\0')) {
    for (iVar3 = *(int *)((int)this + 0x10); iVar3 != *(int *)((int)this + 0x14); iVar3 = iVar3 + 8)
    {
      uVar2 = *(uint *)(iVar3 + 4);
      if (((*(int *)(uVar2 + 0x10) != 0) || (*(int *)(uVar2 + 0x1c) != 0)) &&
         ((*(int *)(uVar2 + 0x24) == 0 ||
          ((*(int *)(uVar2 + 0x6c) == 5 || (uVar2 = *(uint *)(uVar2 + 0x6c), uVar2 == 6))))))
      goto LAB_00801eff;
    }
  }
  if ((*(byte *)(param_1 + 0x20) & 2) == 0) {
    uVar2 = SacsDriver_CheckWalkerIdleReadiness(this,param_1);
    return uVar2;
  }
  return CONCAT31((int3)(uVar2 >> 8),1);
}

