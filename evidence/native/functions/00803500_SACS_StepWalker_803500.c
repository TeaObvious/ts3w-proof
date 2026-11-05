/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* PC 1.67 walker step: in the examined update path, pending state is assigned to current at
   0x00803608 and callback pump 0x00800640 runs immediately at 0x0080360D, before later
   graph/event/idle processing. State watch release therefore follows current-state assignment, not
   ordinary animation completion.
   
   Analyst original PC1.67 physical ABI: ECX driver, walker pointer RET4; procedure result is not
   the managed progress Boolean. Complete owned body1233bytes418instructions ends008039D0, excludes
   following alignment. Listener binding/readiness failure emits Result-7; admissible step applies
   interrupt bit2 to actual or synchronized actors, clears dirty, assigns pending to current and
   pumps retained state watches00800640 immediately, then clears pending/sets entered. Later
   state/path/loop/request logic may queue graph through actual driver vtable. State-watch release
   follows current assignment, not AnimationDone. Original loop-entry driver+147 defers next update;
   current per-update serial and512/4096 caps are project scheduling. Actual step state, requests
   and graph children remain authoritative; no original return-width/atomicity inferred from managed
   progress control. */

void __thiscall SACS_StepWalker_803500(void *this,void *param_1)

{
  int iVar1;
  void *this_00;
  uint uVar2;
  bool bVar3;
  char cVar4;
  int *piVar5;
  uint uVar6;
  int iVar7;
  undefined4 *puVar8;
  undefined4 uVar9;
  int iVar10;
  bool bVar11;
  int local_1c;
  undefined4 uStack_18;
  undefined1 auStack_14 [4];
  undefined1 local_10 [8];
  undefined1 local_8 [8];
  
  cVar4 = SACS_RestoreControllerBinding(*(int *)((int)param_1 + 100));
  if (cVar4 == '\0') {
    piVar5 = FUN_007427b0();
    if (piVar5 == (int *)0x0) {
      SACS_AdmitFilteredEvent(this,(int *)0x0);
      return;
    }
    piVar5[1] = 0;
    *piVar5 = (int)&PTR_IncrementReferenceCount_01021018;
    piVar5[2] = 0x50;
    piVar5[3] = 1;
    piVar5[4] = -7;
    piVar5[8] = (int)"Scripting/EventQueue/Event";
    piVar5[5] = (int)&DAT_011c8e54;
    piVar5[6] = (int)&DAT_011c8e54;
    piVar5[7] = (int)&DAT_011c8e55;
    SACS_AdmitFilteredEvent(this,piVar5);
    return;
  }
  uVar6 = SacsDriver_CanStepWalker(this,(uint)param_1);
  if ((char)uVar6 != '\0') {
    if ((*(byte *)((int)param_1 + 0x20) & 2) != 0) {
      if (*(char *)((int)this + 0x3c) == '\0') {
        *(undefined1 *)(*(int *)((int)param_1 + 8) + 0x24) = 1;
      }
      else {
        iVar10 = *(int *)((int)this + 0x14);
        for (iVar7 = *(int *)((int)this + 0x10); iVar7 != iVar10; iVar7 = iVar7 + 8) {
          iVar1 = *(int *)(iVar7 + 4);
          if ((*(int *)(iVar1 + 0x10) != 0) || (*(int *)(iVar1 + 0x1c) != 0)) {
            *(undefined1 *)(*(int *)(iVar1 + 8) + 0x24) = 1;
          }
        }
      }
      *(uint *)((int)param_1 + 0x20) = *(uint *)((int)param_1 + 0x20) & 0xfffffffd;
    }
    iVar7 = *(int *)((int)param_1 + 0x1c);
    *(undefined1 *)((int)param_1 + 0xc) = 0;
    if (iVar7 != 0) {
      if (iVar7 != *(int *)((int)param_1 + 0x10)) {
        *(int *)((int)param_1 + 0x10) = iVar7;
        SACS_PumpWalkerCallbacks_800640((int)param_1);
      }
      if (*(int *)((int)param_1 + 0x1c) != 0) {
        *(undefined4 *)((int)param_1 + 0x1c) = 0;
        SacsWalker_PropagateDirtyState(param_1,'\0');
      }
      *(undefined1 *)((int)param_1 + 0x68) = 1;
    }
    if (*(int *)((int)param_1 + 0x10) != 0) {
      local_1c = *(int *)((int)param_1 + 0x18);
      *(undefined1 *)((int)param_1 + 0x72) = 0;
      if ((((*(int *)((int)param_1 + 0x24) != 0) && (local_1c != 0)) &&
          (local_1c != *(int *)((int)param_1 + 0x24))) &&
         (*(undefined1 *)((int)param_1 + 0x72) = 1,
         *(char *)(*(int *)((int)param_1 + 0x10) + 0x50) == '\0')) {
        FUN_007ffd30(local_10,*(undefined4 *)((int)this + 0xc));
        uVar6 = SacsPaths_SelectFirstStep
                          (local_10,*(uint *)((int)param_1 + 0x10),*(int *)((int)param_1 + 0x24),1,1
                           ,(int)&local_1c,1);
        if (uVar6 != 0) {
          *(undefined4 *)((int)param_1 + 0x18) = 0;
          SacsWalker_PropagateDirtyState(param_1,'\0');
          *(undefined1 *)((int)param_1 + 0x72) = 0;
        }
      }
      bVar11 = false;
      if (*(char *)((int)param_1 + 0x68) != '\0') {
        iVar7 = *(int *)((int)param_1 + 0x10);
        *(undefined1 *)((int)param_1 + 0x68) = 0;
        if ((*(char *)(iVar7 + 0x50) != '\0') && (iVar7 != local_1c)) {
          *(undefined1 *)((int)param_1 + 0x73) = 1;
        }
        if (iVar7 == *(int *)((int)param_1 + 0x24)) {
          if ((*(char *)((int)this + 0x3c) == '\0') ||
             (bVar3 = true, *(char *)(iVar7 + 0x4c) == '\0')) {
            bVar3 = false;
          }
          cVar4 = *(char *)(iVar7 + 0x53);
          SacsWalker_PopQueuedRequest(param_1);
          bVar11 = *(int *)((int)param_1 + 0x24) == 0;
          if (cVar4 != '\0') {
            if (*(int *)((int)param_1 + 0x28) != 0) {
              uVar9 = *(undefined4 *)(*(int *)((int)param_1 + 0x28) + 0x28);
              puVar8 = FUN_007427b0();
              if (puVar8 == (undefined4 *)0x0) {
                piVar5 = (int *)0x0;
              }
              else {
                piVar5 = FUN_008020a0(puVar8,9,uVar9,"%sreturning to <0x%08x>");
              }
              SACS_AdmitFilteredEvent(this,piVar5);
            }
            SacsWalker_QueueOrInstallRequest(param_1,0x40,*(uint *)((int)param_1 + 0x28));
          }
          if (bVar3) {
            iVar10 = *(int *)((int)this + 0x14);
            for (iVar7 = *(int *)((int)this + 0x10); iVar7 != iVar10; iVar7 = iVar7 + 8) {
              this_00 = *(void **)(iVar7 + 4);
              if (((this_00 != param_1) &&
                  (((*(int *)((int)this_00 + 0x10) != 0 || (*(int *)((int)this_00 + 0x1c) != 0)) &&
                   (*(int *)((int)this_00 + 0x24) == *(int *)((int)param_1 + 0x10))))) &&
                 (SacsWalker_PopQueuedRequest(this_00), cVar4 != '\0')) {
                SacsWalker_QueueOrInstallRequest(this_00,0x40,*(uint *)((int)this_00 + 0x28));
              }
            }
          }
        }
        iVar7 = *(int *)((int)param_1 + 0x10);
        if (*(char *)(iVar7 + 0x50) != '\0') {
          if (*(int *)((int)param_1 + 0x24) == 0) {
            *(int *)((int)param_1 + 0x18) = iVar7;
            SacsWalker_PropagateDirtyState(param_1,iVar7 != 0);
            *(undefined1 *)((int)this + 0x147) = 1;
          }
          else {
            *(undefined4 *)((int)param_1 + 0x18) = 0;
            SacsWalker_PropagateDirtyState(param_1,'\0');
            *(undefined1 *)((int)param_1 + 0x72) = 1;
          }
        }
        uVar6 = *(uint *)((int)param_1 + 0x10);
        uVar2 = *(uint *)((int)param_1 + 0x28);
        if (((uVar6 != 0) && (*(char *)(uVar6 + 0x4f) != '\0')) && (uVar6 != uVar2)) {
          FUN_007ffd30(local_8,*(undefined4 *)((int)this + 0xc));
          iVar7 = FUN_007fc950(local_8,uVar6,uVar2,0x40,1,0,0);
          if (iVar7 == 0) {
            *(uint *)((int)param_1 + 0x28) = uVar6;
          }
        }
        (**(code **)(*(int *)this + 4))(param_1);
        if (bVar11) {
          FUN_007f4500((int)this + 0x44);
        }
        if ((*(char *)((int)param_1 + 0x73) != '\0') &&
           ((uVar9 = FUN_007fff40((int)param_1), (char)uVar9 != '\0' ||
            (*(int *)((int)param_1 + 0x18) == 0)))) {
          *(undefined1 *)((int)param_1 + 0x73) = 0;
        }
      }
      if (*(int *)((int)param_1 + 0x1c) == 0) {
        iVar7 = *(int *)((int)param_1 + 0x18);
        iVar10 = *(int *)((int)param_1 + 0x24);
        if ((iVar7 != 0) && ((iVar10 == 0 || (*(int *)((int)param_1 + 0x10) != iVar7)))) {
          iVar10 = iVar7;
        }
        if (iVar10 != 0) {
          if (((*(char *)(*(int *)((int)param_1 + 0x10) + 0x50) == '\0') &&
              (*(int *)((int)param_1 + 0x10) == iVar10)) &&
             ((*(uint *)((int)param_1 + 0x20) & 0x180) == 0)) {
            SacsWalker_PopQueuedRequest(param_1);
          }
          uVar9 = *(undefined4 *)((int)this + 0xc);
          TreeVariation_Reseed(auStack_14,-1);
          iVar7 = 1;
          if (*(int *)((int)param_1 + 0x18) != 0) {
            iVar7 = 2;
          }
          uStack_18 = uVar9;
          iVar7 = FUN_007fc950(&uStack_18,*(uint *)((int)param_1 + 0x10),iVar10,
                               *(uint *)((int)param_1 + 0x20),iVar7,0,0);
          if (iVar7 == 0) {
            bVar11 = FUN_00800130((int)this);
            if (bVar11) {
              SacsWalker_PopQueuedRequest(param_1);
            }
          }
          else {
            SacsDriver_ReplacePendingWalkerState(this,param_1,iVar7);
          }
        }
      }
      if (*(char *)((int)this + 0x3c) != '\0') {
        SacsDriver_PropagateSynchronizedWalker(this,param_1);
      }
      if (((*(int *)((int)this + 0x11c) == *(int *)((int)this + 0x120)) &&
          (uVar6 = SACS_GraphEntriesHaveNoBit0_7F3F90((int)this + 0x44), (char)uVar6 != '\0')) &&
         ((*(int *)((int)param_1 + 0x24) == 0 &&
          ((*(int *)((int)param_1 + 0x18) == 0 &&
           (uVar9 = FUN_007fff40((int)param_1), (char)uVar9 == '\0')))))) {
        *(undefined1 *)(*(int *)((int)param_1 + 8) + 0x24) = 0;
        if (*(char *)((int)this + 0x3c) == '\0') {
          uVar9 = *(undefined4 *)(*(int *)(*(int *)((int)param_1 + 8) + 0x20) + 0x2c);
        }
        else {
          uVar9 = 0x42207261;
        }
        puVar8 = FUN_007427b0();
        if (puVar8 == (undefined4 *)0x0) {
          piVar5 = (int *)0x0;
        }
        else {
          piVar5 = (int *)FUN_008004c0(puVar8,0xb,uVar9);
        }
        SACS_AdmitFilteredEvent(this,piVar5);
        if (*(int *)((int)param_1 + 0x10) == 0) {
          uVar9 = 0;
        }
        else {
          uVar9 = *(undefined4 *)(*(int *)((int)param_1 + 0x10) + 0x28);
        }
        puVar8 = FUN_007427b0();
        if (puVar8 != (undefined4 *)0x0) {
          piVar5 = (int *)FUN_008004c0(puVar8,0xb,uVar9);
          SACS_AdmitFilteredEvent(this,piVar5);
          return;
        }
        SACS_AdmitFilteredEvent(this,(int *)0x0);
      }
    }
  }
  return;
}

