/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 floor geometry preparation comparison.
   Uses signed DWORD levels at endpoint records+8 with X/Z floats, direction branches and per-level
   region iteration. In the ground-to-negative branch directions0/2/4/6 extend regions by four
   units; selected tile masks are passed to D23DE0 with caller-dependent state. Other branches
   include adjacent-level and error paths; a null eighth argument returns success.
   Physical cdecl eight DWORD stack slots, caller cleanup. Success/failure writes AL, not a promised
   full-width undefined4 status; error reporting children remain external. Both stored ranges are
   complete, with thirteen unowned alignment bytes. Current GroundStairwells run tiles and native
   region/admission/child floor manager semantics are not asserted equal.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow.
   
   PC1.67 static instructions/callers: Basement migration comparison: ground-to-negative branch
   extends selected regions by direction and level before D23DE0 masked writes. Current host
   projection using only stair run tiles is NOT established equivalent; preserve earlier complete
   ABI/range annotation. */

undefined4 __cdecl
StairPlacement_QueueFloorVisibilityRegions
          (int param_1,float *param_2,float *param_3,char param_4,void *param_5,float *param_6,
          void *param_7,int *param_8)

{
  float fVar1;
  float fVar2;
  undefined1 auVar3 [16];
  undefined3 uVar4;
  char cVar5;
  bool bVar6;
  float *in_EAX;
  undefined3 extraout_var;
  char *pcVar7;
  uint uVar8;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  undefined2 *puVar9;
  undefined3 extraout_var_02;
  int iVar10;
  int iVar11;
  undefined1 auVar12 [16];
  undefined1 auVar13 [16];
  char local_f8;
  char local_f7;
  undefined1 local_f6;
  char local_f4;
  char local_f3;
  undefined1 local_f2;
  float local_f0;
  float fStack_ec;
  float fStack_e8;
  float fStack_e4;
  int local_d8;
  float local_d4;
  int local_d0;
  undefined2 local_cc;
  char local_ca;
  undefined1 local_c9;
  int local_c8;
  int local_c4;
  undefined1 local_c0 [20];
  float local_ac;
  float local_a8;
  float local_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  undefined1 local_40 [16];
  undefined1 local_30 [16];
  undefined1 local_20 [16];
  
  if (param_8 == (int *)0x0) goto LAB_00cb4bb4;
  fVar1 = param_2[2];
  if (((int)fVar1 < 0) || (-1 < (int)param_3[2])) {
    in_EAX = param_3;
    if (fVar1 == (float)((int)param_3[2] + 1)) {
      fStack_ec = param_3[1];
      fStack_e8 = *param_3;
      auVar12._8_4_ = *param_2;
      auVar12._0_8_ = *(undefined8 *)param_2;
      auVar12._12_4_ = *param_2;
      local_f0 = fStack_e8;
      auVar3._8_4_ = fStack_e8;
      auVar3._0_8_ = *(undefined8 *)param_3;
      auVar3._12_4_ = fStack_e8;
      auVar13 = minps(auVar12,auVar3);
      auVar12 = maxps(auVar12,auVar3);
      local_c0._4_4_ = auVar13._4_4_;
      fVar2 = ROUND((float)local_c0._4_4_);
      local_c0._0_4_ = auVar13._0_4_;
      local_d0._0_1_ = (char)(int)ROUND((float)local_c0._0_4_);
      cVar5 = (char)local_d0;
      local_f8 = (char)local_d0;
      local_c0._4_4_ = auVar12._4_4_;
      local_f7 = (char)(int)fVar2;
      local_f6 = SUB41(fVar1,0);
      local_d8 = (int)ROUND((float)local_c0._4_4_);
      local_c0._0_4_ = auVar12._0_4_;
      local_d4 = (float)local_c0._0_4_;
      local_d0 = (int)ROUND((float)local_c0._0_4_);
      local_f3 = (char)local_d8 + -1;
      local_f4 = (char)local_d0 + -1;
      local_f2 = SUB41(fVar1,0);
      pcVar7 = &local_f4;
      if ((char)((char)local_d0 + -1) <= cVar5) {
        pcVar7 = &local_f8;
      }
      local_f4 = *pcVar7;
      pcVar7 = &local_f3;
      if (local_f3 <= (char)(int)fVar2) {
        pcVar7 = &local_f7;
      }
      local_f3 = *pcVar7;
      fStack_e4 = fStack_e8;
      local_c0._0_16_ = auVar12;
      FUN_00af6450(&local_f0,(undefined2 *)&local_f8,(undefined2 *)&local_f4);
      bVar6 = TilePartRectangleIterator_IsDone((int)&local_f0);
      in_EAX = (float *)CONCAT31(extraout_var_01,bVar6);
      while (!bVar6) {
        puVar9 = (undefined2 *)TilePartRectangleIterator_Current((int)&local_f0);
        local_cc = *puVar9;
        local_ca = *(char *)(puVar9 + 1);
        local_c9 = 0xf;
        FloorVisibility_ApplyMaskedStateAndAppendRecords(param_8,(undefined3 *)&local_cc,'\x01');
        FUN_00af6610((undefined1 *)&local_f0);
        bVar6 = TilePartRectangleIterator_IsDone((int)&local_f0);
        in_EAX = (float *)CONCAT31(extraout_var_02,bVar6);
      }
    }
    goto LAB_00cb4bb4;
  }
  if (fVar1 == 0.0) {
    local_80 = *param_2;
    fStack_7c = param_2[1];
    fStack_9c = param_3[1];
    fStack_78 = local_80;
    fStack_74 = local_80;
    local_f0 = *param_3;
    local_a0 = local_f0;
    fStack_98 = local_f0;
    fStack_94 = local_f0;
    fVar2 = fStack_9c;
    switch(param_6) {
    case (float *)0x0:
      local_f0 = local_80 + 4.0;
      local_a0 = local_f0;
      fStack_98 = local_f0;
      fStack_94 = local_f0;
      break;
    case (float *)0x2:
      fStack_9c = fStack_7c - 4.0;
      fVar2 = fStack_7c - 4.0;
      break;
    case (float *)0x4:
      local_f0 = local_80 - 4.0;
      local_a0 = local_f0;
      fStack_98 = local_f0;
      fStack_94 = local_f0;
      break;
    case (float *)0x6:
      fStack_9c = fStack_7c + 4.0;
      fVar2 = fStack_7c + 4.0;
    }
    goto switchD_00cb4602_caseD_1;
  }
  fStack_e4 = *param_3;
  fStack_ec = param_3[1];
  fStack_6c = param_2[1];
  local_a0 = fStack_e4;
  fStack_9c = fStack_ec;
  fStack_98 = fStack_e4;
  fStack_94 = fStack_e4;
  local_70 = *param_2;
  local_f0 = local_70;
  fStack_68 = local_70;
  fStack_64 = local_70;
  fVar2 = fStack_6c;
  switch(param_6) {
  case (float *)0x0:
    local_80 = fStack_e4 - 4.0;
    fStack_e4 = local_70 + 4.0;
    fStack_7c = fStack_6c;
    fStack_78 = local_80;
    fStack_74 = local_80;
    local_f0 = fStack_e4;
    break;
  default:
    goto switchD_00cb4602_caseD_1;
  case (float *)0x2:
    fStack_7c = fStack_ec + 4.0;
    fStack_ec = fStack_6c - 4.0;
    local_f0 = fStack_e4;
    goto LAB_00cb4875;
  case (float *)0x4:
    local_80 = fStack_e4 + 4.0;
    fStack_e4 = local_70 - 4.0;
    fStack_7c = fStack_6c;
    fStack_78 = local_80;
    fStack_74 = local_80;
    local_f0 = fStack_e4;
    break;
  case (float *)0x6:
    fStack_7c = fStack_ec - 4.0;
    fStack_ec = fStack_6c + 4.0;
    local_f0 = fStack_e4;
LAB_00cb4875:
    local_80 = local_70;
    fStack_78 = local_70;
    fStack_74 = local_70;
  }
  local_90 = fStack_e4;
  fStack_8c = fStack_ec;
  fStack_88 = fStack_e4;
  fStack_84 = fStack_e4;
  fVar2 = fStack_ec;
  local_f0 = fStack_e4;
  local_80 = fStack_74;
  fStack_78 = fStack_74;
switchD_00cb4602_caseD_1:
  fStack_e4 = local_f0;
  fStack_ec = fVar2;
  iVar10 = 0;
  in_EAX = param_6;
  if (-1 < (int)fVar1) {
    iVar11 = 0;
    local_f0 = fStack_e4;
    fStack_e8 = fStack_e4;
    local_a0 = fStack_94;
    fStack_98 = fStack_94;
    do {
      local_30 = minps(*(undefined1 (*) [16])((int)&local_80 + iVar11),
                       *(undefined1 (*) [16])((int)&local_a0 + iVar11));
      local_c0._0_16_ =
           maxps(*(undefined1 (*) [16])((int)&local_80 + iVar11),
                 *(undefined1 (*) [16])((int)&local_a0 + iVar11));
      local_a4 = (float)local_30._4_4_;
      local_c8 = (int)ROUND((float)local_30._4_4_);
      local_20._0_4_ = local_30._0_4_;
      local_ac = (float)local_20._0_4_;
      local_c4 = (int)ROUND((float)local_20._0_4_);
      local_40._4_4_ = local_c0._4_4_;
      local_f4 = (char)local_c4;
      local_f3 = (char)local_c8;
      local_f6 = (undefined1)iVar10;
      local_a8 = (float)local_40._4_4_;
      local_d8 = (int)ROUND((float)local_40._4_4_);
      local_d4 = (float)local_c0._0_4_;
      local_d0 = (int)ROUND((float)local_c0._0_4_);
      local_f7 = (char)local_d8 + -1;
      local_f8 = (char)local_d0 + -1;
      local_f2 = local_f6;
      local_40 = local_c0._0_16_;
      local_20 = local_30;
      FUN_00af6450(&local_f0,(undefined2 *)&local_f4,(undefined2 *)&local_f8);
      bVar6 = TilePartRectangleIterator_IsDone((int)&local_f0);
      uVar4 = extraout_var;
      while (!bVar6) {
        pcVar7 = (char *)TilePartRectangleIterator_Current((int)&local_f0);
        uVar8 = FUN_00b16890(param_7,pcVar7);
        if ((char)uVar8 != '\0') {
          if (param_5 != (void *)0x0) {
            FUN_00ad6960(&local_80,0x2c,param_1,(undefined2 *)pcVar7);
            FUN_00ad8570(param_5,&local_80);
            (**(code **)(*param_8 + 0x20))();
            uVar8 = FUN_00ad70d0((int)&local_80);
          }
          return uVar8 & 0xffffff00;
        }
        local_cc = *(undefined2 *)pcVar7;
        local_ca = pcVar7[2];
        local_c9 = 0xf;
        FloorVisibility_ApplyMaskedStateAndAppendRecords(param_8,(undefined3 *)&local_cc,param_4);
        FUN_00af6610((undefined1 *)&local_f0);
        bVar6 = TilePartRectangleIterator_IsDone((int)&local_f0);
        uVar4 = extraout_var_00;
      }
      iVar10 = iVar10 + 1;
      iVar11 = iVar11 + 0x10;
    } while (iVar10 <= (int)param_2[2]);
    return CONCAT31(uVar4,1);
  }
LAB_00cb4bb4:
  return CONCAT31((int3)((uint)in_EAX >> 8),1);
}

