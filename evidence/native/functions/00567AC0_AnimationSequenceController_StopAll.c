/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Clears sync/transition and pending
   queue; retains snapshots of Previous+0x3c and Current+0x50, clears both slots, retires snapshots
   with Stop and releases temporaries. Stop callbacks may run during retirement. */

void __fastcall AnimationSequenceController_StopAll(void *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined4 local_18;
  undefined4 *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  if (param_1 == (void *)0x0) {
    iVar2 = 0;
  }
  else {
    iVar2 = (int)param_1 + 0x28;
  }
  FUN_00577080(iVar2);
  FUN_0056c240(*(int *)((int)param_1 + 0x2c));
  Animation_ClearPendingSequence(param_1,'\x01');
  local_14 = *(undefined4 **)((int)param_1 + 0x3c);
  if (local_14 != (undefined4 *)0x0) {
    local_14[1] = local_14[1] + 1;
  }
  local_10 = *(undefined4 *)((int)param_1 + 0x40);
  local_8 = *(undefined4 *)((int)param_1 + 0x48);
  local_c = *(undefined4 *)((int)param_1 + 0x44);
  local_28 = *(undefined4 **)((int)param_1 + 0x50);
  local_4 = *(undefined4 *)((int)param_1 + 0x4c);
  if (local_28 != (undefined4 *)0x0) {
    local_28[1] = local_28[1] + 1;
  }
  local_1c = *(undefined4 *)((int)param_1 + 0x5c);
  local_24 = *(undefined4 *)((int)param_1 + 0x54);
  local_20 = *(undefined4 *)((int)param_1 + 0x58);
  puVar1 = *(undefined4 **)((int)param_1 + 0x3c);
  local_18 = *(undefined4 *)((int)param_1 + 0x60);
  *(undefined4 *)((int)param_1 + 0x40) = 0;
  *(undefined4 *)((int)param_1 + 0x44) = 0;
  *(undefined4 *)((int)param_1 + 0x48) = 0;
  *(undefined4 *)((int)param_1 + 0x4c) = 0;
  *(undefined4 *)((int)param_1 + 0x3c) = 0;
  if ((puVar1 != (undefined4 *)0x0) && (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0))
  {
    puVar1[1] = 1;
    (**(code **)*puVar1)(1);
  }
  puVar1 = *(undefined4 **)((int)param_1 + 0x50);
  *(undefined4 *)((int)param_1 + 0x54) = 0;
  *(undefined4 *)((int)param_1 + 0x58) = 0;
  *(undefined4 *)((int)param_1 + 0x5c) = 0;
  *(undefined4 *)((int)param_1 + 0x60) = 0;
  *(undefined4 *)((int)param_1 + 0x50) = 0;
  if ((puVar1 != (undefined4 *)0x0) && (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0))
  {
    puVar1[1] = 1;
    (**(code **)*puVar1)(1);
  }
  Animation_RetireSequenceEntry(&local_14,(int)param_1,'\x01');
  Animation_RetireSequenceEntry(&local_28,(int)param_1,'\x01');
  *(undefined4 *)((int)param_1 + 100) = 0;
  if ((local_28 != (undefined4 *)0x0) &&
     (iVar2 = local_28[1], local_28[1] = iVar2 + -1, iVar2 + -1 == 0)) {
    local_28[1] = 1;
    (**(code **)*local_28)(1);
  }
  if ((local_14 != (undefined4 *)0x0) &&
     (iVar2 = local_14[1], local_14[1] = iVar2 + -1, iVar2 + -1 == 0)) {
    local_14[1] = 1;
    (**(code **)*local_14)(1);
  }
  return;
}

