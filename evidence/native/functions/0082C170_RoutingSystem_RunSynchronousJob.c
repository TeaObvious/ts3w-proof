/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: Synchronous routing entry: fails AL0 if disabled
   pair(+0x97e/+0x976), empty starts/goals, or caller synchronous flag0. Under critical
   section+0x918 prepares graph, creates stack RoutingJob, executes directly, releases job storage.
   AL1 requires nonempty resulting path list and first path state<3 (signed comparison). It is not
   merely a queued-work acceptance. */

undefined1 __thiscall
RoutingSystem_RunSynchronousJob
          (void *this,int *param_1,int *param_2,int *param_3,undefined4 param_4,char param_5,
          int param_6,undefined4 param_7,undefined4 param_8,undefined4 param_9,undefined4 param_10)

{
  LPCRITICAL_SECTION this_00;
  int iVar1;
  undefined1 uVar2;
  undefined4 local_d8 [54];
  
  if ((((*(char *)((int)this + 0x97e) != '\0') && (*(char *)((int)this + 0x976) != '\0')) ||
      (*param_2 == param_2[1])) || (*param_3 == param_3[1])) {
    return 0;
  }
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x918);
  FUN_004e1c00(this_00,(uint *)&DAT_01022d28);
  RoutingSystem_PrepareGraphForPlanning(this);
  *(undefined1 *)(*(int *)((int)this + 0x960) + 0x88) = *(undefined1 *)((int)this + 0x97d);
  if (param_5 == '\0') {
    FUN_004e1cc0(this_00);
    return 0;
  }
  RoutingJob_InitializeFromCandidates
            (local_d8,param_1,*(undefined4 *)((int)this + 0x964),param_4,param_2,param_3,param_6,
             param_7,param_8,param_9,param_10);
  RoutingJob_ExecuteAndAssembleSubpaths(local_d8);
  RoutingJob_ReleaseCandidateStorage(local_d8);
  if ((int *)*param_1 != param_1) {
    iVar1 = (**(code **)(*(int *)((int *)*param_1)[2] + 0x20))();
    if (iVar1 < 3) {
      uVar2 = 1;
      goto LAB_0082c268;
    }
  }
  uVar2 = 0;
LAB_0082c268:
  FUN_004e1cc0(this_00);
  return uVar2;
}

