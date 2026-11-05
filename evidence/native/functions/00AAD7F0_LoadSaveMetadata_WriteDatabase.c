/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* Analyst note (PC1.67 construction persistence contract): Write metadata database with exact
   resource type628A788F,group0,instance1, through the registered factory callback.
   Registration/factory owns metadata format; do not infer a different native wire schema from a
   managed output DTO. */

undefined4 __thiscall
LoadSaveMetadata_WriteDatabase(void *this,int param_1,int param_2,char param_3)

{
  void *pvVar1;
  char cVar2;
  short *psVar3;
  undefined4 *puVar4;
  void *pvVar5;
  undefined4 uVar6;
  int *piVar7;
  uint uVar8;
  int iVar9;
  undefined4 *puVar10;
  undefined4 local_1ca8 [256];
  undefined1 auStack_18a8 [16];
  undefined1 local_1898 [4208];
  undefined4 local_828 [519];
  undefined4 uStack_c;
  
  uStack_c = 0xaad800;
  if (param_1 == 0) {
    psVar3 = (short *)0x0;
  }
  else {
    psVar3 = *(short **)(param_1 + 8);
  }
  FUN_00aaab20(local_1898,psVar3);
  FUN_00aacfe0(local_1898,'\0',param_3);
  FUN_004ec7e0((undefined2 *)local_1ca8);
  puVar4 = local_828;
  puVar10 = local_1ca8;
  for (iVar9 = 0x104; iVar9 != 0; iVar9 = iVar9 + -1) {
    *puVar10 = *puVar4;
    puVar4 = puVar4 + 1;
    puVar10 = puVar10 + 1;
  }
  puVar4 = FUN_004e4760(0x398,"World/LoadSaveManager/DBPF",0);
  if (puVar4 == (undefined4 *)0x0) {
    pvVar5 = (void *)0x0;
  }
  else {
    pvVar5 = FUN_004a9290(puVar4,(short *)0x0,0);
  }
  pvVar1 = *(void **)((int)this + 0x2c);
  if (pvVar5 != pvVar1) {
    if (pvVar5 != (void *)0x0) {
      (*(code *)**(undefined4 **)((int)pvVar5 + 4))();
    }
    *(void **)((int)this + 0x2c) = pvVar5;
    if (pvVar1 != (void *)0x0) {
      (**(code **)(*(int *)((int)pvVar1 + 4) + 4))();
    }
  }
  cVar2 = (**(code **)(**(int **)((int)this + 0x2c) + 4))();
  if (cVar2 != '\0') {
    iVar9 = **(int **)((int)this + 0x2c);
    uVar6 = FUN_007e51a0(local_1ca8);
    (**(code **)(iVar9 + 0x2c))(uVar6);
    cVar2 = (**(code **)(**(int **)((int)this + 0x2c) + 0x18))(2,2,0);
    if (cVar2 != '\0') {
      *(undefined4 *)(param_2 + 8) = 1;
      *(undefined4 *)(param_2 + 0xc) = 0;
      *(undefined4 *)(param_2 + 0x10) = 0x628a788f;
      *(undefined4 *)(param_2 + 0x14) = 0;
      piVar7 = (int *)FUN_004afe80();
      cVar2 = (**(code **)(*piVar7 + 0x1c))(param_2,0,*(undefined4 *)((int)this + 0x2c),0,0);
      if (cVar2 != '\0') {
        uVar6 = FUN_00aaa1d0((int)auStack_18a8);
        return CONCAT31((int3)((uint)uVar6 >> 8),1);
      }
    }
    (**(code **)(**(int **)((int)this + 0x2c) + 8))();
  }
  iVar9 = *(int *)((int)this + 0x2c);
  if (iVar9 != 0) {
    *(undefined4 *)((int)this + 0x2c) = 0;
    (**(code **)(*(int *)(iVar9 + 4) + 4))();
  }
  uVar8 = FUN_00aaa1d0((int)local_1898);
  return uVar8 & 0xffffff00;
}

