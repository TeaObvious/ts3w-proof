/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetPickInfoImpl. Export ordinal(s):
   1108. Entry VA: 0x105716c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006E1. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl
UIManager_GetPickInfoImpl
          (uint param_1,undefined4 *param_2,undefined4 *param_3,uint *param_4,int *param_5,
          float *param_6,float *param_7,undefined4 *param_8)

{
  float *pfVar1;
  float fVar2;
  bool bVar3;
  bool bVar4;
  uint *puVar5;
  byte bVar6;
  char cVar7;
  int *piVar8;
  int iVar9;
  undefined4 uVar10;
  int iVar11;
  uint uVar12;
  void *pvVar13;
  float *pfVar14;
  float10 fVar15;
  float fVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  float fVar20;
  float fVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  undefined8 uVar25;
  longlong lVar26;
  char cStack_1e4;
  undefined1 uStack_1e3;
  undefined1 uStack_1e2;
  undefined1 uStack_1e1;
  undefined1 uStack_1e0;
  undefined1 uStack_1df;
  undefined4 uStack_1dc;
  float fStack_1d8;
  float fStack_1d4;
  float fStack_1d0;
  float fStack_1cc;
  float fStack_1c8;
  float fStack_1c4;
  float fStack_1c0;
  float fStack_1bc;
  char acStack_1b4 [8];
  void *pvStack_1ac;
  float fStack_1a8;
  float fStack_1a4;
  float fStack_1a0;
  float fStack_19c;
  float fStack_198;
  float fStack_194;
  float fStack_190;
  float fStack_18c;
  void *pvStack_17c;
  float fStack_178;
  float fStack_174;
  float fStack_170;
  float fStack_16c;
  float fStack_160;
  float fStack_15c;
  int iStack_158;
  float fStack_154;
  float fStack_150;
  undefined4 uStack_14c;
  uint auStack_148 [3];
  void *pvStack_13c;
  float fStack_138;
  float fStack_134;
  uint uStack_130;
  float fStack_12c;
  float fStack_128;
  uint uStack_124;
  uint uStack_120;
  uint uStack_11c;
  float fStack_118;
  float fStack_114;
  float fStack_110;
  float fStack_10c;
  undefined1 auStack_108 [16];
  undefined1 auStack_f8 [16];
  float afStack_e8 [4];
  float afStack_d8 [8];
  float afStack_b8 [4];
  float afStack_a8 [12];
  float afStack_78 [8];
  uint auStack_58 [21];
  
  piVar8 = (int *)FUN_1055b120();
  if ((param_1 & 0xff000000) != 0x30000000) {
    return;
  }
  piVar8 = (int *)(**(code **)(*piVar8 + 0xcc))(param_1);
  if (piVar8 == (int *)0x0) {
    return;
  }
  iVar9 = (**(code **)(*piVar8 + 0xc))(0x39a436f);
  if (iVar9 == 0) {
    return;
  }
  pfVar1 = (float *)(iVar9 + 0x280);
  *param_2 = *(undefined4 *)(iVar9 + 0x29c);
  *param_3 = *(undefined4 *)(iVar9 + 0x2a0);
  *param_4 = *(uint *)(iVar9 + 0x290);
  param_4[1] = *(uint *)(iVar9 + 0x294);
  *param_5 = 0;
  *param_8 = *(undefined4 *)(iVar9 + 0x2a4);
  *param_6 = *pfVar1;
  param_6[1] = *(float *)(iVar9 + 0x284);
  fStack_198 = *pfVar1;
  fStack_194 = *(float *)(iVar9 + 0x284);
  fStack_190 = *(float *)(iVar9 + 0x288);
  fStack_18c = *(float *)(iVar9 + 0x28c);
  param_6[2] = fStack_190;
  uVar12 = *(uint *)(iVar9 + 0x298);
  if (uVar12 == 0) {
    return;
  }
  bVar4 = false;
  if ((uVar12 & 0x1000000) == 0) {
    if ((uVar12 & 0x200000) == 0) {
      if ((uVar12 & 0x10802000) == 0) {
        if ((uVar12 & 0x40400000) == 0x40400000) {
          fStack_1c8 = *pfVar1;
          fStack_1c4 = *(float *)(iVar9 + 0x284);
          fStack_1c0 = *(float *)(iVar9 + 0x288);
          fStack_1bc = *(float *)(iVar9 + 0x28c);
          fStack_1a8 = fStack_1c8;
          fStack_1a4 = fStack_1c4;
          fStack_1a0 = fStack_1c0;
          fStack_19c = fStack_1bc;
          pvVar13 = FUN_1023d070(DAT_10c700c4,fStack_1c8,fStack_1c0);
          fVar17 = DAT_10aae184;
          if (pvVar13 != (void *)0x0) {
            *param_5 = 0x10;
            fStack_12c = fVar17;
            fStack_128 = fVar17;
            uStack_124 = 0;
            FUN_100a30e0(pvVar13,pfVar1,&fStack_12c);
            *param_4 = uStack_124;
            param_4[1] = (int)uStack_124 >> 0x1f;
          }
        }
        else if ((uVar12 & 0x404000) == 0) {
          if ((uVar12 & 0x8000000) == 0) {
            if ((uVar12 & 0x10000) == 0) {
              if ((uVar12 & 0x40000) == 0) {
                if ((uVar12 & 0x2000000) == 0) {
                  if (((uVar12 & 0x8000) == 0) || ((uVar12 & 0x40000000) != 0)) {
                    if (((uVar12 & 0x8000) != 0) && ((uVar12 & 0x40000000) != 0)) {
                      auStack_148[1] = 0;
                      uVar12 = FUN_100c5270(pfVar1,auStack_148 + 1,auStack_148);
                      if ((char)uVar12 != '\0') {
                        *param_5 = 0xf;
                        *param_4 = auStack_148[0];
                        param_4[1] = 0;
                        goto LAB_1057087b;
                      }
                    }
                  }
                  else {
                    uVar10 = FUN_100c7e80(pfVar1,(undefined4 *)0x0,(undefined4 *)0x0,&uStack_120);
                    if ((char)uVar10 != '\0') {
                      *param_5 = 2;
                      *param_4 = uStack_120;
                      param_4[1] = uStack_11c;
                      *param_8 = 0xe;
                      goto LAB_1057087b;
                    }
                  }
                  *param_5 = 1;
                }
                else {
                  *param_5 = 2;
                }
              }
              else if (*(int *)(iVar9 + 0x290) == 0 && *(int *)(iVar9 + 0x294) == 0) {
                *param_5 = 10;
              }
              else if ((*(int *)(iVar9 + 0x290) == 1) && (*(int *)(iVar9 + 0x294) == 0)) {
                *param_5 = 0xc;
                if (DAT_10c700c4 == (void *)0x0) {
                  pvVar13 = (void *)0x0;
                }
                else {
                  fStack_1c8 = *pfVar1;
                  fStack_1c4 = *(float *)(iVar9 + 0x284);
                  fStack_1c0 = *(float *)(iVar9 + 0x288);
                  fStack_1bc = *(float *)(iVar9 + 0x28c);
                  fStack_1a8 = fStack_1c8;
                  fStack_1a4 = fStack_1c4;
                  fStack_1a0 = fStack_1c0;
                  fStack_19c = fStack_1bc;
                  pvVar13 = FUN_1023d070(DAT_10c700c4,fStack_1c8,fStack_1c0);
                }
                lVar26 = FUN_102a6a70(pvVar13,(float *)0x0);
                if (lVar26 == 0) {
                  uVar10 = FUN_102a6000(pvVar13,pfVar1,0xf,afStack_b8);
                  if ((char)uVar10 != '\0') {
                    acStack_1b4[0] = -1;
                    acStack_1b4[1] = 0xff;
                    acStack_1b4[3] = 0xff;
                    acStack_1b4[4] = 0xff;
                    pvStack_17c = (void *)0x0;
                    acStack_1b4[2] = 0;
                    acStack_1b4[5] = 0;
                    uVar10 = FUN_100114d0(pfVar1,afStack_a8,&pvStack_17c,afStack_e8,
                                          (undefined4 *)acStack_1b4);
                    if ((char)uVar10 == '\0') {
                      fStack_1d8 = *pfVar1;
                      fStack_1d4 = *(float *)(iVar9 + 0x284);
                      fStack_1d0 = *(float *)(iVar9 + 0x288);
                      fStack_1cc = *(float *)(iVar9 + 0x28c);
                      fStack_1c8 = fStack_1d8;
                      fStack_1c4 = fStack_1d4;
                      fStack_1c0 = fStack_1d0;
                      fStack_1bc = fStack_1cc;
                      pvVar13 = FUN_1023d070(DAT_10c700c4,fStack_1d8,fStack_1d0);
                      if ((pvVar13 != (void *)0x0) &&
                         (uVar12 = FUN_100cc7f0(pvVar13,pfVar1,(undefined4 *)0x0),
                         (char)uVar12 != '\0')) {
                        *param_5 = 0x14;
                      }
                    }
                    else {
                      *param_5 = 4;
                      uVar10 = FUN_10011690(pvStack_17c,acStack_1b4,&fStack_1d8);
                      if ((char)uVar10 != '\0') {
                        *param_6 = fStack_1d8;
                        param_6[1] = fStack_1d4;
                        param_6[2] = fStack_1d0;
                      }
                    }
                  }
                }
                else {
                  *(longlong *)param_4 = lVar26;
                  *param_5 = 2;
                }
              }
              else {
                *param_5 = 0xb;
              }
            }
            else {
              *param_5 = 6;
              if ((DAT_10c700c4 != (void *)0x0) &&
                 (pvVar13 = *(void **)((int)DAT_10c700c4 + 0x5c), pvVar13 != (void *)0x0)) {
                fStack_1c8 = *pfVar1;
                fStack_1c4 = *(float *)(iVar9 + 0x284);
                fStack_1c0 = *(float *)(iVar9 + 0x288);
                fStack_1bc = *(float *)(iVar9 + 0x28c);
                fStack_1a8 = fStack_1c8;
                fStack_1a4 = fStack_1c4;
                fStack_1a0 = fStack_1c0;
                fStack_19c = fStack_1bc;
                uVar10 = FUN_10151dc0(pvVar13,fStack_1c8,fStack_1c0,'\0','\0');
                if ((char)uVar10 == '\0') {
                  fStack_1c8 = *pfVar1;
                  fStack_1c4 = *(float *)(iVar9 + 0x284);
                  fStack_1c0 = *(float *)(iVar9 + 0x288);
                  fStack_1bc = *(float *)(iVar9 + 0x28c);
                  fStack_1a8 = fStack_1c8;
                  fStack_1a4 = fStack_1c4;
                  fStack_1a0 = fStack_1c0;
                  fStack_19c = fStack_1bc;
                  uVar10 = FUN_10147dc0(pvVar13,fStack_1c8,fStack_1c0,'\x01');
                  if ((char)uVar10 != '\0') {
                    *param_5 = 8;
                  }
                }
                else {
                  *param_5 = 7;
                }
              }
            }
          }
          else {
            *param_5 = 0x11;
            bVar4 = true;
          }
        }
        else {
          *param_5 = 5;
          fStack_1c8 = *pfVar1;
          fStack_1c4 = *(float *)(iVar9 + 0x284);
          fStack_1c0 = *(float *)(iVar9 + 0x288);
          fStack_1bc = *(float *)(iVar9 + 0x28c);
          fStack_1a8 = fStack_1c8;
          fStack_1a4 = fStack_1c4;
          fStack_1a0 = fStack_1c0;
          fStack_19c = fStack_1bc;
          pvVar13 = FUN_1023d070(DAT_10c700c4,fStack_1c8,fStack_1c0);
          if (pvVar13 != (void *)0x0) {
            fStack_154 = DAT_10aae184;
            fStack_150 = DAT_10aae184;
            uStack_14c = 0;
            FUN_100a30e0(pvVar13,pfVar1,&fStack_154);
            uVar10 = FUN_100cc0d0(pvVar13,&fStack_154);
            if ((char)uVar10 != '\0') {
              param_6[1] = param_6[1] + _DAT_10b20b4c;
            }
            uVar10 = FUN_100cc470(pvVar13,&fStack_154);
            if ((char)uVar10 != '\0') {
              *param_8 = 0xf00f;
              bVar4 = true;
              goto LAB_1057087b;
            }
            uVar12 = FUN_100c6890(pvVar13,&fStack_154,1);
            if ((char)uVar12 != '\0') {
              *param_8 = 0xf00d;
            }
          }
          bVar4 = true;
        }
      }
      else {
        if ((uVar12 & 0x800000) != 0) {
          cStack_1e4 = -1;
          uStack_1e3 = 0xff;
          uStack_1e2 = 0;
          uStack_1e1 = 0xff;
          uStack_1e0 = 0xff;
          uStack_1df = 0;
          if (((*(int *)(iVar9 + 0x290) != 1) || (*(int *)(iVar9 + 0x294) != 0)) ||
             (uVar10 = FUN_100113f0(pfVar1,(undefined4 *)&stack0xfffffe18,(undefined4 *)&cStack_1e4,
                                    (undefined4 *)0x0), (char)uVar10 == '\0')) {
            uVar10 = FUN_100d8060(pfVar1,param_4);
            if (((char)uVar10 == '\0') || (bVar6 = FUN_1072cfa0(), bVar6 == 0)) {
              cVar7 = FUN_100d7ea0(pfVar1,(undefined4 *)&stack0xfffffe18,(undefined4 *)&cStack_1e4);
              if (cVar7 == '\0') goto LAB_10570044;
              uStack_1dc = FUN_10111300(pvRam00000298,&cStack_1e4,'\0');
              uVar10 = FUN_1022f7f0(uStack_1dc);
              puVar5 = uStack_1dc;
              if ((char)uVar10 == '\0') {
                uVar10 = FUN_1022f820(uStack_1dc);
                if ((char)uVar10 == '\0') {
                  iVar11 = FUN_1022f710(uStack_1dc);
                  uVar10 = FUN_1001e2a0(iVar11);
                  if ((char)uVar10 == '\0') goto LAB_10570044;
                  uStack_1dc = puRam000002b8;
                  if (puRam000002b8 != (uint *)0x0) {
                    uVar12 = FUN_101edc40(puRam000002b8,&cStack_1e4);
                    uVar25 = FUN_101ea180(uStack_1dc,uVar12);
                    *(undefined8 *)param_4 = uVar25;
                    if ((int)uVar25 != 0 || param_4[1] != 0) {
                      fStack_160 = DAT_10aae184;
                      fStack_15c = DAT_10aae184;
                      iStack_158 = 0;
                      FUN_1021a0d0(&cStack_1e4,&fStack_160);
                      fStack_110 = (float)(iStack_158 + 1);
                      fStack_118 = fStack_160;
                      fStack_114 = fStack_15c;
                      FUN_100a3040((void *)0x0,&fStack_118,&fStack_1a8,'\0');
                      iVar11 = (**(code **)(_DAT_00000000 + 100))(auStack_108);
                      fVar19 = DAT_10aae184;
                      fVar17 = *(float *)(iVar11 + 4);
                      fStack_16c = param_6[1];
                      fStack_178 = (fVar17 + fStack_1a4) - fStack_16c;
                      fStack_174 = (fVar17 + fStack_1a4) - fStack_16c;
                      fStack_170 = (fVar17 + fStack_1a4) - fStack_16c;
                      fStack_16c = (fVar17 + fStack_1a4) - fStack_16c;
                      if ((fStack_178 < DAT_10aaf80c) || (DAT_10b20b50 <= fStack_178)) {
                        FUN_100a3040((void *)0x0,&fStack_160,&fStack_1c8,'\0');
                        pfVar14 = (float *)FUN_100768e0((void *)0x0,auStack_58);
                        fVar17 = fStack_1c8 * pfVar14[1];
                        fVar19 = fStack_1c8 * pfVar14[2];
                        fVar22 = fStack_1c8 * pfVar14[3];
                        fVar23 = fStack_1c4 * pfVar14[6];
                        fVar24 = fStack_1c4 * pfVar14[7];
                        fStack_1bc = fStack_1c0 * pfVar14[0xb];
                        fStack_1c8 = fStack_1c8 * *pfVar14 + pfVar14[0xc] + fStack_1c4 * pfVar14[4]
                                     + fStack_1c0 * pfVar14[8];
                        fStack_1c4 = fVar17 + pfVar14[0xd] + fStack_1c4 * pfVar14[5] +
                                     fStack_1c0 * pfVar14[9];
                        fStack_1c0 = fVar19 + pfVar14[0xe] + fVar23 + fStack_1c0 * pfVar14[10];
                        fStack_1bc = fVar22 + pfVar14[0xf] + fVar24 + fStack_1bc;
                        *param_6 = fStack_1c8;
                        param_6[1] = fStack_1c4;
                        param_6[2] = fStack_1c0;
                        *param_5 = 2;
                        *param_8 = 0x15;
                      }
                      else {
                        *param_5 = 0x10;
                        fStack_138 = fVar19;
                        fStack_134 = fVar19;
                        uStack_130 = 0;
                        FUN_100a30e0((void *)0x0,pfVar1,&fStack_138);
                        *param_4 = uStack_130;
                        param_4[1] = (int)uStack_130 >> 0x1f;
                      }
                    }
                  }
                }
                else {
                  *param_5 = 0xd;
                }
              }
              else {
                uStack_1dc._3_1_ = SUB41(puVar5,3);
                uStack_1dc._0_3_ = CONCAT12(uStack_1e2,CONCAT11(uStack_1e3,cStack_1e4));
                fVar15 = FUN_100039d0(0,(char *)&uStack_1dc);
                pvStack_1ac = (void *)(float)fVar15;
                auStack_148[2] = (**(code **)(_DAT_00000000 + 100))(auStack_f8);
                fVar17 = *(float *)(iVar9 + 0x284);
                pvStack_13c = pvStack_1ac;
                fStack_16c = *(float *)(auStack_148[2] + 4);
                fStack_178 = (fVar17 - (float)pvStack_1ac) - fStack_16c;
                fStack_174 = (fVar17 - (float)pvStack_1ac) - fStack_16c;
                fStack_170 = (fVar17 - (float)pvStack_1ac) - fStack_16c;
                fStack_16c = (fVar17 - (float)pvStack_1ac) - fStack_16c;
                iVar11 = 0x12;
                if (fStack_178 <= DAT_10acb0d4) {
                  iVar11 = 0x13;
                }
                *param_5 = iVar11;
              }
            }
            else {
              *param_5 = 2;
            }
            goto LAB_1057087b;
          }
          *param_5 = 4;
          uVar10 = FUN_10011690((void *)0x0,&cStack_1e4,&fStack_178);
          if ((char)uVar10 != '\0') {
            *param_6 = fStack_178;
            param_6[1] = fStack_174;
            param_6[2] = fStack_170;
          }
        }
LAB_10570044:
        *param_5 = 3;
        bVar4 = true;
      }
    }
    else {
      *param_5 = 9;
    }
  }
  else {
    *param_5 = 2;
    if (*(void **)((int)DAT_10c700c4 + 0x5c) != (void *)0x0) {
      fStack_198 = *pfVar1;
      fStack_194 = *(float *)(iVar9 + 0x284);
      fStack_190 = *(float *)(iVar9 + 0x288);
      fStack_18c = *(float *)(iVar9 + 0x28c);
      fStack_118 = fStack_198;
      fStack_114 = fStack_194;
      fStack_110 = fStack_190;
      fStack_10c = fStack_18c;
      uVar10 = FUN_10142dc0(*(void **)((int)DAT_10c700c4 + 0x5c),fStack_198,fStack_190,'\x01','\0',
                            (undefined4 *)0x0,(float *)0x0,'\0');
      if ((char)uVar10 != '\0') {
        *param_5 = 7;
      }
    }
  }
LAB_1057087b:
  cVar7 = FUN_1025ead0();
  fVar17 = *pfVar1;
  if (cVar7 == '\0') {
    *param_7 = fVar17;
    param_7[1] = *(float *)(iVar9 + 0x284);
    fVar17 = *(float *)(iVar9 + 0x288);
    goto LAB_10570a72;
  }
  bVar3 = false;
  fStack_198 = fVar17;
  fStack_194 = *(float *)(iVar9 + 0x284);
  fStack_190 = *(float *)(iVar9 + 0x288);
  fStack_18c = *(float *)(iVar9 + 0x28c);
  if ((*param_5 == 2) || (*param_5 == 9)) {
    iVar11 = FUN_1072a1a0();
    uVar12 = FUN_1072abb0(iVar11);
    FUN_1035ad50(&pvStack_1ac,uVar12);
    if ((pvStack_1ac != (void *)0x0) &&
       (pvVar13 = (void *)GameObject_GetTransformComponent(pvStack_1ac), pvVar13 != (void *)0x0)) {
      pfVar14 = FUN_107488e0(pvVar13,afStack_d8);
      fVar17 = *pfVar1;
      fVar19 = *(float *)(iVar9 + 0x284);
      fVar22 = *(float *)(iVar9 + 0x288);
      fVar23 = *pfVar14;
      fVar24 = pfVar14[1];
      fVar2 = pfVar14[2];
      fVar20 = pfVar14[3];
      fVar16 = (fVar22 * fVar24 - fVar19 * fVar2) + fVar20 * fVar17;
      fVar18 = (fVar17 * fVar2 - fVar22 * fVar23) + fVar20 * fVar19;
      fVar20 = (fVar19 * fVar23 - fVar17 * fVar24) + fVar20 * fVar22;
      fStack_198 = (fVar20 * fVar24 - fVar18 * fVar2) * _DAT_10aadffc + fVar17 + pfVar14[4];
      fStack_194 = (fVar16 * fVar2 - fVar20 * fVar23) * _DAT_10aadffc + fVar19 + pfVar14[5];
      fStack_190 = (fVar18 * fVar23 - fVar16 * fVar24) * _DAT_10aadffc + fVar22 + pfVar14[6];
      fStack_18c = (fVar16 * fVar23 - fVar16 * fVar23) * _DAT_10aadffc + *(float *)(iVar9 + 0x28c) +
                   pfVar14[7];
      bVar3 = true;
    }
    FUN_10656ec0((int *)&pvStack_1ac);
    fVar19 = fStack_198;
    fVar22 = fStack_194;
    fVar17 = fStack_190;
    if (!bVar3) goto LAB_1057096c;
  }
  else {
LAB_1057096c:
    fVar19 = fStack_198;
    fVar22 = fStack_194;
    fVar17 = fStack_190;
    if (DAT_10c700c4 != (void *)0x0) {
      fStack_1d8 = *pfVar1;
      fStack_1d4 = *(float *)(iVar9 + 0x284);
      fStack_1d0 = *(float *)(iVar9 + 0x288);
      fStack_1cc = *(float *)(iVar9 + 0x28c);
      fStack_1c8 = fStack_1d8;
      fStack_1c4 = fStack_1d4;
      fStack_1c0 = fStack_1d0;
      fStack_1bc = fStack_1cc;
      pvVar13 = FUN_1023d070(DAT_10c700c4,fStack_1d8,fStack_1d0);
      fVar19 = fStack_198;
      fVar22 = fStack_194;
      fVar17 = fStack_190;
      if ((pvVar13 != (void *)0x0) && (*(char *)((int)pvVar13 + 0x4bc) != '\0')) {
        pfVar14 = (float *)FUN_10076ea0(pvVar13,afStack_78);
        fVar17 = *pfVar14;
        fVar23 = pfVar14[1];
        fVar22 = pfVar14[2];
        fVar19 = pfVar14[3];
        fVar24 = *pfVar1;
        fVar2 = *(float *)(iVar9 + 0x284);
        fVar20 = *(float *)(iVar9 + 0x288);
        fVar16 = (fVar20 * fVar23 - fVar2 * fVar22) + fVar19 * fVar24;
        fVar18 = (fVar24 * fVar22 - fVar20 * fVar17) + fVar19 * fVar2;
        fVar21 = (fVar2 * fVar17 - fVar24 * fVar23) + fVar19 * fVar20;
        fVar19 = (fVar21 * fVar23 - fVar18 * fVar22) * _DAT_10aadffc + fVar24 + pfVar14[4];
        fVar22 = (fVar16 * fVar22 - fVar21 * fVar17) * _DAT_10aadffc + fVar2 + pfVar14[5];
        fVar17 = (fVar18 * fVar17 - fVar16 * fVar23) * _DAT_10aadffc + fVar20 + pfVar14[6];
      }
    }
  }
  *param_7 = fVar19;
  param_7[1] = fVar22;
LAB_10570a72:
  param_7[2] = fVar17;
  if ((bVar4) && (DAT_10c700c4 != (void *)0x0)) {
    fStack_1d8 = *pfVar1;
    fStack_1d4 = *(float *)(iVar9 + 0x284);
    fStack_1d0 = *(float *)(iVar9 + 0x288);
    fStack_1cc = *(float *)(iVar9 + 0x28c);
    fStack_1c8 = fStack_1d8;
    fStack_1c4 = fStack_1d4;
    fStack_1c0 = fStack_1d0;
    fStack_1bc = fStack_1cc;
    pvVar13 = FUN_1023d070(DAT_10c700c4,fStack_1d8,fStack_1d0);
    if (pvVar13 == (void *)0x0) {
      *param_4 = 0;
      param_4[1] = 0;
      *param_5 = 0;
    }
    else {
      *param_4 = *(uint *)((int)pvVar13 + 0x48);
      param_4[1] = *(uint *)((int)pvVar13 + 0x4c);
      if ((*param_5 == 3) &&
         (uVar12 = FUN_100c6bc0(pvVar13,pfVar1,(undefined4 *)0x0,1), (char)uVar12 != '\0')) {
        *param_5 = 4;
        return;
      }
    }
  }
  return;
}

