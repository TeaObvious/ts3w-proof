/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


undefined1 __thiscall
FUN_00726c70(void *this,int *param_1,undefined4 *param_2,int *param_3,int param_4)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  int *piVar4;
  size_t sVar5;
  int *piVar6;
  void *pvVar7;
  void *this_00;
  undefined4 *this_01;
  undefined4 *puVar8;
  uint uVar9;
  undefined4 uVar10;
  uint *puVar11;
  undefined1 uVar12;
  undefined1 uVar13;
  uint uVar14;
  void *pvStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  char *pcStack_48;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined1 uStack_38;
  undefined4 uStack_34;
  int *piStack_4;
  
  piVar1 = param_1;
  iVar2 = (**(code **)(*(int *)this + 0x40))();
  if (param_4 != iVar2) {
    (**(code **)(*param_1 + 0x20))();
    return 0;
  }
  puVar3 = (undefined4 *)(**(code **)(*param_1 + 0x10))();
  (**(code **)(*param_1 + 4))();
  piVar4 = (int *)(**(code **)(*param_1 + 0x18))();
  iVar2 = (**(code **)(*piVar4 + 0xc))();
  if (iVar2 != 0x347223d2) {
    sVar5 = (**(code **)(*piVar4 + 0x1c))();
    piVar6 = (int *)FUN_0092f9c0();
    pvVar7 = (void *)(**(code **)(*piVar6 + 8))(sVar5,"ResourceLoad/AsyncFactory/RawData",0);
    (**(code **)(*piVar4 + 0x30))(pvVar7,sVar5);
    this_00 = (void *)FUN_004e4500(0x2c,"ResourceLoad/AsyncFactory/MemoryStream",0);
    if (this_00 == (void *)0x0) {
      piVar4 = (int *)0x0;
    }
    else {
      piVar4 = FUN_004df4c0(this_00,pvVar7,sVar5,'\x01',1,(int *)0x0,
                            "ResourceLoad/AsyncFactory/MemoryStream");
    }
    this_01 = FUN_004e4760(0x28,"ResourceLoad/AsyncFactory/RecordGeneric",0);
    if (this_01 == (undefined4 *)0x0) {
      piVar6 = (int *)0x0;
    }
    else {
      uVar13 = 1;
      uVar12 = 1;
      puVar8 = (undefined4 *)(**(code **)(*param_1 + 0x10))();
      piVar6 = (int *)FUN_004b3830(this_01,0,piVar4,puVar8,uVar12,uVar13);
    }
    if (piVar6 != param_1) {
      if (piVar6 != (int *)0x0) {
        (**(code **)(*piVar6 + 4))();
      }
      piStack_4 = piVar6;
      (**(code **)(*param_1 + 8))();
    }
    (**(code **)(*param_1 + 0x20))();
  }
  param_1 = piVar4;
  puVar11 = (uint *)0x0;
  pvStack_54 = (void *)0x0;
  uStack_50 = 0;
  uStack_4c = 0;
  pcStack_48 = "ResourceLoad/AsyncFactory/Context";
  uStack_40 = 0;
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_34 = 0;
  if (param_3 == (int *)0x0) {
    if (param_1[1] != 0) {
      puVar11 = *(uint **)(param_1[1] + 8);
    }
    uVar14 = 0;
    uVar9 = (**(code **)(*param_1 + 0x1c))();
    uVar10 = FUN_00726a80(&pvStack_54,puVar11,uVar9,uVar14);
    if ((char)uVar10 == '\0') {
      (**(code **)(*piVar1 + 0x20))();
      FUN_00726380(&pvStack_54);
      if (pvStack_54 != (void *)0x0) {
        Memory_FreeIfNonNull(pvStack_54);
      }
      if (piVar1 != (int *)0x0) {
        (**(code **)(*piVar1 + 8))();
      }
      return 0;
    }
    param_3 = (int *)&pvStack_54;
  }
  if ((void *)param_3[4] != (void *)0x0) {
    uVar9 = *(uint *)param_3[10];
    if (param_2 != (undefined4 *)0x0) {
      (**(code **)*param_2)();
    }
    if ((int *)(uVar9 & 0xfffffffe) != (int *)0x0) {
      (**(code **)(*(int *)(uVar9 & 0xfffffffe) + 4))();
    }
    *(int *)param_3[10] = (int)param_2 + 1;
  }
  param_2[2] = *puVar3;
  param_2[3] = puVar3[1];
  param_2[4] = puVar3[2];
  param_2[5] = puVar3[3];
  uVar10 = FUN_00726690(param_1,param_3);
  (**(code **)(*piVar1 + 0x20))();
  FUN_00726380(&pvStack_54);
  if (pvStack_54 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_54);
  }
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 8))();
  }
  return (char)uVar10;
}

