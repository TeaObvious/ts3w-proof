/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX lot compositor owner; program pointer and byte flag stack words, RET8. Full16-byte identity
   lookup retains the first pointer with count1; duplicate identity increments count only. Nonzero
   flag additionally scans referenced resources via the existing child; flag0 bypasses that scan.
   Child internals are not established here. */

void __thiscall LotCompositors_RetainProgramByResourceKey(void *this,int *param_1,char param_2)

{
  int *piVar1;
  uint *puVar2;
  int *piVar3;
  uint *puVar4;
  uint *local_28;
  uint *local_24;
  undefined4 local_20;
  char *local_1c;
  uint local_18;
  int local_14;
  int local_10;
  int local_c;
  uint *local_8;
  int *local_4;
  
  piVar3 = (int *)FUN_004afe80();
  FUN_005ed9e0(this,&local_28,(uint *)(param_1 + 2));
  if (local_28 == *(uint **)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    local_18 = param_1[2];
    local_10 = param_1[4];
    local_14 = param_1[3];
    local_c = param_1[5];
    local_8 = local_28;
    local_4 = (int *)0x0;
    FUN_00ad3180(this,&local_28,&local_18);
    if (local_4 != (int *)0x0) {
      (**(code **)(*local_4 + 4))();
    }
    local_28[4] = 1;
    piVar1 = (int *)local_28[5];
    if (param_1 != piVar1) {
      if (param_1 != (int *)0x0) {
        (**(code **)*param_1)();
      }
      local_28[5] = (uint)param_1;
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 4))();
      }
    }
    FUN_007d9330(piVar3,param_1);
  }
  else {
    local_28[4] = local_28[4] + 1;
  }
  if (param_2 != '\0') {
    local_28 = (uint *)0x0;
    local_24 = (uint *)0x0;
    local_20 = 0;
    local_1c = "Lot/CompositorManager";
    FUN_00603e80(param_1,(int *)&local_28,'\x01');
    puVar2 = local_24;
    for (puVar4 = local_28; puVar4 != puVar2; puVar4 = puVar4 + 4) {
      FUN_00ad3250(this,puVar4);
    }
    if (local_28 != (uint *)0x0) {
      Memory_FreeIfNonNull(local_28);
    }
  }
  return;
}

