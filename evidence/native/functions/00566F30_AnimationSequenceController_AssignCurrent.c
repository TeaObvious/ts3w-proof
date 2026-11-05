/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Entry five DWORDs are controller,
   sync token, flags, blendIn float, blendOut float. For blendIn<=0 or empty previous/current with
   flag0x10 absent, clears transition and retires old entries then copies current and Update(0).
   Otherwise captures prior state, copies current, and constructs transition with blendIn. Negative
   default-1 selects direct branch. */

void __thiscall AnimationSequenceController_AssignCurrent(void *this,int *param_1)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  int *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  piVar3 = param_1;
  if (((float)param_1[3] <= DAT_010f4ccc) ||
     (((*(int *)((int)this + 0x50) == 0 && (*(int *)((int)this + 0x3c) == 0)) &&
      ((*(byte *)(param_1 + 2) & 0x10) == 0)))) {
    FUN_0056c240(*(int *)((int)this + 0x2c));
    Animation_RetireSequenceEntry((void *)((int)this + 0x3c),(int)this,'\x01');
    piVar1 = (int *)((int)this + 0x50);
    Animation_RetireSequenceEntry(piVar1,(int)this,'\x01');
    AnimationSequenceEntry_CopyRetained(piVar1,piVar3);
    if ((int *)*piVar1 != (int *)0x0) {
      (**(code **)(*(int *)*piVar1 + 8))(0);
    }
  }
  else {
    FUN_00566ad0(this,(int *)&param_1);
    AnimationSequenceEntry_CopyRetained((int *)((int)this + 0x50),piVar3);
    piVar1 = param_1;
    local_10 = 0;
    local_c = 0;
    local_14 = (int *)0x0;
    local_8 = 0;
    if (param_1 != (int *)0x0) {
      param_1[1] = param_1[1] + 1;
      local_14 = param_1;
    }
    piVar4 = local_14;
    local_4 = DAT_00fc2a58;
    AnimationSequenceEntry_CopyRetained((void *)((int)this + 0x3c),(int *)&local_14);
    FUN_0056c2b0(*(void **)((int)this + 0x2c),*(undefined4 **)((int)this + 0x3c),
                 *(undefined4 **)((int)this + 0x50),piVar3[3],0);
    if ((piVar4 != (int *)0x0) && (iVar2 = piVar4[1], piVar4[1] = iVar2 + -1, iVar2 + -1 == 0)) {
      piVar4[1] = 1;
      (**(code **)*piVar4)(1);
    }
    if ((piVar1 != (int *)0x0) && (iVar2 = piVar1[1], piVar1[1] = iVar2 + -1, iVar2 + -1 == 0)) {
      piVar1[1] = 1;
      (**(code **)*piVar1)(1);
      return;
    }
  }
  return;
}

