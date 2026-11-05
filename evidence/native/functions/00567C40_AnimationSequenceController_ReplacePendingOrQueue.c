/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Retains incoming controller, builds
   entry(token/flags/blendIn/blendOut); flag bits1 and8 from inputs. Clears pending work first. If
   syncFlag!=1 and Previous/Current/pending all empty, starts immediately via AssignCurrent and
   child Update(0), returns AL1; otherwise appends28-byte entry node and returns AL0. AL0 is not
   necessarily failure. */

undefined4 __thiscall
AnimationSequenceController_ReplacePendingOrQueue
          (void *this,int *param_1,int param_2,int param_3,char param_4,uint param_5,int param_6,
          char param_7)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  int *piVar4;
  int *local_14;
  uint local_10;
  uint local_c;
  int local_8;
  int local_4;
  
  local_14 = (int *)0x0;
  if (param_1 != (int *)0x0) {
    param_1[1] = param_1[1] + 1;
    local_14 = param_1;
  }
  piVar2 = local_14;
  local_c = *(uint *)((int)this + 0x6c);
  local_8 = param_2;
  local_4 = param_3;
  local_10 = param_5;
  if (param_4 != '\0') {
    local_c = local_c | 1;
  }
  if (param_7 != '\0') {
    local_c = local_c | 8;
  }
  if ((param_6 == 1) && (param_5 != 0)) {
    local_c = local_c | 6;
    FUN_00577560((int)this + 0x28,param_5);
  }
  Animation_ClearPendingSequence(this,'\x01');
  if ((((param_6 != 1) && (*(int *)((int)this + 0x3c) == 0)) && (*(int *)((int)this + 0x50) == 0))
     && (*(int **)((int)this + 0x30) == (int *)((int)this + 0x30))) {
    AnimationSequenceController_AssignCurrent(this,(int *)&local_14);
    FUN_005770f0(param_5);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))(0);
    }
    uVar3 = FUN_00565d20((int *)&local_14);
    return CONCAT31((int3)((uint)uVar3 >> 8),1);
  }
  iVar1 = *(int *)((int)this + 0x30);
  piVar4 = (int *)FUN_004e4500(0x1c,*(undefined4 *)((int)this + 0x38),0);
  if (piVar4 + 2 != (int *)0x0) {
    piVar4[2] = (int)piVar2;
    if (piVar2 != (int *)0x0) {
      piVar2[1] = piVar2[1] + 1;
    }
    piVar4[5] = param_2;
    piVar4[3] = param_5;
    piVar4[4] = local_c;
    piVar4[6] = param_3;
  }
  *piVar4 = iVar1;
  piVar4[1] = *(int *)(iVar1 + 4);
  **(undefined4 **)(iVar1 + 4) = piVar4;
  *(int **)(iVar1 + 4) = piVar4;
  if (piVar2 != (int *)0x0) {
    piVar4 = (int *)(piVar2[1] + -1);
    piVar2[1] = (int)piVar4;
    if (piVar4 == (int *)0x0) {
      piVar2[1] = 1;
      piVar4 = (int *)(**(code **)*piVar2)(1);
    }
  }
  return (uint)piVar4 & 0xffffff00;
}

