/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX destination Model plus source Model, RET4, AL. When
   destination key type+10 zero, calls94B3E0 with sourcekey/descriptors/material. Existing-key
   branch uses resource/bounds change, copies preset/substitutions and, if differing,
   writesmaterial+4C and enqueues0488D99C route0. Does not supply a GeometryHash-zero reset. Read
   complete code for allocation/preset failure branches. */

undefined4 __thiscall ModelComponent_AssignSavedModelState(void *this,int param_1)

{
  int iVar1;
  LPCWSTR pWVar2;
  undefined4 uVar3;
  LPCWSTR extraout_EAX;
  uint uVar4;
  LPCWSTR local_70;
  LPCWSTR local_6c;
  undefined2 *local_68;
  char *local_64;
  byte local_60 [4];
  undefined4 *local_5c;
  undefined4 local_58;
  undefined4 local_54;
  int local_50 [19];
  
  *(undefined4 *)((int)this + 0x54) = *(undefined4 *)(param_1 + 0x54);
  if (*(int *)((int)this + 0x10) == 0) {
    uVar4 = ModelComponent_PresentResourceAndSavedMaterial
                      (this,(int *)(param_1 + 8),(int *)(param_1 + 0x18),(int *)(param_1 + 0x28),
                       *(int *)(param_1 + 0x4c),'\0');
    if ((char)uVar4 == '\0') {
      return uVar4 & 0xffffff00;
    }
    local_64 = "Objects/ModelComponent/Assign";
    local_70 = (LPCWSTR)&DAT_011c8e54;
    local_6c = (LPCWSTR)&DAT_011c8e54;
    local_68 = &DAT_011c8e56;
    if (*(void **)(param_1 + 0x48) != (void *)0x0) {
      FUN_005bfd20(*(void **)(param_1 + 0x48),&local_70);
    }
    pWVar2 = local_70;
    if (*(int *)((int)this + 0x48) == 0) {
      uVar3 = FUN_00948ed0((int)this);
      if ((char)uVar3 == '\0') goto LAB_0094c004;
    }
    FUN_005c0060(*(void **)((int)this + 0x48),pWVar2);
    goto LAB_0094c004;
  }
  ModelComponent_ApplyResourceBoundsChange(this,(int *)(param_1 + 8));
  local_70 = (LPCWSTR)&DAT_011c8e54;
  local_6c = (LPCWSTR)&DAT_011c8e54;
  local_64 = "Objects/ModelComponent/Assign";
  local_68 = &DAT_011c8e56;
  FUN_0094b150(this,(int *)(param_1 + 0x18),(int *)(param_1 + 0x28));
  if (*(void **)(param_1 + 0x48) == (void *)0x0) {
    if (local_70 != local_6c) {
      *local_70 = L'\0';
      local_6c = local_70;
    }
  }
  else {
    FUN_005bfd20(*(void **)(param_1 + 0x48),&local_70);
  }
  pWVar2 = local_70;
  if (*(int *)((int)this + 0x48) == 0) {
    uVar3 = FUN_00948ed0((int)this);
    if ((char)uVar3 != '\0') goto LAB_0094bfa9;
  }
  else {
LAB_0094bfa9:
    FUN_005c0060(*(void **)((int)this + 0x48),pWVar2);
  }
  iVar1 = *(int *)(param_1 + 0x4c);
  if (iVar1 != *(int *)((int)this + 0x4c)) {
    *(int *)((int)this + 0x4c) = iVar1;
    local_58 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
    local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
    local_60[0] = 0x9c;
    local_60[1] = 0xd9;
    local_60[2] = 0x88;
    local_60[3] = 4;
    local_5c = (undefined4 *)0x0;
    local_50[1] = 0;
    local_50[0] = iVar1;
    RenderCommand_EnqueueIfDispatcherExists(local_60);
    if (local_5c != (undefined4 *)0x0) {
      (**(code **)*local_5c)(local_50);
    }
  }
LAB_0094c004:
  if ((2 < (int)((int)local_68 - (int)local_70 & 0xfffffffeU)) && (local_70 != (LPCWSTR)0x0)) {
    Memory_FreeIfNonNull(local_70);
    local_70 = extraout_EAX;
  }
  return CONCAT31((int3)((uint)local_70 >> 8),1);
}

