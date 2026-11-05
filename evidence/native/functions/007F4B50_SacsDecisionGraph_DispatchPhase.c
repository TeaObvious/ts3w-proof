/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX graph, three stack dwords RET0C.
   Selected lifecycle: phase0 appends node to visited deque then calls virtual+24; phase1
   uses+28,phase2+30,phase3+2C. Phases1..3 take visited deque front and advance it, not reverse
   lexical undo. Per-node auxiliary context is tracked separately;007F45E0 flush is called at
   selected termination. Full graph readiness/iteration/map policy remains bounded; annotations do
   not retype every compiler container alias.
   
   Analyst note (PC1.67 SACS migration contract): ECX graph,three stack words RET0C. Selected node
   phases dispatch before007F45E0 group flush; visited/context lifetime remains with graph. A single
   current C# lane-list pass is not established as native flush boundary. Existing phase/cleanup
   notes preserved. */

void __thiscall SacsDecisionGraph_DispatchPhase(void *this,int param_1,void *param_2,uint param_3)

{
  uint uVar1;
  int *piVar2;
  undefined4 *puVar3;
  int **ppiVar4;
  uint **ppuVar5;
  uint *puVar6;
  code *pcVar7;
  int iVar8;
  int iVar9;
  void *pvVar10;
  int *piVar11;
  bool bVar12;
  char local_171;
  uint local_170;
  undefined *local_16c;
  int *local_168;
  void *local_164;
  undefined *local_160;
  uint local_15c;
  undefined1 local_158 [4];
  int *local_154;
  uint local_150;
  int local_14c;
  float local_148;
  undefined4 local_144;
  undefined4 local_140;
  char *local_13c;
  uint uStack_138;
  uint uStack_134;
  uint local_130;
  uint uStack_12c;
  uint local_128;
  uint local_124;
  undefined *local_120;
  undefined4 local_11c;
  uint *local_118;
  int local_114;
  uint local_110;
  undefined4 local_10c;
  int *piStack_108;
  int iStack_104;
  int *piStack_100;
  undefined4 uStack_fc;
  int *piStack_f8;
  int iStack_f4;
  undefined *puStack_f0;
  undefined4 uStack_ec;
  int *local_e8;
  int local_e4;
  int *local_e0;
  int local_dc;
  uint uStack_d8;
  undefined4 uStack_d4;
  uint *puStack_d0;
  int iStack_cc;
  int *local_c8;
  undefined4 local_c4;
  int local_c0;
  undefined4 local_bc;
  undefined4 local_b8;
  undefined4 local_b4;
  undefined4 local_b0;
  undefined4 local_ac;
  undefined4 local_a8;
  undefined4 local_a4;
  undefined4 local_a0;
  undefined4 local_9c;
  char *local_98;
  int aiStack_94 [2];
  int aiStack_8c [2];
  int aiStack_84 [2];
  int aiStack_7c [3];
  int aiStack_70 [3];
  int *local_64 [3];
  int *local_58 [3];
  uint *local_4c [3];
  int aiStack_40 [3];
  int local_34 [12];
  
  if ((_DAT_011d9d28 & 1) == 0) {
    _DAT_011d9d28 = _DAT_011d9d28 | 1;
    FUN_008039e0(&DAT_011d9c70,0);
    FUN_00f7f381((_onexit_t)&LAB_00f93870);
  }
  uVar1 = param_3;
  pvVar10 = (void *)(param_3 + 0x7c);
  local_c0 = 0;
  local_bc = 0;
  local_b8 = 0;
  local_b4 = 0;
  local_b0 = 0;
  local_ac = 0;
  local_a8 = 0;
  local_a4 = 0;
  local_a0 = 0;
  local_9c = 0;
  local_98 = "SACS/DecisionGraph/backup";
  local_164 = pvVar10;
  FUN_00610c90(&local_c0,0);
  FUN_007f4810(local_34,(int)&local_c0);
  FUN_00af94d0(&local_c0);
  local_148 = FLOAT_00f998f8;
  local_144 = DAT_0103fd88;
  local_13c = "SACS/DecisionGraph/pending";
  local_150 = 1;
  local_154 = &DAT_0114d900;
  local_14c = 0;
  local_140 = 0;
  if (param_1 == 0) {
    if (*(int *)(uVar1 + 0x84) != *(int *)(uVar1 + 0x94)) {
      FUN_00aa07d0((int)pvVar10);
    }
    FUN_007f48e0(local_158,(void *)((int)this + 0x28));
LAB_007f4c8e:
    bVar12 = local_14c == 0;
  }
  else if (param_1 == 1) {
    FUN_00c49430(local_34,pvVar10);
    bVar12 = *(int *)(uVar1 + 0x84) == *(int *)(uVar1 + 0x94);
  }
  else {
    if (param_1 == 0) goto LAB_007f4c8e;
    piVar11 = local_168;
    pvVar10 = local_164;
    if ((param_1 < 1) || (3 < param_1)) goto joined_r0x007f4c9c;
    bVar12 = *(int *)(uVar1 + 0x84) == *(int *)(uVar1 + 0x94);
  }
  local_171 = !bVar12;
  piVar11 = local_168;
  pvVar10 = local_164;
joined_r0x007f4c9c:
  local_164 = pvVar10;
  if (local_171 == '\0') {
    if (param_1 == 1) {
      FUN_00c49430(pvVar10,local_34);
    }
    SacsDecisionGraph_FlushAnimationGroups(param_2,param_1);
    FUN_00ae0410((int)local_154,local_150);
    local_14c = 0;
    if (1 < local_150) {
      Memory_FreeIfNonNull(local_154);
    }
    FUN_00af94d0(local_34);
    return;
  }
  if (param_1 == 0) {
    puVar3 = (undefined4 *)*local_154;
    if (puVar3 == (undefined4 *)0x0) {
      piVar11 = local_154 + 1;
      iVar8 = local_154[1];
      while (iVar8 == 0) {
        piVar11 = piVar11 + 1;
        iVar8 = *piVar11;
      }
      puVar3 = (undefined4 *)*piVar11;
    }
    piVar11 = (int *)*puVar3;
    local_168 = piVar11;
  }
  else if ((0 < param_1) && (param_1 < 4)) {
    piVar11 = (int *)**(undefined4 **)((int)pvVar10 + 8);
    puVar3 = *(undefined4 **)((int)pvVar10 + 8) + 1;
    local_168 = piVar11;
    if (puVar3 == *(undefined4 **)((int)pvVar10 + 0x10)) {
      if (*(void **)((int)pvVar10 + 0xc) != (void *)0x0) {
        Memory_FreeIfNonNull(*(void **)((int)pvVar10 + 0xc));
      }
      piVar2 = (int *)(*(int *)((int)pvVar10 + 0x14) + 4);
      *(int **)((int)pvVar10 + 0x14) = piVar2;
      iVar8 = *piVar2;
      *(int *)((int)pvVar10 + 0xc) = iVar8;
      *(int *)((int)pvVar10 + 0x10) = iVar8 + 0x100;
      *(undefined4 *)((int)pvVar10 + 8) = *(undefined4 *)((int)pvVar10 + 0xc);
    }
    else {
      *(undefined4 **)((int)pvVar10 + 8) = puVar3;
    }
  }
  uVar1 = *(uint *)((int)param_2 + 0xc);
  iVar8 = *(int *)((int)param_2 + 8);
  local_16c = (undefined *)0x0;
  local_170 = 0;
  piVar2 = *(int **)(iVar8 + ((uint)piVar11 % uVar1) * 4);
  local_160 = (undefined *)0x0;
  local_15c = 0;
  for (; piVar2 != (int *)0x0; piVar2 = (int *)piVar2[2]) {
    if (piVar11 == (int *)*piVar2) {
      piStack_f8 = piVar2;
      iStack_f4 = iVar8 + ((uint)piVar11 % uVar1) * 4;
      ppiVar4 = &piStack_f8;
      goto LAB_007f4d8a;
    }
  }
  local_dc = iVar8 + uVar1 * 4;
  local_e0 = *(int **)(iVar8 + uVar1 * 4);
  ppiVar4 = &local_e0;
LAB_007f4d8a:
  piVar2 = *ppiVar4;
  if (*ppiVar4 == *(int **)(iVar8 + uVar1 * 4)) {
    local_128 = local_128 & 0xffffff00;
    local_c4 = 0;
    local_c8 = piVar11;
    UInt32PairMap_InsertUnique((void *)((int)param_2 + 4),local_58,(uint *)&local_c8,local_128);
    piVar2 = local_58[0];
  }
  pvVar10 = (void *)piVar2[1];
  if (pvVar10 != (void *)0x0) {
    uVar1 = *(uint *)((int)pvVar10 + 8);
    iVar9 = (int)(0x11d9c70 % (ulonglong)uVar1);
    iVar8 = *(int *)((int)pvVar10 + 4);
    for (piVar2 = *(int **)(iVar8 + iVar9 * 4); piVar2 != (int *)0x0; piVar2 = (int *)piVar2[2]) {
      if ((undefined *)*piVar2 == &DAT_011d9c70) {
        piStack_108 = piVar2;
        iStack_104 = iVar8 + iVar9 * 4;
        ppiVar4 = &piStack_108;
        goto LAB_007f4e20;
      }
    }
    local_e4 = iVar8 + uVar1 * 4;
    local_e8 = *(int **)(iVar8 + uVar1 * 4);
    ppiVar4 = &local_e8;
LAB_007f4e20:
    piVar2 = *ppiVar4;
    if (*ppiVar4 == *(int **)(iVar8 + uVar1 * 4)) {
      local_124 = local_124 & 0xffffff00;
      local_120 = &DAT_011d9c70;
      local_11c = 0;
      UInt32PairMap_InsertUnique(pvVar10,local_64,(uint *)&local_120,local_124);
      piVar2 = local_64[0];
    }
    local_16c = (undefined *)piVar2[1];
    uVar1 = *(uint *)((int)pvVar10 + 8);
    iVar8 = *(int *)((int)pvVar10 + 4);
    for (puVar6 = *(uint **)(iVar8 + (param_3 % uVar1) * 4); puVar6 != (uint *)0x0;
        puVar6 = (uint *)puVar6[2]) {
      piVar11 = local_168;
      if (param_3 == *puVar6) {
        puStack_d0 = puVar6;
        iStack_cc = iVar8 + (param_3 % uVar1) * 4;
        ppuVar5 = &puStack_d0;
        goto LAB_007f4ea8;
      }
    }
    local_114 = iVar8 + uVar1 * 4;
    local_118 = *(uint **)(iVar8 + uVar1 * 4);
    ppuVar5 = &local_118;
LAB_007f4ea8:
    puVar6 = *ppuVar5;
    local_160 = local_16c;
    if (*ppuVar5 == *(uint **)(iVar8 + uVar1 * 4)) {
      local_130 = local_130 & 0xffffff00;
      local_110 = param_3;
      local_10c = 0;
      UInt32PairMap_InsertUnique(pvVar10,local_4c,&local_110,local_130);
      puVar6 = local_4c[0];
    }
    local_170 = puVar6[1];
    local_15c = local_170;
  }
  switch(param_1) {
  case 0:
    puVar3 = *(undefined4 **)((int)local_164 + 0x18);
    if (puVar3 + 1 == *(undefined4 **)((int)local_164 + 0x20)) {
      FUN_00730220(local_164,&local_168);
    }
    else {
      *(undefined4 **)((int)local_164 + 0x18) = puVar3 + 1;
      if (puVar3 != (undefined4 *)0x0) {
        *puVar3 = piVar11;
      }
    }
    (**(code **)(*piVar11 + 0x24))(local_158,param_3,param_2,&local_16c,&local_170);
    break;
  case 1:
    pcVar7 = *(code **)(*piVar11 + 0x28);
    goto LAB_007f4fc2;
  case 2:
    pcVar7 = *(code **)(*piVar11 + 0x30);
LAB_007f4fc2:
    (*pcVar7)(param_3,param_2,&local_16c,&local_170);
    break;
  case 3:
    (**(code **)(*piVar11 + 0x2c))(param_3,param_2,&local_16c,&local_170);
  }
  if ((local_16c != (undefined *)0x0) || (local_170 != 0)) {
    if (pvVar10 == (void *)0x0) {
      pvVar10 = (void *)FUN_004e4500(0x20,"SACS/W2IDM",0);
      if (pvVar10 == (void *)0x0) {
        pvVar10 = (void *)0x0;
      }
      else {
        *(float *)((int)pvVar10 + 0x10) = FLOAT_00f998f8;
        *(undefined4 *)((int)pvVar10 + 0x14) = DAT_0103fd88;
        *(char **)((int)pvVar10 + 0x1c) = "SACS/W2IDMap";
        *(undefined4 *)((int)pvVar10 + 8) = 1;
        *(undefined4 **)((int)pvVar10 + 4) = &DAT_0114d900;
        *(undefined4 *)((int)pvVar10 + 0xc) = 0;
        *(undefined4 *)((int)pvVar10 + 0x18) = 0;
      }
      UInt32PairMap_Find((void *)((int)param_2 + 4),aiStack_94,(uint *)&local_168);
      iVar8 = aiStack_94[0];
      if (aiStack_94[0] == *(int *)(*(int *)((int)param_2 + 8) + *(int *)((int)param_2 + 0xc) * 4))
      {
        uStack_138 = uStack_138 & 0xffffff00;
        uStack_fc = 0;
        piStack_100 = piVar11;
        UInt32PairMap_InsertUnique
                  ((void *)((int)param_2 + 4),aiStack_40,(uint *)&piStack_100,uStack_138);
        iVar8 = aiStack_40[0];
      }
      *(void **)(iVar8 + 4) = pvVar10;
    }
    if (local_16c != local_160) {
      local_160 = &DAT_011d9c70;
      UInt32PairMap_Find(pvVar10,aiStack_84,(uint *)&local_160);
      iVar8 = aiStack_84[0];
      if (aiStack_84[0] == *(int *)(*(int *)((int)pvVar10 + 4) + *(int *)((int)pvVar10 + 8) * 4)) {
        uStack_134 = uStack_134 & 0xffffff00;
        puStack_f0 = &DAT_011d9c70;
        uStack_ec = 0;
        UInt32PairMap_InsertUnique(pvVar10,aiStack_7c,(uint *)&puStack_f0,uStack_134);
        iVar8 = aiStack_7c[0];
      }
      *(undefined **)(iVar8 + 4) = local_16c;
    }
    if (local_170 != local_15c) {
      UInt32PairMap_Find(pvVar10,aiStack_8c,&param_3);
      iVar8 = aiStack_8c[0];
      if (aiStack_8c[0] == *(int *)(*(int *)((int)pvVar10 + 4) + *(int *)((int)pvVar10 + 8) * 4)) {
        uStack_12c = uStack_12c & 0xffffff00;
        uStack_d8 = param_3;
        uStack_d4 = 0;
        UInt32PairMap_InsertUnique(pvVar10,aiStack_70,&uStack_d8,uStack_12c);
        iVar8 = aiStack_70[0];
      }
      *(uint *)(iVar8 + 4) = local_170;
    }
  }
  if (param_1 != 0) goto code_r0x007f51a6;
  FUN_006a5ad0(local_158,(uint *)&local_168);
  bVar12 = local_14c == 0;
  goto LAB_007f51cb;
code_r0x007f51a6:
  pvVar10 = local_164;
  if ((0 < param_1) && (param_1 < 4)) {
    bVar12 = *(int *)((int)local_164 + 8) == *(int *)((int)local_164 + 0x18);
LAB_007f51cb:
    local_171 = !bVar12;
    pvVar10 = local_164;
  }
  goto joined_r0x007f4c9c;
}

