/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original PC1.67 physical ABI ECX driver, no incoming stack words, plain RET. If
   driver+147 set, clear it, dirty+146 and schedule manager revisit with low-byte true, then return.
   Otherwise only empty pending list+11C/+120 and context007F3F90 readiness admit walker stepping.
   Synchronized master+40 is exclusive while mode+3C survives; clean stateful actors emit two
   Heartbeat subtype4 packets (actor/synchronized ID then current-state hash), dirty ones
   call00803500. Regular actor vector uses8-byte bindings and stops if synchronized mode activates.
   Finite countdown+140 decrements, emits Heartbeat id0 on reaching0 then resets-1. Pending graph
   records are processed via00802530 only when context ready. Stamping/filter/queue lifetimes and
   manager revisit are separate; current subscribed-heartbeat optimization, cooperative script-turn
   gate, managed iteration caps and duration fixtures are not native code. */

void __fastcall SACS_AdvanceDirtyWalkers(void *param_1)

{
  int iVar1;
  void *pvVar2;
  bool bVar3;
  uint uVar4;
  int iVar5;
  undefined4 *puVar6;
  int *piVar7;
  void *local_4;
  
  if (*(char *)((int)param_1 + 0x147) != '\0') {
    *(undefined1 *)((int)param_1 + 0x147) = 0;
    *(undefined1 *)((int)param_1 + 0x146) = 1;
    if (DAT_011d9d40 == (void *)0x0) {
      return;
    }
    SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,(int)param_1,'\x01');
    return;
  }
  if ((*(int *)((int)param_1 + 0x11c) == *(int *)((int)param_1 + 0x120)) &&
     (uVar4 = SACS_GraphEntriesHaveNoBit0_7F3F90((int)param_1 + 0x44), (char)uVar4 != '\0')) {
    local_4 = (void *)0x0;
    if (*(char *)((int)param_1 + 0x3c) != '\0') {
      local_4 = *(void **)((int)param_1 + 0x40);
      if (*(char *)((int)local_4 + 0xc) == '\0') {
        if ((*(int *)((int)local_4 + 0x10) != 0) || (*(int *)((int)local_4 + 0x1c) != 0)) {
          puVar6 = FUN_007427b0();
          if (puVar6 == (undefined4 *)0x0) {
            piVar7 = (int *)0x0;
          }
          else {
            piVar7 = (int *)FUN_008004c0(puVar6,4,0x42207261);
          }
          SACS_AdmitFilteredEvent(param_1,piVar7);
          puVar6 = FUN_007427b0();
          if (puVar6 == (undefined4 *)0x0) {
            piVar7 = (int *)0x0;
          }
          else {
            iVar5 = *(int *)(*(int *)((int)param_1 + 0x40) + 0x10);
            if (iVar5 == 0) {
              piVar7 = (int *)FUN_008004c0(puVar6,4,0);
            }
            else {
              piVar7 = (int *)FUN_008004c0(puVar6,4,*(undefined4 *)(iVar5 + 0x28));
            }
          }
          SACS_AdmitFilteredEvent(param_1,piVar7);
        }
      }
      else {
        SACS_StepWalker_803500(param_1,local_4);
      }
      if (*(char *)((int)param_1 + 0x3c) != '\0') goto LAB_008042af;
    }
    if ((local_4 == (void *)0x0) || (bVar3 = FUN_00800130((int)param_1), bVar3)) {
      iVar1 = *(int *)((int)param_1 + 0x14);
      for (iVar5 = *(int *)((int)param_1 + 0x10); iVar5 != iVar1; iVar5 = iVar5 + 8) {
        pvVar2 = *(void **)(iVar5 + 4);
        if (pvVar2 != local_4) {
          if (*(char *)((int)pvVar2 + 0xc) == '\0') {
            if ((*(int *)((int)pvVar2 + 0x10) != 0) || (*(int *)((int)pvVar2 + 0x1c) != 0)) {
              puVar6 = FUN_007427b0();
              if (puVar6 == (undefined4 *)0x0) {
                piVar7 = (int *)0x0;
              }
              else {
                piVar7 = (int *)FUN_008004c0(puVar6,4,*(undefined4 *)
                                                       (*(int *)(*(int *)((int)pvVar2 + 8) + 0x20) +
                                                       0x2c));
              }
              SACS_AdmitFilteredEvent(param_1,piVar7);
              puVar6 = FUN_007427b0();
              if (puVar6 == (undefined4 *)0x0) {
                piVar7 = (int *)0x0;
              }
              else if (*(int *)((int)pvVar2 + 0x10) == 0) {
                piVar7 = (int *)FUN_008004c0(puVar6,4,0);
              }
              else {
                piVar7 = (int *)FUN_008004c0(puVar6,4,*(undefined4 *)
                                                       (*(int *)((int)pvVar2 + 0x10) + 0x28));
              }
              SACS_AdmitFilteredEvent(param_1,piVar7);
            }
          }
          else {
            SACS_StepWalker_803500(param_1,pvVar2);
          }
          if (*(char *)((int)param_1 + 0x3c) != '\0') break;
        }
      }
    }
  }
  else {
    *(undefined1 *)((int)param_1 + 0x146) = 1;
    if (DAT_011d9d40 != (void *)0x0) {
      SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,(int)param_1,'\x01');
    }
  }
LAB_008042af:
  if ((*(int *)((int)param_1 + 0x140) != -1) &&
     (iVar5 = *(int *)((int)param_1 + 0x140) + -1, *(int *)((int)param_1 + 0x140) = iVar5,
     iVar5 == 0)) {
    puVar6 = FUN_007427b0();
    if (puVar6 == (undefined4 *)0x0) {
      piVar7 = (int *)0x0;
    }
    else {
      piVar7 = (int *)FUN_008004c0(puVar6,4,0);
    }
    SACS_AdmitFilteredEvent(param_1,piVar7);
    *(undefined4 *)((int)param_1 + 0x140) = 0xffffffff;
  }
  if ((*(int *)((int)param_1 + 0x11c) != *(int *)((int)param_1 + 0x120)) &&
     (uVar4 = SACS_GraphEntriesHaveNoBit0_7F3F90((int)param_1 + 0x44), (char)uVar4 != '\0')) {
    SACS_TryProcessPendingDecisionGraphRecords_802530(param_1);
    return;
  }
  return;
}

