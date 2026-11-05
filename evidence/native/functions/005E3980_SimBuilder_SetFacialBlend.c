/* Analyst-assigned name; PC1.67 SimBuilder facial-blend admission. ECX owns a linked list at
   +0x208; two stack arguments, RET 8. param_1 points to the complete 16-byte resource key; param_2
   carries a float amount as raw 32-bit bits (existing provisional C types retained). Existing key:
   update amount, OR dirty bits 0x5000, return Boolean true in AL without reacquisition. New key:
   resource-manager virtual +0x34 with interface 0x03593C6A; success retains key/amount and
   reference. Failure unlinks, releases and frees the new node and returns AL=0. Resource
   acquisition failure is wider than mere package absence; concrete factory failures remain
   separate. C's upper EAX bits and local uninitialized aliases do not define the Boolean ABI.
   Original instructions 005E3ADE..005E3B48, 005E3B4B..005E3B9E govern these claims. Caller 005E4E80
   ignores failure; registered script wrapper 005A68B0 returns AL. No original runtime execution
   implied. */

uint __thiscall SimBuilder_SetFacialBlend(void *this,int *param_1,int param_2)

{
  uint *puVar1;
  int *piVar2;
  int iVar3;
  char cVar4;
  int *piVar5;
  uint extraout_EAX;
  int local_8;
  int *local_4;
  
  piVar5 = *(int **)((int)this + 0x208);
  piVar2 = (int *)((int)this + 0x208);
  if (piVar5 != piVar2) {
    do {
      if ((((piVar5[2] == *param_1) && (piVar5[4] == param_1[2])) && (piVar5[5] == param_1[3])) &&
         (piVar5[3] == param_1[1])) {
        piVar5[6] = param_2;
        *(uint *)((int)this + 0x1c) = *(uint *)((int)this + 0x1c) | 0x5000;
        return CONCAT31((int3)((uint)piVar5 >> 8),1);
      }
      piVar5 = (int *)*piVar5;
    } while (piVar5 != piVar2);
  }
  iVar3 = *piVar2;
  local_4 = (int *)0x0;
  piVar5 = (int *)FUN_004e4500(0x20,*(undefined4 *)((int)this + 0x210),0);
  if (piVar5 + 2 != (int *)0x0) {
    piVar5[2] = 0;
    piVar5[3] = 0;
    piVar5[4] = 0;
    piVar5[5] = 0;
    piVar5[6] = local_8;
    piVar5[7] = 0;
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x38))
                (piVar5 + 7,&local_4,&LAB_005e56d0,ResourceCallback_InvokeVirtual04,1,0,0);
    }
  }
  *piVar5 = iVar3;
  piVar5[1] = *(int *)(iVar3 + 4);
  **(undefined4 **)(iVar3 + 4) = piVar5;
  *(int **)(iVar3 + 4) = piVar5;
  if (local_4 != (int *)0x0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(&local_4,ResourceCallback_InvokeVirtual04);
    }
    if ((local_4 != (int *)0x0) && (((uint)local_4 & 3) == 0)) {
      (**(code **)(*local_4 + 4))();
      local_4 = (int *)0x0;
    }
  }
  iVar3 = *piVar2;
  if (DAT_011d4c84 != (int *)0x0) {
    cVar4 = (**(code **)(*DAT_011d4c84 + 0x34))
                      (param_1,0x3593c6a,iVar3 + 0x1c,0,0,ResourceCallback_InvokeVirtual04,0,1);
    if (cVar4 != '\0') {
      *(int *)(iVar3 + 8) = *param_1;
      *(int *)(iVar3 + 0xc) = param_1[1];
      *(int *)(iVar3 + 0x10) = param_1[2];
      *(int *)(iVar3 + 0x14) = param_1[3];
      *(int *)(iVar3 + 0x18) = param_2;
      *(uint *)((int)this + 0x1c) = *(uint *)((int)this + 0x1c) | 0x5000;
      return CONCAT31((int3)((uint)this >> 8),1);
    }
  }
  piVar2 = (int *)*piVar2;
  *(int *)piVar2[1] = *piVar2;
  puVar1 = (uint *)(piVar2 + 7);
  *(int *)(*piVar2 + 4) = piVar2[1];
  if (*puVar1 != 0) {
    if (DAT_011d4c84 != (int *)0x0) {
      (**(code **)(*DAT_011d4c84 + 0x3c))(puVar1,ResourceCallback_InvokeVirtual04);
    }
    if ((*puVar1 != 0) && ((*puVar1 & 3) == 0)) {
      (**(code **)(*(int *)*puVar1 + 4))();
      *puVar1 = 0;
    }
  }
  Memory_FreeIfNonNull(piVar2);
  return extraout_EAX & 0xffffff00;
}
