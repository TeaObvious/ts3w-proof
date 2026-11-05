/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_InsertCustomPathAtIndex. Export ordinal(s):
   668. Entry VA: 0x10555070. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600018A. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl
Route_InsertCustomPathAtIndex
          (uint param_1,int param_2,int *param_3,char param_4,char param_5,float param_6)

{
  float *pfVar1;
  int *piVar2;
  undefined4 *puVar3;
  int *piVar4;
  float *pfVar5;
  uint uVar6;
  undefined4 *puVar7;
  int *piVar8;
  float *pfVar9;
  int iVar10;
  undefined4 uVar11;
  int iVar12;
  int iVar13;
  int *unaff_EDI;
  bool bVar14;
  undefined1 auVar15 [16];
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  float *pfVar28;
  undefined8 uVar29;
  float *pfStack_64;
  float *pfStack_60;
  float *pfStack_5c;
  float *pfStack_58;
  int iStack_54;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined1 auStack_2c [16];
  
  piVar4 = (int *)FUN_1055b120();
                    /* 0x555070  668  Route_InsertCustomPathAtIndex */
  piVar8 = piVar4;
  if (DAT_10c78944 == (void *)0x0) {
LAB_105542c2:
    return (uint)piVar8 & 0xffffff00;
  }
  pfVar5 = (float *)FUN_1053c0f0(DAT_10c78944,param_1);
  piVar8 = (int *)0x0;
  if (pfVar5 == (float *)0x0) goto LAB_105542c2;
  pfStack_60 = pfVar5;
  (**(code **)((int)*pfVar5 + 0x10))();
  if ((*param_3 == 0) || (piVar4 == (int *)0x0)) {
    piVar8 = (int *)(**(code **)((int)*pfVar5 + 0x14))();
    goto LAB_105542c2;
  }
  pfStack_58 = (float *)0x0;
  fStack_48 = 0.0;
  (**(code **)(*piVar4 + 0x78))(*param_3,&pfStack_58,&fStack_48);
  uVar6 = iStack_54 / 3;
  if ((int)uVar6 < 2) {
    uVar6 = (**(code **)((int)*pfVar5 + 0x14))();
    return uVar6 & 0xffffff00;
  }
  puVar7 = (undefined4 *)FUN_10918eb0(400,"Routing/RoutingPathImp",0);
  if (puVar7 == (undefined4 *)0x0) {
    pfStack_58 = (float *)0x0;
  }
  else {
    uVar29 = FUN_10611ac0(puVar7);
    pfStack_58 = (float *)uVar29;
    if (pfStack_58 != (float *)0x0) {
      LOCK();
      pfStack_58[1] = (float)((int)pfStack_58[1] + 1);
      UNLOCK();
    }
  }
  pfVar5 = pfStack_58;
  pfStack_58[0x2c] = param_6;
  piVar8 = (int *)(**(code **)((int)*pfStack_58 + 0xdc))();
  FUN_10551550(piVar8,uVar6);
  fStack_4c = *pfStack_64;
  fStack_48 = pfStack_64[1];
  fStack_44 = pfStack_64[2];
  iVar12 = 0;
  pfVar28 = (float *)0x0;
  pfStack_60 = (float *)0x0;
  fStack_40 = fStack_4c;
  if (0 < (int)uVar6) {
    uStack_3c = 0;
    uStack_38 = 0;
    uStack_34 = 0;
    uStack_30 = 0;
    pfStack_5c = (float *)0x0;
    fVar25 = fStack_48;
    fVar26 = fStack_44;
    fVar27 = fStack_4c;
    do {
      fVar19 = 0.0;
      fVar18 = 0.0;
      fVar17 = 0.0;
      fVar16 = 0.0;
      if ((param_4 != '\0') ||
         (fVar22 = fVar17, fVar23 = fVar18, fVar24 = fVar19, fVar20 = 0.0, iVar12 < (int)(uVar6 - 1)
         )) {
        iVar13 = (iVar12 + 1) % (int)uVar6;
        fVar24 = pfStack_64[iVar13 * 3];
        fVar22 = pfStack_64[iVar13 * 3 + 1];
        fVar23 = pfStack_64[iVar13 * 3 + 2];
        fVar16 = fVar24 - fVar27;
        fVar17 = fVar22 - fVar25;
        fVar18 = fVar23 - fVar26;
        fVar19 = fVar24 - fVar27;
        fVar20 = fVar18 * fVar18 + fVar17 * fVar17 + fVar16 * fVar16;
        auVar15._4_4_ = fVar20;
        auVar15._0_4_ = fVar20;
        auVar15._8_4_ = fVar20;
        auVar15._12_4_ = fVar20;
        auStack_2c = sqrtps(auVar15,auVar15);
        fVar20 = (float)auStack_2c._0_4_;
        fStack_4c = fVar24;
        fStack_48 = fVar22;
        fStack_44 = fVar23;
        fStack_40 = fVar24;
        if (0.0 < (float)auStack_2c._0_4_) {
          fVar21 = DAT_10acb0d4 / (float)auStack_2c._0_4_;
          fVar16 = fVar21 * fVar16;
          fVar17 = fVar21 * fVar17;
          fVar18 = fVar21 * fVar18;
          fVar19 = fVar21 * fVar19;
        }
      }
      pfVar9 = (float *)(*piVar8 + (int)pfStack_5c);
      *pfVar9 = fVar27;
      pfVar9[1] = fVar25;
      pfVar9[2] = fVar26;
      pfVar9[3] = fVar27;
      pfVar9[8] = fVar20;
      iVar12 = iVar12 + 1;
      pfStack_5c = pfStack_5c + 0xc;
      pfVar9[4] = fVar16;
      pfVar9[5] = fVar17;
      pfVar9[6] = fVar18;
      pfVar9[7] = fVar19;
      pfVar9[9] = (float)pfVar28;
      pfVar28 = (float *)(fVar20 + (float)pfVar28);
      fVar25 = fVar22;
      fVar26 = fVar23;
      fVar27 = fVar24;
      pfStack_60 = pfVar28;
    } while (iVar12 < (int)uVar6);
  }
  (**(code **)((int)*pfVar5 + 0x130))(pfStack_60);
  FUN_1060ed70(pfVar5,'\0','\0');
  pfVar9 = (float *)(unaff_EDI + 0x38);
  iVar12 = 0;
  for (pfVar28 = (float *)unaff_EDI[0x38]; pfVar28 != pfVar9; pfVar28 = (float *)*pfVar28) {
    if (param_2 == 0) {
      if (pfVar28 != pfVar9) {
        pfVar1 = pfVar5 + 1;
        LOCK();
        *pfVar1 = (float)((int)*pfVar1 + 1);
        UNLOCK();
        pfStack_60 = pfVar5;
        FUN_105476e0(pfVar9,(int *)&pfStack_64,(int)pfVar28,(int *)&pfStack_60);
        LOCK();
        fVar25 = *pfVar1;
        *pfVar1 = (float)((int)*pfVar1 + -1);
        UNLOCK();
        if (fVar25 == 1.4013e-45) {
          LOCK();
          *pfVar1 = 1.4013e-45;
          UNLOCK();
          (**(code **)*pfVar5)(1);
        }
        goto LAB_10553ff9;
      }
      break;
    }
    param_2 = param_2 + -1;
    iVar12 = iVar12 + 1;
  }
  pfVar28 = pfVar5 + 1;
  LOCK();
  *pfVar28 = (float)((int)*pfVar28 + 1);
  UNLOCK();
  puVar7 = (undefined4 *)FUN_10918eb0(0xc,unaff_EDI[0x3a],0);
  if (puVar7 + 2 != (undefined4 *)0x0) {
    puVar7[2] = pfVar5;
    LOCK();
    *pfVar28 = (float)((int)*pfVar28 + 1);
    UNLOCK();
  }
  *puVar7 = pfVar9;
  puVar7[1] = unaff_EDI[0x39];
  *(undefined4 **)unaff_EDI[0x39] = puVar7;
  unaff_EDI[0x39] = (int)puVar7;
  LOCK();
  fVar25 = *pfVar28;
  *pfVar28 = (float)((int)*pfVar28 + -1);
  UNLOCK();
  if (fVar25 == 1.4013e-45) {
    LOCK();
    pfVar5[1] = 1.4013e-45;
    UNLOCK();
    (**(code **)*pfVar5)(1);
  }
LAB_10553ff9:
  if ((float *)*pfVar9 == pfVar9) {
    puVar7 = (undefined4 *)unaff_EDI[0x3b];
    if (puVar7 != (undefined4 *)0x0) {
      unaff_EDI[0x3b] = 0;
      piVar8 = puVar7 + 1;
      LOCK();
      iVar13 = *piVar8;
      *piVar8 = *piVar8 + -1;
      UNLOCK();
      if (iVar13 == 1) {
        LOCK();
        puVar7[1] = 1;
        UNLOCK();
        (**(code **)*puVar7)(1);
      }
    }
  }
  else {
    puVar7 = *(undefined4 **)((int)*pfVar9 + 8);
    puVar3 = (undefined4 *)unaff_EDI[0x3b];
    if (puVar7 != puVar3) {
      if (puVar7 != (undefined4 *)0x0) {
        LOCK();
        puVar7[1] = puVar7[1] + 1;
        UNLOCK();
      }
      unaff_EDI[0x3b] = (int)puVar7;
      if (puVar3 != (undefined4 *)0x0) {
        piVar8 = puVar3 + 1;
        LOCK();
        iVar13 = *piVar8;
        *piVar8 = *piVar8 + -1;
        UNLOCK();
        if (iVar13 == 1) {
          LOCK();
          *piVar8 = 1;
          UNLOCK();
          (**(code **)*puVar3)(1);
        }
      }
    }
  }
  pfVar28 = (float *)*pfVar9;
  if ((float *)*pfVar9 != pfVar9) {
    do {
      pfStack_64 = pfVar28;
      piVar8 = (int *)pfStack_64[2];
      if (piVar8 != (int *)0x0) {
        LOCK();
        piVar8[1] = piVar8[1] + 1;
        UNLOCK();
      }
      (**(code **)(*piVar8 + 0x10))(unaff_EDI + 0x56);
      iVar10 = (**(code **)(*piVar8 + 0xc))();
      iVar13 = unaff_EDI[0xf];
      puVar7 = (undefined4 *)FUN_1060e130(iVar10);
      FUN_10650fa0(piVar8,puVar7,iVar13);
      piVar4 = piVar8 + 1;
      LOCK();
      iVar13 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar13 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        (**(code **)*piVar8)(1);
      }
      pfVar28 = (float *)*pfStack_64;
    } while ((float *)*pfStack_64 != pfVar9);
    pfStack_64 = (float *)*pfVar9;
    for (pfStack_60 = (float *)*pfStack_64; pfStack_60 != pfVar9; pfStack_60 = (float *)*pfStack_60)
    {
      piVar8 = (int *)pfStack_64[2];
      if (piVar8 != (int *)0x0) {
        LOCK();
        piVar8[1] = piVar8[1] + 1;
        UNLOCK();
      }
      piVar4 = (int *)pfStack_60[2];
      if (piVar4 != (int *)0x0) {
        LOCK();
        piVar4[1] = piVar4[1] + 1;
        UNLOCK();
      }
      (**(code **)(*piVar8 + 0x78))(piVar4);
      (**(code **)(*piVar4 + 0x80))(piVar8);
      piVar2 = piVar4 + 1;
      LOCK();
      iVar13 = *piVar2;
      *piVar2 = *piVar2 + -1;
      UNLOCK();
      if (iVar13 == 1) {
        LOCK();
        *piVar2 = 1;
        UNLOCK();
        (**(code **)*piVar4)(1);
      }
      piVar4 = piVar8 + 1;
      LOCK();
      iVar13 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar13 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        (**(code **)*piVar8)(1);
      }
      pfStack_64 = (float *)*pfStack_64;
      pfVar5 = pfStack_5c;
    }
  }
  if (param_5 != '\0') {
    FUN_10541280(unaff_EDI,'\0');
  }
  FUN_105415a0((int)unaff_EDI);
  if (param_4 == '\0') {
    iVar13 = unaff_EDI[0x3c];
    if (iVar13 < 0) goto LAB_10554287;
    if (iVar12 <= iVar13) {
      iVar12 = iVar13 + 1;
      bVar14 = iVar12 == iVar13;
      goto LAB_10554278;
    }
  }
  else {
    bVar14 = iVar12 == unaff_EDI[0x3c];
LAB_10554278:
    if (bVar14) goto LAB_10554287;
    unaff_EDI[0x3c] = iVar12;
  }
  FUN_10548960(unaff_EDI);
LAB_10554287:
  pfVar28 = pfVar5 + 1;
  LOCK();
  fVar25 = *pfVar28;
  *pfVar28 = (float)((int)*pfVar28 + -1);
  UNLOCK();
  if (fVar25 == 1.4013e-45) {
    LOCK();
    *pfVar28 = 1.4013e-45;
    UNLOCK();
    (**(code **)*pfVar5)(1);
  }
  uVar11 = (**(code **)(*unaff_EDI + 0x14))();
  return CONCAT31((int3)((uint)uVar11 >> 8),1);
}

