/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 static instruction contract. ECX driver, actorhash RET4, AL Boolean only.
   Nonzero lazy lookup then801CA0. Actor0 visits in order and stops on null/joinstatus4/failure,
   retaining prior pauses. Successful entries status6, phase3 undo retained graph, clear78. Upper
   result bits from pointer/child calculations are incidental. */

undefined4 * __thiscall SacsDriver_PauseActorWalkers(void *this,int param_1)

{
  int iVar1;
  void *this_00;
  undefined4 *puVar2;
  undefined4 uVar3;
  uint uVar4;
  int iVar5;
  
  if (param_1 != 0) {
    uVar4 = SACS_LookupDestinationWalker_803c00(this,param_1);
    if (uVar4 == 0) {
      return (undefined4 *)0;
    }
    uVar3 = SacsDriver_PauseWalker(this,uVar4);
    return (undefined4 *)uVar3;
  }
  iVar1 = *(int *)((int)this + 0x14);
  iVar5 = *(int *)((int)this + 0x10);
  puVar2 = (undefined4 *)0x1;
  do {
    if (iVar5 == iVar1) {
      return puVar2;
    }
    if ((((char)puVar2 == '\0') || (uVar4 = *(uint *)(iVar5 + 4), uVar4 == 0)) ||
       (puVar2 = (undefined4 *)(uVar4 + 0x6c), *(int *)(uVar4 + 0x6c) == 4)) {
      puVar2 = (undefined4 *)((uint)puVar2 & 0xffffff00);
    }
    else {
      LOCK();
      *puVar2 = 6;
      UNLOCK();
      uVar3 = 0;
      if (*(int *)(uVar4 + 0x78) != 0) {
        this_00 = *(void **)(*(int *)(uVar4 + 0x78) + 0x38);
        uVar3 = 0;
        if (this_00 != (void *)0x0) {
          uVar3 = SacsDecisionGraph_DispatchPhase(this_00,3,(void *)((int)this + 0x44),uVar4);
        }
        *(undefined4 *)(uVar4 + 0x78) = 0;
      }
      puVar2 = (undefined4 *)CONCAT31((int3)((uint)uVar3 >> 8),1);
    }
    iVar5 = iVar5 + 8;
  } while ((char)puVar2 != '\0');
  return puVar2;
}

