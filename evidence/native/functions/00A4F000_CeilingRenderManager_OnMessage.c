/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: Five subscribed restart IDs and sixth handled-only B126940A reset/start clock
   without a local identifier or input-change test. Other branches compare exact two-word owner
   pair. AL1 only, upperEAX unspecified, RET8; preserve actual inferred signature. */

undefined4 __thiscall CeilingRenderManager_OnMessage(void *this,uint param_1,int *param_2)

{
  int iVar1;
  int iVar2;
  undefined8 uVar3;
  int *piVar4;
  undefined3 uVar6;
  undefined4 uVar5;
  LARGE_INTEGER local_8;
  
  iVar1 = *(int *)(*(int *)((int)this + 0x18) + 0x14);
  iVar2 = *(int *)(*(int *)((int)this + 0x18) + 0x10);
  uVar6 = (undefined3)(param_1 >> 8);
  if (param_1 < 0x31269489) {
    if (param_1 != 0x31269488) {
      if (0x5482a81 < param_1) {
        if (param_1 == 0x63bf204) {
          param_1 = (uint)param_2;
          if ((param_2[2] == iVar2) && (param_2[3] == iVar1)) {
            uVar5 = CeilingRenderManager_SubmitRoomRequest((int)this);
            return CONCAT31((int3)((uint)uVar5 >> 8),1);
          }
        }
        else {
          param_1 = param_1;
          if (param_1 == 0x97ac12e) {
            FUN_00581900(&param_2,param_2);
            piVar4 = param_2;
            if ((param_2[2] == iVar2) && (param_2[3] == iVar1)) {
              CeilingRenderManager_SetUndersideLevels(this,param_2 + 4);
            }
            uVar5 = (**(code **)(*piVar4 + 8))();
            return CONCAT31((int3)((uint)uVar5 >> 8),1);
          }
        }
        goto LAB_00a4f18a;
      }
      if (param_1 == 0x5482a81) {
        param_1 = (uint)param_2;
        if ((param_2[2] == iVar2) && (param_2[3] == iVar1)) {
          uVar5 = FUN_00a4ded0(this,(int)param_2);
          return CONCAT31((int3)((uint)uVar5 >> 8),1);
        }
        goto LAB_00a4f18a;
      }
      if (param_1 == 0x47e6f04) {
        param_1 = (uint)param_2;
        if ((param_2[2] == iVar2) && (param_2[3] == iVar1)) {
          uVar5 = CeilingRenderManager_ApplyRoomData(this,(int)param_2);
          return CONCAT31((int3)((uint)uVar5 >> 8),1);
        }
        goto LAB_00a4f18a;
      }
      if (param_1 != 0x47e869a) {
        return CONCAT31(uVar6,1);
      }
    }
  }
  else if (param_1 < 0x9251d9d3) {
    if (((param_1 != 0x9251d9d2) && (param_1 != 0x3175ae42)) && (param_1 != 0x5251d88c)) {
      return CONCAT31(uVar6,1);
    }
  }
  else if (param_1 != 0xb126940a) goto LAB_00a4f18a;
  *(undefined4 *)((int)this + 0x30) = 0;
  *(undefined4 *)((int)this + 0x34) = 0;
  *(undefined4 *)((int)this + 0x38) = 0;
  *(undefined4 *)((int)this + 0x3c) = 0;
  if (*(int *)((int)this + 0x40) == 1) {
    uVar3 = rdtsc();
    *(int *)((int)this + 0x30) = (int)uVar3;
    *(int *)((int)this + 0x34) = (int)((ulonglong)uVar3 >> 0x20);
    return CONCAT31((int3)((ulonglong)uVar3 >> 8),1);
  }
  param_1 = QueryPerformanceCounter(&local_8);
  *(DWORD *)((int)this + 0x30) = local_8.s.LowPart;
  *(LONG *)((int)this + 0x34) = local_8.s.HighPart;
LAB_00a4f18a:
  return CONCAT31((int3)(param_1 >> 8),1);
}

