/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete body: rotate one component cursor(manager+10) in component vector; invoke94D410
   then94D390. Copy-assign pending driver pointer vector+1C into processing vector+2C through5D3680,
   clear pending end, process copied nonnull entries with existing
   SACS_ScheduleDriverImmediate7FD000(driver,0), clear processing end. Helper5D3680 is copy
   assignment/reallocation/memmove, not swap. RET4 consumes one stack word omitted by stored
   one-argument fastcall decompilation; selected body does not read that word. D820D5 incoming call
   window is observed but its containing function is undefined, so complete caller extent remains
   open. */

void __fastcall SACS_ManagerProcessComponentAndScheduledDrivers_7FD0C0(undefined4 *param_1)

{
  undefined4 *this;
  int iVar1;
  int *piVar2;
  int *piVar3;
  
  piVar3 = (int *)param_1[4];
  if (piVar3 != (int *)param_1[1]) {
    iVar1 = *piVar3;
    param_1[4] = piVar3 + 1;
    if (piVar3 + 1 == (int *)param_1[1]) {
      param_1[4] = *param_1;
    }
    SACS_ComponentAdvanceAndCollectDrivers_94D410(iVar1);
    SACS_ComponentCollectQuiescentSoleRefDrivers_94D390(iVar1);
  }
  this = param_1 + 0xb;
  DwordVector_CopyAssign_5D3680(this,param_1 + 7);
  param_1[8] = param_1[7];
  piVar2 = (int *)param_1[0xc];
  for (piVar3 = (int *)*this; piVar3 != piVar2; piVar3 = piVar3 + 1) {
    if (*piVar3 != 0) {
      SACS_ScheduleDriverImmediate(param_1,*piVar3,0);
    }
  }
  param_1[0xc] = *this;
  return;
}

