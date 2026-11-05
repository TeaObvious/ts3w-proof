/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original contract. ECX new SpeedTree wrapper,no stack args, RET, returnsreceiver.
   Sets raw alpha reference+48 from01017878 binary32 42A80000=84.0, initializes modes/fields and
   allocates subordinate engines. Full constructor retained;84 is constructor default, not proof
   that no file reader or setter later overrides it. */

undefined4 * __fastcall SpeedTree_ConstructDefaultWrapper(undefined4 *param_1)

{
  float fVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  void *pvVar5;
  undefined4 uVar6;
  int iVar7;
  int *piVar8;
  int *piVar9;
  undefined4 *puStack_4;
  
  uVar2 = DAT_01017878;
  uVar6 = _DAT_00f9b5b4;
  param_1[8] = DAT_00fc3130;
  param_1[9] = DAT_00fbb838;
  param_1[0xb] = 0;
  param_1[0x14] = 0;
  fVar1 = FLOAT_00f998f8;
  param_1[0x27] = FLOAT_00f998f8;
  param_1[0x28] = fVar1;
  param_1[0x29] = fVar1;
  param_1[0x2a] = fVar1;
  param_1[0x2c] = fVar1;
  param_1[0x2d] = fVar1;
  uVar3 = _DAT_0104487c;
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 1;
  param_1[10] = uVar6;
  param_1[0xc] = 0;
  param_1[0xd] = 0;
  param_1[0xe] = 0;
  param_1[0x10] = 0xffffffff;
  param_1[0x11] = 0;
  param_1[0x12] = uVar2;
  param_1[0x13] = 0xffffffff;
  param_1[0x15] = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  param_1[0x18] = 0;
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x2b] = uVar6;
  param_1[0x2e] = uVar6;
  param_1[0x2f] = 0;
  param_1[0x30] = 0;
  param_1[0x31] = 0;
  param_1[0x32] = uVar3;
  param_1[0x33] = uVar3;
  param_1[0x34] = uVar3;
  param_1[0x35] = uVar3;
  param_1[0x36] = uVar3;
  param_1[0x37] = 0;
  *(undefined1 *)(param_1 + 0x38) = 0;
  *(undefined1 *)((int)param_1 + 0xe1) = 0;
  *(undefined1 *)((int)param_1 + 0xe2) = 0;
  puStack_4 = param_1;
  puVar4 = (undefined4 *)FUN_004e4500(0x44,"SpeedTree/CWindEngine",0);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = (undefined4 *)0x0;
  }
  else {
    puVar4 = FUN_007c08a0(puVar4);
  }
  param_1[5] = puVar4;
  pvVar5 = (void *)FUN_004e4500(0x1b8,"SpeedTree/BranchGeometry",0);
  if (pvVar5 == (void *)0x0) {
    pvVar5 = (void *)0x0;
  }
  else {
    pvVar5 = FUN_007b00e0(pvVar5,param_1[5],0);
  }
  param_1[1] = pvVar5;
  pvVar5 = (void *)FUN_004e4500(0x13c,"SpeedTree/CTreeEngine",0);
  if (pvVar5 == (void *)0x0) {
    pvVar5 = (void *)0x0;
  }
  else {
    pvVar5 = FUN_007bdf40(pvVar5,param_1[1]);
  }
  *param_1 = pvVar5;
  puVar4 = (undefined4 *)FUN_004e4500(0xb0,"SpeedTree/CLightingEngine",0);
  if (puVar4 == (undefined4 *)0x0) {
    uVar6 = 0;
  }
  else {
    uVar6 = FUN_007b52c0(puVar4);
  }
  param_1[4] = uVar6;
  pvVar5 = (void *)FUN_004e4500(0x34,"SpeedTree/CLeafGeometry",0);
  if (pvVar5 == (void *)0x0) {
    uVar6 = 0;
  }
  else {
    uVar6 = FUN_007b0d10(pvVar5,param_1[5]);
  }
  param_1[2] = uVar6;
  iVar7 = FUN_004e4500(0x34,"SpeedTree/CSimpleBillboard",0);
  if (iVar7 == 0) {
    uVar6 = 0;
  }
  else {
    uVar6 = FUN_007b6da0(iVar7);
  }
  param_1[6] = uVar6;
  if (DAT_011d9624 == (int *)0x0) {
    piVar8 = FUN_004e6f20(DAT_011cc864,0x20,0);
  }
  else {
    piVar8 = (int *)(**(code **)(*DAT_011d9624 + 4))(0x20,0x10);
  }
  if (piVar8 == (int *)0x0) {
    piVar9 = (int *)0x0;
  }
  else {
    piVar9 = piVar8 + 1;
    *piVar8 = 7;
    _DAT_011d9628 = _DAT_011d9628 + 0x20;
  }
  param_1[0x11] = piVar9;
  uVar6 = FUN_004e4500(4,"SpeedTree/InstanceRefCount",0);
  param_1[0xd] = uVar6;
  puVar4 = (undefined4 *)FUN_004e4500(0x10,"SpeedTree/SInstanceList",0);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = (undefined4 *)0x0;
  }
  else {
    *puVar4 = 0;
    puVar4[1] = 0;
    puVar4[2] = 0;
    puVar4[3] = "SpeedTree/InstanceList";
    PTR_s_SpeedTree_RT_01164240 = s_SpeedTree_InstanceList_0101731c;
  }
  param_1[0xf] = puVar4;
  *(undefined4 *)param_1[0xd] = 1;
  puVar4 = (undefined4 *)FUN_004e4500(0xb4,"SpeedTree/CFrondEngine",0);
  if (puVar4 == (undefined4 *)0x0) {
    puVar4 = (undefined4 *)0x0;
  }
  else {
    puVar4 = FUN_007ad0b0(puVar4);
  }
  param_1[0x18] = puVar4;
  pvVar5 = (void *)FUN_004e4500(0x1b8,"SpeedTree/FrondGeometry",0);
  if (pvVar5 == (void *)0x0) {
    pvVar5 = (void *)0x0;
  }
  else {
    pvVar5 = FUN_007b00e0(pvVar5,param_1[5],1);
  }
  param_1[0x19] = pvVar5;
  if (DAT_01164238 < DAT_0116423c) {
    puVar4 = DAT_01164238 + 1;
    puStack_4 = param_1;
    if (DAT_01164238 != (undefined4 *)0x0) {
      *DAT_01164238 = param_1;
      DAT_01164238 = puVar4;
      puVar4 = DAT_01164238;
    }
  }
  else {
    puStack_4 = param_1;
    FUN_00982420(&DAT_01164234,DAT_01164238,&puStack_4);
    puVar4 = DAT_01164238;
  }
  DAT_01164238 = puVar4;
  _DAT_011d9638 = _DAT_011d9638 + 1;
  DAT_011d94e8 = param_1[4];
  *(undefined4 *)param_1[0x11] = 0;
  *(undefined4 *)(param_1[0x11] + 4) = 0;
  *(undefined4 *)(param_1[0x11] + 8) = 0;
  fVar1 = FLOAT_00f998f8;
  *(float *)(param_1[0x11] + 0xc) = FLOAT_00f998f8;
  *(float *)(param_1[0x11] + 0x10) = fVar1;
  *(float *)(param_1[0x11] + 0x14) = fVar1;
  *(float *)(param_1[0x11] + 0x18) = fVar1;
  param_1[0x1b] = 0;
  param_1[0x1c] = 0;
  param_1[0x1d] = 0;
  param_1[0x1e] = 0;
  param_1[0x1f] = 0;
  param_1[0x20] = 0;
  param_1[0x21] = 0;
  param_1[0x22] = 0;
  param_1[0x23] = 0;
  param_1[0x24] = 0;
  param_1[0x25] = 0;
  param_1[0x26] = 0;
  iVar7 = FUN_004e4500(0x180,"SpeedTree/CMapBank",0);
  if (iVar7 == 0) {
    param_1[0x37] = 0;
    *(undefined4 *)(param_1[2] + 4) = *param_1;
    return param_1;
  }
  iVar7 = FUN_007b6050(iVar7);
  param_1[0x37] = iVar7;
  *(undefined4 *)(param_1[2] + 4) = *param_1;
  return param_1;
}

