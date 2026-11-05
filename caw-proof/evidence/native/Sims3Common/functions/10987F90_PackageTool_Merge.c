/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: PackageTool_Merge. Export ordinal(s): 2002. Entry
   VA: 0x10987f90. Original managed P/Invoke MethodDef(s): WorldBuilderCS:0x06000167. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl PackageTool_Merge(undefined4 param_1,short *param_2,short *param_3,short *param_4)

{
  int *****pppppiVar1;
  ushort uVar2;
  short sVar3;
  size_t sVar4;
  int ****ppppiVar5;
  int *piVar6;
  char cVar7;
  int ****ppppiVar8;
  int ***pppiVar9;
  int **ppiVar10;
  ushort *puVar11;
  ushort *puVar12;
  int *piVar13;
  ushort *puVar14;
  int *****pppppiVar15;
  undefined4 *puVar16;
  int *this;
  int *piVar17;
  int *****pppppiVar18;
  void *this_00;
  void *this_01;
  void *this_02;
  int iVar19;
  int *piVar20;
  wint_t *pwVar21;
  bool bVar22;
  char **ppcVar23;
  byte bVar24;
  uint uVar25;
  wint_t *pwVar26;
  int ****local_f08;
  int ****local_f04;
  int ****local_f00;
  int *local_efc;
  int ***local_ef8;
  int ****local_ef4;
  int ****local_ef0;
  char *local_eec;
  int *piStack_ee8;
  int ****local_ee4;
  int ****local_ee0;
  int ****local_edc;
  char *local_ed8;
  ushort *local_ed4;
  ushort *local_ed0;
  undefined2 *local_ecc;
  char *local_ec8;
  int local_ec4;
  undefined4 local_ec0;
  int local_ebc;
  char *local_eb8;
  int local_eb4;
  undefined4 local_eb0;
  undefined8 local_eac;
  undefined4 local_ea4;
  undefined4 local_ea0;
  undefined4 local_e9c;
  char *local_e98;
  undefined4 local_e94;
  undefined4 local_e90;
  undefined4 local_e8c;
  undefined4 local_e88;
  int ****local_e84;
  int ****local_e80;
  undefined4 local_e7c;
  undefined4 local_e78;
  char *local_e74;
  undefined8 uStack_e70;
  undefined4 uStack_e68;
  undefined4 uStack_e64;
  undefined2 *local_e58;
  undefined1 local_e50 [24];
  int local_e38 [130];
  wint_t awStack_c30 [260];
  short local_a28 [520];
  ushort local_618 [260];
  undefined1 auStack_410 [1040];
  
                    /* 0x987f90  2002  PackageTool_Merge */
  local_ec4 = 0;
  local_ec0 = 0;
  local_ebc = 0;
  local_eb8 = "Scratch/PackageToolWrap/inputFile";
  FUN_1006a620(&local_ec4,param_2);
  local_ea4 = 0;
  local_ea0 = 0;
  local_e9c = 0;
  local_e98 = "Scratch/PackageToolWrap/layer";
  FUN_1006a620(&local_ea4,param_3);
  local_eb4 = 0;
  local_eb0 = 0;
  local_eac = 0x10b96c5000000000;
  FUN_1006a620(&local_eb4,param_4);
  local_ef4 = (int ****)&local_ef4;
  local_eec = "Scratch/PackageToolWrap/srcPatterns";
  local_ef0 = local_ef4;
  ppppiVar8 = (int ****)FUN_10918eb0(0x18,"Scratch/PackageToolWrap/srcPatterns",0);
  if (ppppiVar8 + 2 != (int ****)0x0) {
    FUN_1006a320(ppppiVar8 + 2,&local_ec4);
  }
  *ppppiVar8 = (int ***)&local_ef4;
  ppppiVar8[1] = (int ***)local_ef0;
  *local_ef0 = (int ***)ppppiVar8;
  local_ef0 = ppppiVar8;
  pppiVar9 = (int ***)FUN_10918eb0(0x18,local_eec,0);
  if (pppiVar9 + 2 != (int ***)0x0) {
    FUN_1006a320(pppiVar9 + 2,&local_ea4);
  }
  *pppiVar9 = (int **)&local_ef4;
  pppiVar9[1] = (int **)local_ef0;
  *local_ef0 = pppiVar9;
  local_ef0 = (int ****)pppiVar9;
  ppiVar10 = (int **)FUN_10918eb0(0x18,local_eec,0);
  if (ppiVar10 + 2 != (int **)0x0) {
    FUN_1006a320(ppiVar10 + 2,&local_eb4);
  }
  *ppiVar10 = (int *)&local_ef4;
  ppiVar10[1] = (int *)local_ef0;
  *local_ef0 = (int ***)ppiVar10;
  local_ee0 = (int ****)&local_ee0;
  local_ed8 = "Scratch/PackgeToolWrap/srcPackages";
  local_ef0 = (int ****)ppiVar10;
  local_edc = local_ee0;
  if ((int *****)local_ef4 != &local_ef4) {
LAB_10988135:
    local_ec8 = "Scratch/PackageToolWrap/pat";
    local_ed4 = (ushort *)&_Dst_10ca8244;
    local_ed0 = (ushort *)&_Dst_10ca8244;
    local_ecc = &DAT_10ca8246;
    puVar11 = FUN_109218d0(local_618,(ushort *)local_ef4[2],(ushort *)0x0,5);
    uVar2 = *puVar11;
    puVar12 = puVar11;
    while (uVar2 != 0) {
      puVar12 = puVar12 + 1;
      uVar2 = *puVar12;
    }
    FUN_1001f8c0(&local_ed4,puVar11,(int *)(puVar11 + ((int)puVar12 - (int)puVar11 >> 1)));
    puVar11 = local_ed4;
    puVar12 = local_ed4;
    if ((int)local_ed0 - (int)local_ed4 >> 1 != 0) {
      for (; puVar12 != local_ed0; puVar12 = puVar12 + 1) {
        if (*puVar12 == 0x2a) {
          if ((puVar12 != local_ed0) &&
             (puVar14 = local_ed4, (int)puVar12 - (int)local_ed4 >> 1 != -1)) goto LAB_10988318;
          break;
        }
      }
    }
    goto LAB_109881b1;
  }
LAB_109885db:
  FUN_10926ca0(local_e50,5,'\x01');
  puVar16 = FUN_10918fe0(0x398);
  if (puVar16 == (undefined4 *)0x0) {
    piVar13 = (int *)0x0;
  }
  else {
    piVar13 = FUN_108defd0(puVar16,(short *)0x0,0);
    if (piVar13 != (int *)0x0) {
      (**(code **)piVar13[1])();
    }
  }
  FUN_10948cc0(piVar13,2);
  cVar7 = (**(code **)(*piVar13 + 4))();
  if (((cVar7 == '\0') || (cVar7 = (**(code **)(*piVar13 + 0x2c))(), cVar7 == '\0')) ||
     (cVar7 = (**(code **)(*piVar13 + 0x18))(2), cVar7 == '\0')) {
    (**(code **)(piVar13[1] + 4))();
    FUN_107d1bc0(&local_ef8);
    FUN_107d1bc0((undefined4 *)&stack0xfffff0f4);
    if ((2 < (int)(local_ec4 - (int)local_ecc & 0xfffffffeU)) && (local_ecc != (undefined2 *)0x0)) {
      FUN_10918e90((int)local_ecc);
    }
    if ((2 < (int)(local_eb4 - local_ebc & 0xfffffffeU)) && (local_ebc != 0)) {
      FUN_10918e90(local_ebc);
    }
    uVar25 = (int)local_ed4 - (int)local_edc;
    goto joined_r0x10988e10;
  }
  puVar16 = (undefined4 *)FUN_10918eb0(0x48,"KeyNameMap",0);
  if (puVar16 == (undefined4 *)0x0) {
    piVar20 = (int *)0x0;
  }
  else {
    piVar20 = FUN_10522410(puVar16);
    if (piVar20 != (int *)0x0) {
      (**(code **)*piVar20)();
    }
  }
  puVar16 = (undefined4 *)FUN_10918eb0(0x50,"SignatureMap",0);
  if (puVar16 == (undefined4 *)0x0) {
    this = (int *)0x0;
  }
  else {
    this = (int *)FUN_10244430(puVar16);
  }
  puVar16 = (undefined4 *)FUN_10918eb0(0x50,"SignatureMap",0);
  if (puVar16 == (undefined4 *)0x0) {
    local_ee4 = (int ****)0x0;
  }
  else {
    local_ee4 = (int ****)FUN_10244430(puVar16);
  }
  this[0x12] = 0x2dc343f;
  local_ee4[0x12] = (int ***)0x736884f1;
  local_ed4 = (ushort *)0x0;
  local_ed0 = (ushort *)0x0;
  local_ecc = (undefined2 *)0x0;
  local_ec8 = "Scratch/PackageToolWrap/copyBuffer";
  local_e94 = 0;
  local_e90 = 0;
  local_f08 = local_ee0;
  if ((int *****)local_ee0 != &local_ee0) {
    do {
      local_f04 = (int ****)&local_f04;
      local_efc = (int *)0x0;
      local_f00 = local_f04;
      puVar16 = FUN_10918fe0(0x398);
      if (puVar16 == (undefined4 *)0x0) {
        piVar17 = (int *)0x0;
      }
      else {
        piVar17 = FUN_108defd0(puVar16,(short *)0x0,0);
      }
      piVar6 = local_efc;
      if (piVar17 != local_efc) {
        piVar6 = piVar17;
        if ((int *****)local_f00 == &local_f04) {
          if (local_efc != (int *)0x0) {
            (**(code **)*local_efc)();
          }
        }
        else {
          local_f04[1] = (int ***)local_f00;
          *local_f00 = (int ***)local_f04;
          local_f04 = (int ****)&local_f04;
          local_f00 = local_f04;
        }
      }
      local_efc = piVar6;
      cVar7 = (**(code **)(*local_efc + 4))();
      if (((cVar7 == '\0') || (cVar7 = (**(code **)(*local_efc + 0x2c))(), cVar7 == '\0')) ||
         (cVar7 = (**(code **)(*local_efc + 0x18))(1), cVar7 == '\0')) {
        if (local_efc != (int *)0x0) {
          if ((int *****)local_f00 == &local_f04) {
            (**(code **)*local_efc)();
            local_efc = (int *)0x0;
          }
          else {
            local_f04[1] = (int ***)local_f00;
            *local_f00 = (int ***)local_f04;
            local_f04 = (int ****)&local_f04;
            local_efc = (int *)0x0;
            local_f00 = local_f04;
          }
        }
LAB_1098894a:
        if (local_ed4 != (ushort *)0x0) {
          FUN_10918e90((int)local_ed4);
        }
        if (piVar20 != (int *)0x0) {
          (**(code **)(*piVar20 + 4))();
        }
        (**(code **)(piVar13[1] + 4))();
        goto LAB_10988973;
      }
      if (piVar20 != (int *)0x0) {
        (**(code **)*piVar20)(piVar20);
      }
      iVar19 = FUN_10987840(piVar13,local_efc,this);
      (**(code **)(*local_efc + 8))();
      FUN_109871a0((int *)&local_f04);
      if (iVar19 < 0) goto LAB_1098894a;
      local_f08 = (int ****)*local_f08;
    } while ((int *****)local_f08 != &local_ee0);
  }
  puVar12 = local_ed4;
  piStack_ee8 = (int *)0x0;
  puVar11 = (ushort *)(**(code **)(*piVar13 + 0x28))();
  FUN_10922390(auStack_410,puVar11);
  FUN_10922040(auStack_410,awStack_c30,0x100);
  uStack_e70 = FUN_105c3980(awStack_c30);
  piVar17 = piStack_ee8;
  uStack_e68 = 0x166038c;
  uStack_e64 = 0;
  if (piStack_ee8 != (int *)0x0) {
    piStack_ee8 = (int *)0x0;
    (**(code **)(*piVar17 + 8))();
  }
  cVar7 = (**(code **)(*piVar13 + 0x34))(&uStack_e70,&piStack_ee8,3,2);
  if (cVar7 == '\0') {
    if ((int *****)local_f00 != (int *****)0x0) {
      (*(code *)(*local_f00)[2])();
    }
    if (puVar12 != (ushort *)0x0) {
      FUN_10918e90((int)puVar12);
    }
    if (piVar20 != (int *)0x0) {
      (**(code **)(*piVar20 + 4))();
    }
LAB_1098893d:
    (**(code **)(piVar13[1] + 4))();
  }
  else {
    piVar17 = (int *)(*(code *)(*local_f00)[6])();
    FUN_10521a80(piVar20,piVar17);
    ppcVar23 = &local_eec;
    piVar17 = (int *)(*(code *)(*local_f00)[6])();
    FUN_10987780(this_00,piVar17,(int *)ppcVar23);
    (*(code *)(*local_f00)[8])();
    if (piVar20 != (int *)0x0) {
      (**(code **)(*piVar20 + 4))();
    }
    pwVar21 = (wint_t *)&_Dst_10ca8244;
    pwVar26 = (wint_t *)&_Dst_10ca8244;
    if (this[0xd] == 0) {
LAB_10988bca:
      if (local_efc[0xd] == 0) {
LAB_10988cc1:
        (**(code **)(*this + 8))(1);
        (*(code *)(*local_f00)[2])(1);
        (**(code **)(*piVar13 + 8))();
        if ((2 < (int)((int)&DAT_10ca8246 - (int)pwVar21 & 0xfffffffeU)) &&
           (pwVar21 != (wint_t *)0x0)) {
          FUN_10918e90((int)pwVar21);
        }
        if ((int *****)local_f08 != (int *****)0x0) {
          (*(code *)(*local_f08)[2])();
        }
        if ((int *****)local_ef4 != (int *****)0x0) {
          FUN_10918e90((int)local_ef4);
        }
        (**(code **)(piVar13[1] + 4))();
        FUN_107d1bc0(&local_f00);
        FUN_107d1bc0((undefined4 *)&stack0xfffff0ec);
        if ((2 < (int)((int)local_ecc - (int)local_ed4 & 0xfffffffeU)) &&
           (local_ed4 != (ushort *)0x0)) {
          FUN_10918e90((int)local_ed4);
        }
        if ((2 < (int)(local_ebc - local_ec4 & 0xfffffffeU)) && (local_ec4 != 0)) {
          FUN_10918e90(local_ec4);
        }
        if ((2 < (int)((int)local_edc - (int)local_ee4 & 0xfffffffeU)) &&
           ((int *****)local_ee4 != (int *****)0x0)) {
          local_ee4 = (int ****)FUN_10918e90((int)local_ee4);
        }
        return CONCAT31((int3)((uint)local_ee4 >> 8),1);
      }
      piVar17 = (int *)0x0;
      pwVar21 = pwVar26;
      FUN_1006aff0((undefined4 *)&stack0xfffff0e4,(ushort *)L"VisualProxySignatures_%s");
      local_eac = FUN_105c3980(pwVar21);
      local_ea4 = 0x94c5d14a;
      local_ea0 = 1;
      piVar20 = (int *)0x0;
      if (piVar17 != (int *)0x0) {
        piVar20 = (int *)0x0;
        (**(code **)(*piVar17 + 8))();
      }
      cVar7 = (**(code **)(*piVar13 + 0x34))(&local_eac,&stack0xfffff0e0,3,2,1,0);
      if (cVar7 != '\0') {
        piVar17 = (int *)(**(code **)(*piVar20 + 0x18))();
        FUN_1072d520(local_efc,piVar17);
        ppcVar23 = &local_eec;
        piVar17 = (int *)(**(code **)(*piVar20 + 0x18))();
        FUN_10987780(this_02,piVar17,(int *)ppcVar23);
        (**(code **)(*piVar20 + 0x20))();
        if (piVar20 != (int *)0x0) {
          (**(code **)(*piVar20 + 8))();
        }
        goto LAB_10988cc1;
      }
      if (piVar20 != (int *)0x0) {
        (**(code **)(*piVar20 + 8))();
      }
      uVar25 = (int)&DAT_10ca8246 - (int)pwVar21 & 0xfffffffe;
      iVar19 = uVar25 - 2;
      bVar22 = iVar19 == 0;
    }
    else {
      piVar17 = (int *)0x0;
      pwVar21 = pwVar26;
      FUN_1006aff0((undefined4 *)&stack0xfffff0e4,(ushort *)L"GameObjectSignatures_%s");
      pwVar26 = pwVar21;
      local_eac = FUN_105c3980(pwVar21);
      local_ea4 = 0x94c5d14a;
      local_ea0 = 1;
      piVar20 = (int *)0x0;
      if (piVar17 != (int *)0x0) {
        piVar20 = (int *)0x0;
        (**(code **)(*piVar17 + 8))();
      }
      cVar7 = (**(code **)(*piVar13 + 0x34))(&local_eac,&stack0xfffff0e0,3,2,1,0);
      if (cVar7 != '\0') {
        piVar17 = (int *)(**(code **)(*piVar20 + 0x18))();
        FUN_1072d520(this,piVar17);
        ppcVar23 = &local_eec;
        piVar17 = (int *)(**(code **)(*piVar20 + 0x18))();
        FUN_10987780(this_01,piVar17,(int *)ppcVar23);
        (**(code **)(*piVar20 + 0x20))();
        if (piVar20 != (int *)0x0) {
          (**(code **)(*piVar20 + 8))();
        }
        goto LAB_10988bca;
      }
      if (piVar20 != (int *)0x0) {
        (**(code **)(*piVar20 + 8))();
      }
      uVar25 = (int)&DAT_10ca8246 - (int)pwVar21 & 0xfffffffe;
      iVar19 = uVar25 - 2;
      bVar22 = uVar25 == 2;
    }
    if ((!bVar22 && SBORROW4(uVar25,2) == iVar19 < 0) && (pwVar21 != (wint_t *)0x0)) {
      FUN_10918e90((int)pwVar21);
    }
    if ((int *****)local_f00 != (int *****)0x0) {
      (*(code *)(*local_f00)[2])();
    }
    if (local_eec == (char *)0x0) goto LAB_1098893d;
    FUN_10918e90((int)local_eec);
    (**(code **)(piVar13[1] + 4))();
  }
LAB_10988973:
  FUN_107d1bc0(&local_ef8);
  FUN_107d1bc0((undefined4 *)&stack0xfffff0f4);
  if ((2 < (int)(local_ec4 - (int)local_ecc & 0xfffffffeU)) && (local_ecc != (undefined2 *)0x0)) {
    FUN_10918e90((int)local_ecc);
  }
  if ((2 < (int)(local_eb4 - local_ebc & 0xfffffffeU)) && (local_ebc != 0)) {
    FUN_10918e90(local_ebc);
  }
  uVar25 = (int)local_ed4 - (int)local_edc;
joined_r0x10988e10:
  pppppiVar18 = (int *****)local_edc;
  if ((2 < (int)(uVar25 & 0xfffffffe)) &&
     (pppppiVar18 = (int *****)0x0, (int *****)local_edc != (int *****)0x0)) {
    pppppiVar18 = (int *****)FUN_10918e90((int)local_edc);
  }
  return (uint)pppppiVar18 & 0xffffff00;
  while (puVar14 = puVar14 + 1, puVar14 != local_ed0) {
LAB_10988318:
    if (*puVar14 == 0x3f) {
      if ((puVar14 != local_ed0) && ((int)puVar14 - (int)local_ed4 >> 1 != -1)) {
        pppppiVar18 = (int *****)FUN_10918eb0(0x18,local_ed8,0);
        if (pppppiVar18 + 2 != (int *****)0x0) {
          FUN_1006a320(pppppiVar18 + 2,&local_ed4);
        }
        *pppppiVar18 = (int ****)&local_ee0;
        pppppiVar18[1] = local_edc;
        *local_edc = (int ***)pppppiVar18;
        local_edc = (int ****)pppppiVar18;
        goto LAB_10988575;
      }
      break;
    }
  }
LAB_109881b1:
  local_e94 = 0;
  local_e90 = 0;
  local_e8c = 0;
  local_e88 = 0;
  local_e7c = FUN_1090eca0();
  local_e84 = (int ****)&local_e84;
  local_e78 = 0;
  local_e74 = "Scratch/PackageToolWrap/entries";
  local_e80 = local_e84;
  FUN_10922390(local_a28,puVar11);
  FUN_10922170(local_a28,local_e38,0x104);
  uVar25 = 0x100000;
  bVar24 = 2;
  puVar12 = (ushort *)FUN_10922000(local_a28);
  FUN_1090f280(local_e38,(int *)&local_e84,puVar12,bVar24,uVar25);
  local_ee4 = local_e84;
  pppppiVar18 = (int *****)local_e84;
  if ((int *****)local_e84 != &local_e84) {
    do {
      piVar13 = local_e38;
      sVar3 = (short)local_e38[0];
      while (sVar3 != 0) {
        piVar13 = (int *)((int)piVar13 + 2);
        sVar3 = *(short *)piVar13;
      }
      iVar19 = (int)local_e38 + (((int)piVar13 - (int)local_e38 >> 1) * 2 - (int)local_e38) >> 1;
      uVar25 = iVar19 + 1;
      local_ee4 = (int ****)pppppiVar18;
      if (uVar25 < 2) {
        piVar13 = (int *)&_Dst_10ca8244;
        local_e58 = &DAT_10ca8246;
      }
      else {
        uVar25 = uVar25 * 2;
        piVar13 = (int *)FUN_10918eb0(uVar25,"Scratch/PackageToolWrap/basePath",0);
        local_e58 = (undefined2 *)((int)piVar13 + uVar25);
      }
      sVar4 = iVar19 * 2;
      memmove(piVar13,local_e38,sVar4);
      piVar20 = (int *)(sVar4 + (int)piVar13);
      *(undefined2 *)piVar20 = 0;
      uVar25 = ((int)piVar20 - (int)piVar13 >> 1) + ((int)pppppiVar18[4] - (int)pppppiVar18[3] >> 1)
               + 1;
      local_ef8 = (int ***)0x10b96ba8;
      if (uVar25 < 2) {
        local_f04 = (int ****)&_Dst_10ca8244;
        local_efc = (int *)&DAT_10ca8246;
      }
      else {
        uVar25 = uVar25 * 2;
        local_f04 = (int ****)FUN_10918eb0(uVar25,"Scratch/PackageToolWrap/basePath",0);
        local_efc = (int *)((int)local_f04 + uVar25);
      }
      *(undefined2 *)local_f04 = 0;
      local_f00 = local_f04;
      FUN_1001f3b0(&local_f04,piVar13,piVar20);
      FUN_1001f3b0(&local_f04,(int *)pppppiVar18[3],(int *)pppppiVar18[4]);
      pppppiVar15 = (int *****)FUN_10918eb0(0x18,local_ed8,0);
      pppppiVar1 = pppppiVar15 + 2;
      if (pppppiVar1 != (int *****)0x0) {
        iVar19 = (int)local_f00 - (int)local_f04 >> 1;
        *pppppiVar1 = (int ****)0x0;
        pppppiVar15[3] = (int ****)0x0;
        pppppiVar15[4] = (int ****)0x0;
        uVar25 = iVar19 + 1;
        pppppiVar15[5] = (int ****)local_ef8;
        if (uVar25 < 2) {
          *pppppiVar1 = (int ****)&_Dst_10ca8244;
          pppppiVar15[3] = (int ****)&_Dst_10ca8244;
          pppppiVar15[4] = (int ****)&DAT_10ca8246;
        }
        else {
          uVar25 = uVar25 * 2;
          ppppiVar8 = (int ****)FUN_10918eb0(uVar25,local_ef8,0);
          *pppppiVar1 = ppppiVar8;
          pppppiVar15[3] = ppppiVar8;
          pppppiVar15[4] = (int ****)((int)ppppiVar8 + uVar25);
        }
        ppppiVar8 = *pppppiVar1;
        sVar4 = iVar19 * 2;
        memmove(ppppiVar8,local_f04,sVar4);
        ppppiVar8 = (int ****)((int)ppppiVar8 + sVar4);
        pppppiVar15[3] = ppppiVar8;
        *(undefined2 *)ppppiVar8 = 0;
        pppppiVar18 = (int *****)local_ee4;
      }
      *pppppiVar15 = (int ****)&local_ee0;
      pppppiVar15[1] = local_edc;
      *local_edc = (int ***)pppppiVar15;
      local_edc = (int ****)pppppiVar15;
      if ((2 < (int)((int)local_efc - (int)local_f04 & 0xfffffffeU)) &&
         ((int *****)local_f04 != (int *****)0x0)) {
        FUN_10918e90((int)local_f04);
      }
      if ((2 < (int)((int)local_e58 - (int)piVar13 & 0xfffffffeU)) && (piVar13 != (int *)0x0)) {
        FUN_10918e90((int)piVar13);
      }
      local_ee4 = *pppppiVar18;
      pppppiVar18 = (int *****)local_ee4;
    } while ((int *****)local_ee4 != &local_e84);
  }
  FUN_10072310(&local_e84);
  puVar11 = local_ed4;
LAB_10988575:
  ppppiVar5 = local_ef4;
  *local_ef4[1] = (int **)*local_ef4;
  (*local_ef4)[1] = (int **)local_ef4[1];
  ppppiVar8 = (int ****)local_ef4[2];
  if ((2 < (int)((int)local_ef4[4] - (int)ppppiVar8 & 0xfffffffeU)) && (ppppiVar8 != (int ****)0x0))
  {
    FUN_10918e90((int)ppppiVar8);
  }
  FUN_10918e90((int)ppppiVar5);
  if ((2 < (int)((int)local_ecc - (int)puVar11 & 0xfffffffeU)) && (puVar11 != (ushort *)0x0)) {
    FUN_10918e90((int)puVar11);
  }
  if ((int *****)local_ef4 == &local_ef4) goto LAB_109885db;
  goto LAB_10988135;
}

