/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STATIC_ROTATE_0050e250. Physical ECX service/plainRET. Update subtree transforms first,
   process native dirty/full-record paths, call50D320, copy actual Window forward+150..190 into
   retained visual jobs, then lock/swap/merge selected native publication lists. Decompiler
   multi-level pointer aliases do not create a new object model. Generic list allocation/retirement
   helpers remain providers. */

void __fastcall UiWindowService_UpdateRetainedVisuals(void *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int *****pppppiVar3;
  int ****ppppiVar4;
  int ****ppppiVar5;
  int *****pppppiVar6;
  int ****ppppiVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  undefined4 uVar10;
  bool bVar11;
  void *pvVar12;
  int *****pppppiVar13;
  int iVar14;
  int *****pppppiVar15;
  char local_42;
  int ****local_28;
  int ****local_24;
  int ****local_20;
  int ****local_1c;
  int local_18;
  int ***local_14;
  
  local_20 = (int ****)&local_20;
  local_1c = local_20;
  if (*(int *)((int)param_1 + 4) != 0) {
    UiWindowService_UpdateSubtreeTransforms(param_1,*(int *)((int)param_1 + 4),'\0','\0');
  }
  bVar11 = false;
  local_42 = '\0';
  if (*(char *)((int)param_1 + 0x30) == '\0') {
    if (*(int *)((int)param_1 + 0xc) != (int)param_1 + 8) {
      local_42 = '\x01';
      do {
        puVar1 = (undefined4 *)((int)param_1 + 8);
        if (*(int *)((int)param_1 + 8) == 8) {
          iVar14 = 0;
        }
        else {
          iVar14 = *(int *)((int)param_1 + 8) + -0x10;
        }
        *(undefined4 **)(*(int *)*puVar1 + 4) = puVar1;
        *puVar1 = *(undefined4 *)*puVar1;
        *(byte *)(iVar14 + 0x1f8) = *(byte *)(iVar14 + 0x1f8) & 0xfd;
        *(undefined4 *)(iVar14 + 0x14) = 0;
        if (*(int *)((int)param_1 + 0x28) == 0) {
          pvVar12 = (void *)FUN_004e4500(0xa0,"UI/UTFWin/UpdateVisualsRC",0);
          if (pvVar12 == (void *)0x0) {
            pvVar12 = (void *)0x0;
          }
          else {
            pvVar12 = FUN_0050ebc0(pvVar12,param_1);
          }
          *(void **)((int)param_1 + 0x28) = pvVar12;
        }
        pvVar12 = *(void **)((int)param_1 + 0x28);
        UiWindow_RecordSelfVisuals(iVar14,pvVar12);
        pppppiVar13 = (int *****)FUN_0050a2f0();
        pppppiVar13[2] = *(int *****)(iVar14 + 500);
        *(undefined1 *)(pppppiVar13 + 3) = 1;
        *(undefined1 *)((int)pppppiVar13 + 0xd) = 0;
        *(undefined2 *)(pppppiVar13 + 4) = *(undefined2 *)(*(int *)(iVar14 + 500) + 0x10);
        *(undefined2 *)((int)pppppiVar13 + 0x12) = *(undefined2 *)(*(int *)(iVar14 + 500) + 0x12);
        pppppiVar13[5] = (int ****)(*(float *)(iVar14 + 0x48) - *(float *)(iVar14 + 0x40));
        pppppiVar13[6] = (int ****)(*(float *)(iVar14 + 0x4c) - *(float *)(iVar14 + 0x44));
        ppppiVar4 = *(int *****)(iVar14 + 0x20c);
        pppppiVar13[7] = ppppiVar4;
        if (ppppiVar4 != (int ****)0x0) {
          (*(code *)**ppppiVar4)();
        }
        ppppiVar5 = pppppiVar13[8];
        ppppiVar4 = (int ****)((int)pvVar12 + 0x58);
        local_14 = (int ***)pppppiVar13[9];
        pppppiVar15 = pppppiVar13 + 8;
        *pppppiVar15 = (int ****)*ppppiVar4;
        pppppiVar13[9] = *(int *****)((int)pvVar12 + 0x5c);
        *ppppiVar4 = (int ***)ppppiVar5;
        *(int ****)((int)pvVar12 + 0x5c) = local_14;
        if (*pppppiVar15 == ppppiVar4) {
          pppppiVar13[9] = (int ****)pppppiVar15;
          *pppppiVar15 = (int ****)pppppiVar15;
        }
        else {
          *pppppiVar13[9] = (int ***)pppppiVar15;
          (*pppppiVar15)[1] = (int ***)pppppiVar15;
        }
        if ((int *****)*ppppiVar4 == pppppiVar15) {
          *(int *****)((int)pvVar12 + 0x5c) = ppppiVar4;
          *ppppiVar4 = (int ***)ppppiVar4;
        }
        else {
          **(int **)((int)pvVar12 + 0x5c) = (int)ppppiVar4;
          (*ppppiVar4)[1] = (int **)ppppiVar4;
        }
        *(undefined1 *)((int)pppppiVar13 + 0xe) = 0;
        ppppiVar4 = *(int *****)(iVar14 + 0x154);
        ppppiVar5 = *(int *****)(iVar14 + 0x158);
        ppppiVar7 = *(int *****)(iVar14 + 0x15c);
        pppppiVar13[0xc] = *(int *****)(iVar14 + 0x150);
        pppppiVar13[0xd] = ppppiVar4;
        pppppiVar13[0xe] = ppppiVar5;
        pppppiVar13[0xf] = ppppiVar7;
        ppppiVar4 = *(int *****)(iVar14 + 0x164);
        ppppiVar5 = *(int *****)(iVar14 + 0x168);
        ppppiVar7 = *(int *****)(iVar14 + 0x16c);
        pppppiVar13[0x10] = *(int *****)(iVar14 + 0x160);
        pppppiVar13[0x11] = ppppiVar4;
        pppppiVar13[0x12] = ppppiVar5;
        pppppiVar13[0x13] = ppppiVar7;
        ppppiVar4 = *(int *****)(iVar14 + 0x174);
        ppppiVar5 = *(int *****)(iVar14 + 0x178);
        ppppiVar7 = *(int *****)(iVar14 + 0x17c);
        pppppiVar13[0x14] = *(int *****)(iVar14 + 0x170);
        pppppiVar13[0x15] = ppppiVar4;
        pppppiVar13[0x16] = ppppiVar5;
        pppppiVar13[0x17] = ppppiVar7;
        ppppiVar4 = *(int *****)(iVar14 + 0x184);
        ppppiVar5 = *(int *****)(iVar14 + 0x188);
        ppppiVar7 = *(int *****)(iVar14 + 0x18c);
        pppppiVar13[0x18] = *(int *****)(iVar14 + 0x180);
        pppppiVar13[0x19] = ppppiVar4;
        pppppiVar13[0x1a] = ppppiVar5;
        pppppiVar13[0x1b] = ppppiVar7;
        pppppiVar13[0x1c] = *(int *****)(iVar14 + 400);
        pppppiVar13[0x20] = *(int *****)(iVar14 + 0x1f0);
        pppppiVar13[1] = local_1c;
        *pppppiVar13 = (int ****)&local_20;
        *pppppiVar13[1] = (int ***)pppppiVar13;
        if (((int *****)pppppiVar13[9] == pppppiVar15) &&
           (*(int *)(*(int *)(iVar14 + 500) + 0x1c) == 0)) {
          *(undefined4 *)(iVar14 + 500) = 0;
        }
        else {
          *(int ******)(iVar14 + 500) = pppppiVar13;
          for (iVar14 = *(int *)(iVar14 + 0x2c);
              (iVar14 != 0 && ((*(byte *)(iVar14 + 0x1f9) & 8) == 0));
              iVar14 = *(int *)(iVar14 + 0x2c)) {
            *(byte *)(iVar14 + 0x1f9) = *(byte *)(iVar14 + 0x1f9) | 8;
          }
        }
        local_1c = (int ****)pppppiVar13;
      } while (*(int *)((int)param_1 + 0xc) != (int)param_1 + 8);
      goto LAB_0050e4b2;
    }
  }
  else {
    *(undefined1 *)((int)param_1 + 0x30) = 0;
    if (*(int *)((int)param_1 + 4) != 0) {
      local_18 = 0;
      local_14 = (int ***)0x0;
      UiWindowService_RecordVisualSubtree
                (param_1,(int)&local_20,*(int *)((int)param_1 + 4),&local_18,1);
    }
    iVar14 = (int)param_1 + 8;
    *(int *)((int)param_1 + 0xc) = iVar14;
    *(int *)iVar14 = iVar14;
LAB_0050e4b2:
    bVar11 = true;
  }
  local_28 = (int ****)&local_28;
  local_24 = local_28;
  FUN_004e1c00((LPCRITICAL_SECTION)((int)param_1 + 0x38),(uint *)&DAT_00fbb624);
  iVar14 = *(int *)((int)param_1 + 0x1c);
  while (iVar14 != (int)param_1 + 0x18) {
    if (*(int *)((int)param_1 + 0x1c) == 0x18) {
      iVar14 = 0;
    }
    else {
      iVar14 = *(int *)((int)param_1 + 0x1c) + -0x20;
    }
    **(int **)(*(int *)((int)param_1 + 0x1c) + 4) = (int)param_1 + 0x18;
    *(undefined4 *)((int)param_1 + 0x1c) = *(undefined4 *)(*(int *)((int)param_1 + 0x1c) + 4);
    iVar2 = *(int *)(iVar14 + 500);
    *(undefined4 *)(iVar14 + 0x24) = 0;
    if (iVar2 != 0) {
      uVar8 = *(undefined4 *)(iVar14 + 0x154);
      uVar9 = *(undefined4 *)(iVar14 + 0x158);
      uVar10 = *(undefined4 *)(iVar14 + 0x15c);
      puVar1 = (undefined4 *)((uint)(*(char *)(iVar2 + 0xe) == '\0') * 0x60 + 0x30 + iVar2);
      *puVar1 = *(undefined4 *)(iVar14 + 0x150);
      puVar1[1] = uVar8;
      puVar1[2] = uVar9;
      puVar1[3] = uVar10;
      uVar8 = *(undefined4 *)(iVar14 + 0x164);
      uVar9 = *(undefined4 *)(iVar14 + 0x168);
      uVar10 = *(undefined4 *)(iVar14 + 0x16c);
      puVar1[4] = *(undefined4 *)(iVar14 + 0x160);
      puVar1[5] = uVar8;
      puVar1[6] = uVar9;
      puVar1[7] = uVar10;
      uVar8 = *(undefined4 *)(iVar14 + 0x174);
      uVar9 = *(undefined4 *)(iVar14 + 0x178);
      uVar10 = *(undefined4 *)(iVar14 + 0x17c);
      puVar1[8] = *(undefined4 *)(iVar14 + 0x170);
      puVar1[9] = uVar8;
      puVar1[10] = uVar9;
      puVar1[0xb] = uVar10;
      uVar8 = *(undefined4 *)(iVar14 + 0x184);
      uVar9 = *(undefined4 *)(iVar14 + 0x188);
      uVar10 = *(undefined4 *)(iVar14 + 0x18c);
      puVar1[0xc] = *(undefined4 *)(iVar14 + 0x180);
      puVar1[0xd] = uVar8;
      puVar1[0xe] = uVar9;
      puVar1[0xf] = uVar10;
      puVar1[0x10] = *(undefined4 *)(iVar14 + 400);
      puVar1[0x14] = *(undefined4 *)(iVar14 + 0x1f0);
      *(bool *)(iVar2 + 0xe) = *(char *)(iVar2 + 0xe) == '\0';
    }
    iVar14 = *(int *)((int)param_1 + 0x1c);
  }
  pppppiVar15 = *(int ******)((int)param_1 + 0x74);
  pppppiVar3 = *(int ******)((int)param_1 + 0x78);
  pppppiVar13 = (int *****)((int)param_1 + 0x74);
  *pppppiVar13 = local_28;
  *(int *****)((int)param_1 + 0x78) = local_24;
  local_28 = (int ****)pppppiVar15;
  if ((int *****)*pppppiVar13 == &local_28) {
    *(int ******)((int)param_1 + 0x78) = pppppiVar13;
    *pppppiVar13 = (int ****)pppppiVar13;
    local_24 = (int ****)pppppiVar3;
  }
  else {
    *local_24 = (int ***)pppppiVar13;
    local_24 = (int ****)pppppiVar3;
    (*pppppiVar13)[1] = (int ***)pppppiVar13;
  }
  pppppiVar15 = &local_28;
  pppppiVar3 = &local_28;
  if ((int *****)local_28 != pppppiVar13) {
    *local_24 = (int ***)&local_28;
    local_28[1] = (int ***)&local_28;
    pppppiVar15 = (int *****)local_28;
    pppppiVar3 = (int *****)local_24;
  }
  local_24 = (int ****)pppppiVar3;
  local_28 = (int ****)pppppiVar15;
  if (!bVar11) goto LAB_0050e772;
  if (*(char *)((int)param_1 + 0x68) == '\0') {
LAB_0050e6b8:
    pppppiVar3 = *(int ******)((int)param_1 + 0x6c);
    pppppiVar15 = (int *****)((int)param_1 + 0x6c);
    if (pppppiVar3 != pppppiVar15) {
      pppppiVar6 = *(int ******)((int)param_1 + 0x70);
      *local_24 = (int ***)pppppiVar3;
      pppppiVar3[1] = local_24;
      *pppppiVar6 = (int ****)&local_28;
      *pppppiVar15 = (int ****)pppppiVar15;
      *(int ******)((int)param_1 + 0x70) = pppppiVar15;
      local_24 = (int ****)pppppiVar6;
    }
    pppppiVar3 = (int *****)*pppppiVar15;
    pppppiVar6 = *(int ******)((int)param_1 + 0x70);
    *pppppiVar15 = local_20;
    *(int *****)((int)param_1 + 0x70) = local_1c;
    local_20 = (int ****)pppppiVar3;
    if ((int *****)*pppppiVar15 == &local_20) {
      *(int ******)((int)param_1 + 0x70) = pppppiVar15;
      *pppppiVar15 = (int ****)pppppiVar15;
      local_1c = (int ****)pppppiVar6;
    }
    else {
      *local_1c = (int ***)pppppiVar15;
      local_1c = (int ****)pppppiVar6;
      (*pppppiVar15)[1] = (int ***)pppppiVar15;
    }
    pppppiVar3 = &local_20;
    pppppiVar6 = &local_20;
    if ((int *****)local_20 != pppppiVar15) {
      *local_1c = (int ***)&local_20;
      local_20[1] = (int ***)&local_20;
      pppppiVar3 = (int *****)local_20;
      pppppiVar6 = (int *****)local_1c;
    }
  }
  else {
    if ((*(char *)((int)param_1 + 0x69) != '\0') || (local_42 == '\0')) {
      pppppiVar15 = (int *****)local_20;
      if ((int *****)local_20 != &local_20) {
        do {
          pppppiVar3 = (int *****)pppppiVar15[2];
          if ((pppppiVar3 != (int *****)0x0) && (*(char *)((int)pppppiVar3 + 0xd) == '\0')) {
            pppppiVar15[2] = pppppiVar3[2];
            if ((*(char *)(pppppiVar3 + 3) != '\0') && (*(char *)(pppppiVar15 + 3) == '\0')) {
              *(undefined1 *)(pppppiVar15 + 3) = 1;
              FUN_0054ac40(pppppiVar15 + 8,(int *)(pppppiVar3 + 8));
            }
            ppppiVar4 = pppppiVar3[1];
            ppppiVar5 = *pppppiVar3;
            *ppppiVar4 = (int ***)ppppiVar5;
            ppppiVar5[1] = (int ***)ppppiVar4;
            pppppiVar3[1] = local_24;
            *pppppiVar3 = (int ****)&local_28;
            *pppppiVar3[1] = (int ***)pppppiVar3;
            local_24 = (int ****)pppppiVar3;
          }
          pppppiVar15 = (int *****)*pppppiVar15;
        } while (pppppiVar15 != &local_20);
      }
      if (local_42 != '\0') {
        ppppiVar5 = *(int *****)((int)param_1 + 0x6c);
        ppppiVar4 = (int ****)((int)param_1 + 0x6c);
        if (ppppiVar5 != ppppiVar4) {
          pppppiVar15 = *(int ******)((int)param_1 + 0x70);
          *local_1c = (int ***)ppppiVar5;
          ppppiVar5[1] = (int ***)local_1c;
          *pppppiVar15 = (int ****)&local_20;
          *ppppiVar4 = (int ***)ppppiVar4;
          *(int *****)((int)param_1 + 0x70) = ppppiVar4;
          local_1c = (int ****)pppppiVar15;
        }
      }
      goto LAB_0050e6b8;
    }
    FUN_0050b4d0((int)param_1 + 0x6c,(int *)&local_20,(int *)&local_28);
    local_42 = '\0';
    pppppiVar3 = (int *****)local_20;
    pppppiVar6 = (int *****)local_1c;
  }
  local_1c = (int ****)pppppiVar6;
  local_20 = (int ****)pppppiVar3;
  pppppiVar15 = (int *****)*pppppiVar13;
  if (pppppiVar15 != pppppiVar13) {
    pppppiVar3 = *(int ******)((int)param_1 + 0x78);
    *local_24 = (int ***)pppppiVar15;
    pppppiVar15[1] = local_24;
    *pppppiVar3 = (int ****)&local_28;
    *pppppiVar13 = (int ****)pppppiVar13;
    *(int ******)((int)param_1 + 0x78) = pppppiVar13;
    local_24 = (int ****)pppppiVar3;
  }
  *(undefined1 *)((int)param_1 + 0x68) = 1;
  *(char *)((int)param_1 + 0x69) = local_42;
LAB_0050e772:
  FUN_004e1cc0((LPCRITICAL_SECTION)((int)param_1 + 0x38));
  FUN_0050ba10((int *)&local_28);
  return;
}

