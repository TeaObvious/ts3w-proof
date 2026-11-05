/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst role, original PC1.67 ECX driver, record pointer RET4, AL readiness Boolean. Driver error
   byte+145 returns true. Record words are graph,walker,phase; graph+68 identifies state.
   Undo007FFD60 when retained walker+78 differs; dispatch phase1 when tag1 or retained state
   differs, then write+78. Tag2 clears+78 before phase2 dispatch; a public state emits subtype3
   StateEntered. If actor inactive, dirty propagation then subtype7 OverlayLevel then subtype5
   AnimationDone, using id0 for synchronized completion or actual actor otherwise. Final readiness
   compares walker container iterators+84/+94; do not infer a C++ container ABI from decompiler
   pointer casts. Current graph-lane and ReadyVersion implementation is separate. Phase processing
   and callbacks can mutate state; virtual child ownership is not made concurrent by this Boolean
   result. */

bool __thiscall SacsDriver_ProcessGraphWalkRecord(void *this,undefined4 *param_1)

{
  void *this_00;
  void *this_01;
  undefined4 *puVar1;
  int *piVar2;
  undefined4 uVar3;
  int iVar4;
  
  if (*(char *)((int)this + 0x145) != '\0') {
    return true;
  }
  this_00 = (void *)*param_1;
  this_01 = (void *)param_1[1];
  iVar4 = *(int *)((int)this_00 + 0x68);
  if ((*(int *)((int)this_01 + 0x78) != iVar4) && (*(int *)((int)this_01 + 0x78) != 0)) {
    SacsDriver_AbandonRetainedGraph(this,(uint)this_01);
  }
  if ((param_1[2] == 1) || (*(int *)((int)this_01 + 0x78) != iVar4)) {
    SacsDecisionGraph_DispatchPhase(this_00,1,(void *)((int)this + 0x44),(uint)this_01);
    *(int *)((int)this_01 + 0x78) = iVar4;
  }
  if (param_1[2] == 2) {
    *(undefined4 *)((int)this_01 + 0x78) = 0;
    SacsDecisionGraph_DispatchPhase(this_00,2,(void *)((int)this + 0x44),(uint)this_01);
    if (*(char *)(iVar4 + 0x4f) != '\0') {
      puVar1 = FUN_007427b0();
      if (puVar1 == (undefined4 *)0x0) {
        piVar2 = (int *)0x0;
      }
      else {
        piVar2 = (int *)FUN_008004c0(puVar1,3,*(undefined4 *)(iVar4 + 0x28));
      }
      SACS_AdmitFilteredEvent(this,piVar2);
      uVar3 = FUN_007fff40((int)this_01);
      if ((char)uVar3 == '\0') {
        SacsWalker_PropagateDirtyState(this_01,'\x01');
        uVar3 = 0;
        if (*(char *)((int)this + 0x3c) == '\0') {
          uVar3 = *(undefined4 *)(*(int *)(*(int *)((int)this_01 + 8) + 0x20) + 0x2c);
        }
        puVar1 = FUN_007427b0();
        if (puVar1 == (undefined4 *)0x0) {
          piVar2 = (int *)0x0;
        }
        else {
          iVar4 = FUN_007fd1b0(iVar4);
          piVar2 = (int *)FUN_008004c0(puVar1,7,iVar4);
        }
        SACS_AdmitFilteredEvent(this,piVar2);
        puVar1 = FUN_007427b0();
        if (puVar1 == (undefined4 *)0x0) {
          piVar2 = (int *)0x0;
        }
        else {
          piVar2 = (int *)FUN_008004c0(puVar1,5,uVar3);
        }
        SACS_AdmitFilteredEvent(this,piVar2);
      }
    }
  }
  return *(int *)(param_1[1] + 0x84) == *(int *)(param_1[1] + 0x94);
}

