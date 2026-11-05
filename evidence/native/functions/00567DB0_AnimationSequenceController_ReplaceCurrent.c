/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Retains incoming controller, builds
   entry and sets flags1/8, AssignCurrent with blend policy, clears pending, performs current
   Update(0), releases temporary and returns AL1. */

undefined4 __thiscall
AnimationSequenceController_ReplaceCurrent
          (void *this,undefined4 *param_1,undefined4 param_2,undefined4 param_3,char param_4,
          char param_5)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *local_14;
  undefined4 local_10;
  uint local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_14 = (undefined4 *)0x0;
  local_10 = 0;
  if (param_1 != (undefined4 *)0x0) {
    param_1[1] = param_1[1] + 1;
    local_14 = param_1;
  }
  puVar1 = local_14;
  local_c = *(uint *)((int)this + 0x6c);
  local_8 = param_2;
  local_4 = param_3;
  if (param_4 != '\0') {
    local_c = local_c | 1;
  }
  if (param_5 != '\0') {
    local_c = local_c | 8;
  }
  AnimationSequenceController_AssignCurrent(this,(int *)&local_14);
  iVar2 = Animation_ClearPendingSequence(this,'\x01');
  if (*(int **)((int)this + 0x50) != (int *)0x0) {
    iVar2 = (**(code **)(**(int **)((int)this + 0x50) + 8))(0);
  }
  if (puVar1 != (undefined4 *)0x0) {
    iVar2 = puVar1[1] + -1;
    puVar1[1] = iVar2;
    if (iVar2 == 0) {
      puVar1[1] = 1;
      iVar2 = (**(code **)*puVar1)(1);
    }
  }
  return CONCAT31((int3)((uint)iVar2 >> 8),1);
}

