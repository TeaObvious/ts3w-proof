/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. ECX service, oneloadstack RET4, void.
   Underlock40 removes flagged load from map/queue, then onlyif load+A1==0 marksfailure,
   recordsreason3, closes/releases stream, drains pendingnodes: ifslotptrnonnull write2 then
   optionalclient callback(key,cookie,NULL), unlink, releasejob, recycle398. IfalreadyA1true
   skipsfailure-drain. Unlock, destroyload+C0 context, pump727D00(1). QPC elapsed FILDQWORD branch
   and helpers not complete timer contract; C concatenation/sign casts require raw whenreused. No
   universal cache eviction/timeout/managedcancellation equivalence inferred. */

void __thiscall ResourceRequests_RetireLoad(void *this,void *load)

{
  void *this_00;
  int iVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  int *piVar5;
  float10 fVar6;
  LARGE_INTEGER LStack_20;
  int iStack_18;
  int iStack_14;
  undefined4 auStack_10 [4];
  
  FUN_004e1c00((void *)((int)this + 0x40),(uint *)&DAT_00ffe344);
  if (*(char *)((int)load + 0x9c) != '\0') {
    *(undefined1 *)((int)load + 0x9c) = 0;
    (**(code **)(**(int **)((int)load + 0x2c) + 0x54))();
  }
  if (*(char *)((int)load + 0x98) != '\0') {
    FUN_00727590((void *)((int)this + 0x80),(int)load + 8);
    *(undefined1 *)((int)load + 0x98) = 0;
  }
  if (*(char *)((int)load + 0x99) != '\0') {
    *(undefined1 *)((int)load + 0x99) = 0;
    puVar2 = *(undefined4 **)((int)this + 0xc);
    puVar3 = *(undefined4 **)((int)this + 0x10);
    puVar4 = *(undefined4 **)((int)this + 0x14);
    piVar5 = *(int **)((int)this + 0x18);
    if (puVar2 != *(undefined4 **)((int)this + 0x1c)) {
      do {
        this_00 = (void *)*puVar2;
        if (*(void **)((int)load + 0xa4) == this_00) {
          FUN_00728e50((void *)((int)this + 4),auStack_10,(int)puVar2,(int)puVar3,(int)puVar4,piVar5
                      );
          Job_ReleaseReference(this_00);
          break;
        }
        puVar2 = puVar2 + 2;
        if (puVar2 == puVar4) {
          puVar2 = (undefined4 *)piVar5[1];
          piVar5 = piVar5 + 1;
          puVar4 = puVar2 + 0x40;
          puVar3 = puVar2;
        }
      } while (puVar2 != *(undefined4 **)((int)this + 0x1c));
    }
  }
  if (*(char *)((int)load + 0xa1) == '\0') {
    if (*(char *)((int)load + 0x9e) == '\0') {
      *(undefined1 *)((int)load + 0x9e) = 1;
    }
    if (*(int *)((int)load + 0xb0) == 0 && *(int *)((int)load + 0xb4) == 0) {
      fVar6 = (float10)0.0;
    }
    else {
      QueryPerformanceCounter(&LStack_20);
      iStack_18 = LStack_20.s.LowPart - *(uint *)((int)load + 0xb0);
      iStack_14 = (LStack_20.s.HighPart - *(int *)((int)load + 0xb4)) -
                  (uint)(LStack_20.s.LowPart < *(uint *)((int)load + 0xb0));
      fVar6 = FUN_004f3880(4);
      fVar6 = (float10)CONCAT44(iStack_14,iStack_18) * fVar6;
    }
    FUN_00727db0(this,(int)load + 0x10,3,(float)fVar6);
    if (*(int **)((int)load + 0x28) != (int *)0x0) {
      (**(code **)(**(int **)((int)load + 0x28) + 0x20))();
      piVar5 = *(int **)((int)load + 0x28);
      if (piVar5 != (int *)0x0) {
        *(undefined4 *)((int)load + 0x28) = 0;
        (**(code **)(*piVar5 + 8))();
      }
    }
    iVar1 = *(int *)((int)load + 0xbc);
    while (iVar1 != (int)load + 0xb8) {
      puVar4 = *(undefined4 **)((int)load + 0xbc);
      if ((undefined4 *)puVar4[2] != (undefined4 *)0x0) {
        *(undefined4 *)puVar4[2] = 2;
        if ((undefined4 *)puVar4[6] != (undefined4 *)0x0) {
          (*(code *)**(undefined4 **)puVar4[6])((int)load + 0x10,puVar4[7],0);
        }
      }
      **(int **)(*(int *)((int)load + 0xbc) + 4) = (int)load + 0xb8;
      *(undefined4 *)((int)load + 0xbc) = *(undefined4 *)(*(int *)((int)load + 0xbc) + 4);
      if ((void *)puVar4[5] != (void *)0x0) {
        Job_ReleaseReference((void *)puVar4[5]);
      }
      *puVar4 = *(undefined4 *)((int)this + 0x398);
      *(undefined4 **)((int)this + 0x398) = puVar4;
      iVar1 = *(int *)((int)load + 0xbc);
    }
  }
  FUN_004e1cc0((LPCRITICAL_SECTION)((int)this + 0x40));
  FUN_00726380((undefined4 *)((int)load + 0xc0));
  FUN_00727d00(this,'\x01');
  return;
}

