/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


uint FUN_00726c97(undefined4 param_1,int param_2,undefined4 param_3,undefined4 param_4,char *param_5
                 ,undefined4 param_6,undefined4 param_7,undefined4 param_8,undefined1 param_9,
                 undefined4 param_10)

{
  int *piVar1;
  undefined4 *puVar2;
  int *piVar3;
  int iVar4;
  size_t sVar5;
  int *piVar6;
  void *pvVar7;
  void *this;
  undefined4 *this_00;
  undefined4 *puVar8;
  uint uVar9;
  uint extraout_EAX;
  undefined4 uVar10;
  undefined4 extraout_EAX_00;
  undefined4 uVar11;
  uint *puVar12;
  int *in_stack_00000058;
  int *in_stack_00000060;
  undefined4 *in_stack_00000064;
  int *in_stack_00000068;
  int *piStack0000006c;
  undefined1 uVar13;
  undefined1 uVar14;
  uint uVar15;
  
  piVar1 = in_stack_00000060;
  puVar2 = (undefined4 *)(**(code **)(*in_stack_00000060 + 0x10))();
  piStack0000006c = in_stack_00000060;
  (**(code **)(*in_stack_00000060 + 4))();
  piVar3 = (int *)(**(code **)(*in_stack_00000060 + 0x18))();
  iVar4 = (**(code **)(*piVar3 + 0xc))();
  if (iVar4 == 0x347223d2) {
    in_stack_00000060 = piVar3;
    piVar3 = piVar1;
  }
  else {
    sVar5 = (**(code **)(*piVar3 + 0x1c))();
    piVar6 = (int *)FUN_0092f9c0();
    pvVar7 = (void *)(**(code **)(*piVar6 + 8))(sVar5,"ResourceLoad/AsyncFactory/RawData",0);
    (**(code **)(*piVar3 + 0x30))(pvVar7,sVar5);
    this = (void *)FUN_004e4500(0x2c,"ResourceLoad/AsyncFactory/MemoryStream",0);
    if (this == (void *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = FUN_004df4c0(this,pvVar7,sVar5,'\x01',1,(int *)0x0,
                            "ResourceLoad/AsyncFactory/MemoryStream");
    }
    this_00 = FUN_004e4760(0x28,"ResourceLoad/AsyncFactory/RecordGeneric",0);
    if (this_00 == (undefined4 *)0x0) {
      piVar6 = (int *)0x0;
    }
    else {
      uVar14 = 1;
      uVar13 = 1;
      puVar8 = (undefined4 *)(**(code **)(*in_stack_00000060 + 0x10))();
      piVar6 = (int *)FUN_004b3830(this_00,0,piVar3,puVar8,uVar13,uVar14);
    }
    if (piVar6 != in_stack_00000060) {
      if (piVar6 != (int *)0x0) {
        (**(code **)(*piVar6 + 4))();
      }
      in_stack_00000058 = piVar6;
      (**(code **)(*in_stack_00000060 + 8))();
    }
    (**(code **)(*in_stack_00000060 + 0x20))();
    in_stack_00000060 = piVar3;
    piVar3 = piStack0000006c;
  }
  puVar12 = (uint *)0x0;
  param_2 = 0;
  param_3 = 0;
  param_4 = 0;
  param_5 = "ResourceLoad/AsyncFactory/Context";
  param_7 = 0;
  param_8 = 0;
  param_9 = 0;
  param_10 = 0;
  piVar6 = in_stack_00000068;
  if (in_stack_00000068 == (int *)0x0) {
    if (in_stack_00000060[1] != 0) {
      puVar12 = *(uint **)(in_stack_00000060[1] + 8);
    }
    uVar15 = 0;
    uVar9 = (**(code **)(*in_stack_00000060 + 0x1c))();
    uVar11 = FUN_00726a80(&param_2,puVar12,uVar9,uVar15);
    if ((char)uVar11 == '\0') {
      (**(code **)(*piVar1 + 0x20))();
      FUN_00726380(&param_2);
      uVar9 = 0;
      if (param_2 != 0) {
        Memory_FreeIfNonNull((void *)param_2);
        uVar9 = extraout_EAX;
      }
      if (piVar3 != (int *)0x0) {
        uVar9 = (**(code **)(*piVar3 + 8))();
      }
      return uVar9 & 0xffffff00;
    }
    piVar6 = &param_2;
  }
  if (piVar6[4] != 0) {
    in_stack_00000068 = (int *)(*(uint *)piVar6[10] & 0xfffffffe);
    if (in_stack_00000064 != (undefined4 *)0x0) {
      (**(code **)*in_stack_00000064)();
    }
    if (in_stack_00000068 != (int *)0x0) {
      (**(code **)(*in_stack_00000068 + 4))();
    }
    *(int *)piVar6[10] = (int)in_stack_00000064 + 1;
  }
  in_stack_00000064[2] = *puVar2;
  in_stack_00000064[3] = puVar2[1];
  in_stack_00000064[4] = puVar2[2];
  in_stack_00000064[5] = puVar2[3];
  uVar10 = FUN_00726690(in_stack_00000060,piVar6);
  (**(code **)(*piVar1 + 0x20))();
  FUN_00726380(&param_2);
  uVar11 = 0;
  if (param_2 != 0) {
    Memory_FreeIfNonNull((void *)param_2);
    uVar11 = extraout_EAX_00;
  }
  if (piStack0000006c != (int *)0x0) {
    uVar11 = (**(code **)(*piStack0000006c + 8))();
  }
  return CONCAT31((int3)((uint)uVar11 >> 8),(char)uVar10);
}

