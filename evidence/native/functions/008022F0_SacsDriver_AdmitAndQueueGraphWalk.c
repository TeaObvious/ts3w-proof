/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67 driver vtable0102114C. ECX driver, one physical walker pointer,
   RET4. Exact original reachable body has three owned ranges563bytes195instructions;9 skipped
   alignment bytes remain nonowned. State join byte+4D first checks every bound walker
   current/pending identity; a mismatching current places requested walker status4 and queues its
   graph. All-at-join path queries animation components, selected priority and noninterruptible tail
   time, readies admitted blockers via dynamic00800150, sets synchronized mode driver+3C/master+40
   and returns. Nonjoin/non-synchronized state clears existing sync mode. For current state graph
   pointer+38, dispatch phase0 via007F4B50 with actual context driver+44, create12-byte record
   {graph,walker,phase2}; try00801CF0 immediately when context readiness007F3F90 admits, else append
   record to driver+11C/+120 with growth path. Original has no meaningful Boolean return. Current
   managed lanes/PendingCompletion/ScriptTurn are projections, not physical containers or all
   join/tail readiness. */

void SacsDriver_AdmitAndQueueGraphWalk(uint param_1)

{
  undefined4 *puVar1;
  bool bVar2;
  uint uVar3;
  void *pvVar4;
  int iVar5;
  undefined4 uVar6;
  void *in_ECX;
  int iVar7;
  float10 fVar8;
  float fStack_14;
  void *pvStack_c;
  uint uStack_8;
  undefined4 uStack_4;
  
  if (*(char *)(*(int *)(param_1 + 0x10) + 0x4d) == '\0') {
    if ((*(char *)((int)in_ECX + 0x3c) != '\0') &&
       (*(char *)(*(int *)(param_1 + 0x10) + 0x4c) == '\0')) {
      *(undefined1 *)((int)in_ECX + 0x3c) = 0;
      *(undefined4 *)((int)in_ECX + 0x40) = 0;
    }
LAB_0080249c:
    pvVar4 = *(void **)(*(int *)(param_1 + 0x10) + 0x38);
    if (pvVar4 != (void *)0x0) {
      SacsDecisionGraph_DispatchPhase(pvVar4,0,(void *)((int)in_ECX + 0x44),param_1);
      uStack_8 = param_1;
      uStack_4 = 2;
      pvStack_c = pvVar4;
      uVar3 = SACS_GraphEntriesHaveNoBit0_7F3F90((int)in_ECX + 0x44);
      if (((char)uVar3 == '\0') ||
         (bVar2 = SacsDriver_ProcessGraphWalkRecord(in_ECX,&pvStack_c), !bVar2)) {
        puVar1 = *(undefined4 **)((int)in_ECX + 0x120);
        if (puVar1 < *(undefined4 **)((int)in_ECX + 0x124)) {
          *(undefined4 **)((int)in_ECX + 0x120) = puVar1 + 3;
          if (puVar1 != (undefined4 *)0x0) {
            *puVar1 = pvVar4;
            puVar1[1] = param_1;
            puVar1[2] = uStack_4;
            return;
          }
        }
        else {
          FUN_00d700a0((void *)((int)in_ECX + 0x11c),puVar1,&pvStack_c);
        }
      }
    }
    return;
  }
  iVar7 = *(int *)((int)in_ECX + 0x10);
  bVar2 = true;
  if (iVar7 != *(int *)((int)in_ECX + 0x14)) {
    do {
      iVar5 = *(int *)(iVar7 + 4);
      if ((*(int *)(iVar5 + 0x10) != 0) || (*(int *)(iVar5 + 0x1c) != 0)) {
        if (*(int *)(iVar5 + 0x10) != *(int *)(param_1 + 0x10)) {
          if (*(int *)(param_1 + 0x6c) != 4) {
            LOCK();
            *(undefined4 *)(param_1 + 0x6c) = 4;
            UNLOCK();
          }
          goto LAB_0080249c;
        }
        uVar3 = SacsListener_HasBlockingController(*(int *)(iVar5 + 100));
        if ((char)uVar3 == '\0') {
          bVar2 = false;
        }
      }
      iVar7 = iVar7 + 8;
    } while (iVar7 != *(int *)((int)in_ECX + 0x14));
    if (!bVar2) {
      iVar7 = *(int *)((int)in_ECX + 0x10);
      fStack_14 = 0.0;
      if (iVar7 != *(int *)((int)in_ECX + 0x14)) {
        do {
          iVar5 = *(int *)(iVar7 + 4);
          if (((*(int *)(iVar5 + 0x10) != 0) || (*(int *)(iVar5 + 0x1c) != 0)) &&
             (pvVar4 = (void *)FUN_00581870(*(void **)(iVar5 + 8),'\0'), pvVar4 != (void *)0x0)) {
            pvVar4 = Object_GetComponentByMask(pvVar4,DAT_011dd484);
            iVar5 = FUN_007f3cb0((int)in_ECX);
            if ((pvVar4 != (void *)0x0) && (uVar6 = FUN_0093ca00(pvVar4,iVar5), (char)uVar6 == '\0')
               ) {
              fVar8 = FUN_0093cb30(pvVar4,iVar5);
              if ((float10)fStack_14 < fVar8) {
                fStack_14 = (float)fVar8;
              }
            }
          }
          iVar7 = iVar7 + 8;
        } while (iVar7 != *(int *)((int)in_ECX + 0x14));
      }
    }
  }
  iVar7 = *(int *)((int)in_ECX + 0x10);
  if (iVar7 != *(int *)((int)in_ECX + 0x14)) {
    do {
      iVar5 = *(int *)(iVar7 + 4);
      if (((*(int *)(iVar5 + 0x10) != 0) || (*(int *)(iVar5 + 0x1c) != 0)) &&
         ((*(int *)(iVar5 + 0x6c) < 1 ||
          ((uVar3 = SacsListener_HasBlockingController(*(int *)(iVar5 + 100)), (char)uVar3 == '\0'
           || (uVar6 = SacsDriver_CheckWalkerIdleReadiness(*(void **)(iVar5 + 4),iVar5),
              (char)uVar6 != '\0')))))) {
        LOCK();
        *(undefined4 *)(iVar5 + 0x6c) = 0;
        UNLOCK();
        if (*(void **)(iVar5 + 100) != (void *)0x0) {
          RecordField14_StoreDword(*(void **)(iVar5 + 100),0);
        }
        *(undefined1 *)(iVar5 + 0xc) = 1;
        iVar5 = *(int *)(iVar5 + 4);
        *(undefined1 *)(iVar5 + 0x146) = 1;
        if (DAT_011d9d40 != (void *)0x0) {
          SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,iVar5,'\0');
        }
      }
      iVar7 = iVar7 + 8;
    } while (iVar7 != *(int *)((int)in_ECX + 0x14));
  }
  *(undefined1 *)((int)in_ECX + 0x3c) = 1;
  *(uint *)((int)in_ECX + 0x40) = param_1;
  return;
}

