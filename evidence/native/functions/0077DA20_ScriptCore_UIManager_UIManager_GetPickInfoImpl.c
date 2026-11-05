/* Retained genuine /TS3W.exe C export; current function identifiers checked against the November 5 name snapshot.
   Earlier body/ABI/variable qualifications remain; no runtime observation. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Verified PC 1.67 registration table at 0x01163060 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.UIManager::UIManager_GetPickInfoImpl [assembly=ScriptCore token=0x06000E46; winHandle:
   System.UInt32, x: System.Int32&, y: System.Int32&, objectId: System.UInt64&, objectMask:
   System.UInt32&, worldPos: Sims3.SimIFace.Vector3&, displayPos: Sims3.SimIFace.Vector3&, CASId:
   System.Int32&; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Static PC 1.67 contract: resolves a UI pick record and writes x/y, ID, initial class zero, CAS ID
   and world position before classifying its raw mask. Failed handle/query admission writes nothing.
   A zero raw mask returns after those initial writes with display position untouched. Nonzero masks
   use ordered priority branches and later conditional ID/class remaps; objectMask is an output
   classification, not a copy of the raw mask. Display transforms reload cached pick-record
   coordinates rather than the adjusted world-position output; aliasing or concurrent record changes
   are not checked.
   
   Outputs can therefore be partial; no local output-pointer null checks or coherent concurrent
   snapshot is established. Height comparisons' unordered branches require completed FP comparisons
   and ambient exception state. C null-receiver/absolute-global artifacts in helper paths contradict
   original pointer operands; do not infer intentional null calls or bind their generated variables.
   Record writers, borrowed helper/service lifetimes and concrete downstream decisions remain open.
   Original managed import is void with seven byrefs; preserve current ABI/types. */

void __cdecl
ScriptCore.UIManager::UIManager_GetPickInfoImpl
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
  void *pvVar12;
  float *pfVar13;
  uint uVar14;
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
  char acStack_1e2 [6];
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
  LotXZLevel LStack_154;
  uint auStack_148 [3];
  void *pvStack_13c;
  LotXZLevel LStack_138;
  LotXZLevel LStack_12c;
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
  
  piVar8 = (int *)GetGlobalInterfacePointer_11D5BBC();
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
  uVar14 = *(uint *)(iVar9 + 0x298);
  if (uVar14 == 0) {
    return;
  }
  bVar4 = false;
  if ((uVar14 & 0x1000000) == 0) {
    if ((uVar14 & 0x200000) == 0) {
      if ((uVar14 & 0x10802000) == 0) {
        if ((uVar14 & 0x40400000) == 0x40400000) {
          fStack_1c8 = *pfVar1;
          fStack_1c4 = *(float *)(iVar9 + 0x284);
          fStack_1c0 = *(float *)(iVar9 + 0x288);
          fStack_1bc = *(float *)(iVar9 + 0x28c);
          fStack_1a8 = fStack_1c8;
          fStack_1a4 = fStack_1c4;
          fStack_1a0 = fStack_1c0;
          fStack_19c = fStack_1bc;
          pvVar12 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,fStack_1c8,fStack_1c0);
          if (pvVar12 != (void *)0x0) {
            *param_5 = 0x10;
            LStack_12c.x = -1.0;
            LStack_12c.z = -1.0;
            LStack_12c.level = 0;
            Lot_WorldPositionToLocalLocation(pvVar12,pfVar1,&LStack_12c);
            *param_4 = LStack_12c.level;
            param_4[1] = LStack_12c.level >> 0x1f;
          }
        }
        else if ((uVar14 & 0x404000) == 0) {
          if ((uVar14 & 0x8000000) == 0) {
            if ((uVar14 & 0x10000) == 0) {
              if ((uVar14 & 0x40000) == 0) {
                if ((uVar14 & 0x2000000) == 0) {
                  if (((uVar14 & 0x8000) == 0) || ((uVar14 & 0x40000000) != 0)) {
                    if (((uVar14 & 0x8000) != 0) && ((uVar14 & 0x40000000) != 0)) {
                      auStack_148[1] = 0;
                      uVar14 = FUN_00afe080(pfVar1,auStack_148 + 1,auStack_148);
                      if ((char)uVar14 != '\0') {
                        *param_5 = 0xf;
                        *param_4 = auStack_148[0];
                        param_4[1] = 0;
                        goto LAB_0077e47b;
                      }
                    }
                  }
                  else {
                    uVar10 = FUN_00b00c90(pfVar1,(undefined4 *)0x0,(undefined4 *)0x0,&uStack_120);
                    if ((char)uVar10 != '\0') {
                      *param_5 = 2;
                      *param_4 = uStack_120;
                      param_4[1] = uStack_11c;
                      *param_8 = 0xe;
                      goto LAB_0077e47b;
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
                if (DAT_011edbc4 == (void *)0x0) {
                  pvVar12 = (void *)0x0;
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
                  pvVar12 = LotSpatialIndex_FindContainingLotAtWorldXZ
                                      (DAT_011edbc4,fStack_1c8,fStack_1c0);
                }
                lVar26 = FUN_00ccf5d0(pvVar12,(float *)0x0);
                if (lVar26 == 0) {
                  uVar10 = FUN_00cceb60(pvVar12,pfVar1,0xf,afStack_b8);
                  if ((char)uVar10 != '\0') {
                    acStack_1b4[0] = -1;
                    acStack_1b4[1] = 0xff;
                    acStack_1b4[3] = 0xff;
                    acStack_1b4[4] = 0xff;
                    pvStack_17c = (void *)0x0;
                    acStack_1b4[2] = 0;
                    acStack_1b4[5] = 0;
                    uVar10 = FUN_00a523d0(pfVar1,afStack_a8,&pvStack_17c,afStack_e8,
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
                      pvVar12 = LotSpatialIndex_FindContainingLotAtWorldXZ
                                          (DAT_011edbc4,fStack_1d8,fStack_1d0);
                      if ((pvVar12 != (void *)0x0) &&
                         (uVar14 = FUN_00b055c0(pvVar12,pfVar1,(int *)0x0), (char)uVar14 != '\0')) {
                        *param_5 = 0x14;
                      }
                    }
                    else {
                      *param_5 = 4;
                      uVar10 = FUN_00a52590(pvStack_17c,acStack_1b4,&fStack_1d8);
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
              if ((DAT_011edbc4 != (void *)0x0) &&
                 (pvVar12 = *(void **)((int)DAT_011edbc4 + 0x5c), pvVar12 != (void *)0x0)) {
                fStack_1c8 = *pfVar1;
                fStack_1c4 = *(float *)(iVar9 + 0x284);
                fStack_1c0 = *(float *)(iVar9 + 0x288);
                fStack_1bc = *(float *)(iVar9 + 0x28c);
                fStack_1a8 = fStack_1c8;
                fStack_1a4 = fStack_1c4;
                fStack_1a0 = fStack_1c0;
                fStack_19c = fStack_1bc;
                uVar10 = FUN_00b865c0(pvVar12,fStack_1c8,fStack_1c0,'\0','\0');
                if ((char)uVar10 == '\0') {
                  fStack_1c8 = *pfVar1;
                  fStack_1c4 = *(float *)(iVar9 + 0x284);
                  fStack_1c0 = *(float *)(iVar9 + 0x288);
                  fStack_1bc = *(float *)(iVar9 + 0x28c);
                  fStack_1a8 = fStack_1c8;
                  fStack_1a4 = fStack_1c4;
                  fStack_1a0 = fStack_1c0;
                  fStack_19c = fStack_1bc;
                  uVar10 = FUN_00b7ca40(pvVar12,fStack_1c8,fStack_1c0,'\x01');
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
          pvVar12 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,fStack_1c8,fStack_1c0);
          if (pvVar12 != (void *)0x0) {
            LStack_154.x = -1.0;
            LStack_154.z = -1.0;
            LStack_154.level = 0;
            Lot_WorldPositionToLocalLocation(pvVar12,pfVar1,&LStack_154);
            uVar10 = Lot_TestPlatformAtLocalXZLevel(pvVar12,&LStack_154.x);
            if ((char)uVar10 != '\0') {
              param_6[1] = param_6[1] + 0.1875;
            }
            uVar10 = FUN_00b05240(pvVar12,&LStack_154.x);
            if ((char)uVar10 != '\0') {
              *param_8 = 0xf00f;
              bVar4 = true;
              goto LAB_0077e47b;
            }
            uVar14 = Lot_TestNextLevelAtLocalLocation(pvVar12,&LStack_154,1);
            if ((char)uVar14 != '\0') {
              *param_8 = 0xf00d;
            }
          }
          bVar4 = true;
        }
      }
      else {
        if ((uVar14 & 0x800000) != 0) {
          cStack_1e4 = -1;
          uStack_1e3 = 0xff;
          acStack_1e2[0] = 0;
          acStack_1e2[1] = 0xff;
          acStack_1e2[2] = 0xff;
          acStack_1e2[3] = 0;
          if (((*(int *)(iVar9 + 0x290) != 1) || (*(int *)(iVar9 + 0x294) != 0)) ||
             (uVar10 = FUN_00a522f0(pfVar1,(undefined4 *)(acStack_1b4 + -0x34),
                                    (undefined4 *)&cStack_1e4,(undefined4 *)0x0),
             (char)uVar10 == '\0')) {
            uVar10 = FUN_00b10d20(pfVar1,param_4);
            if (((char)uVar10 == '\0') || (bVar6 = FUN_0093a350(), bVar6 == 0)) {
              cVar7 = FUN_00b10b60(pfVar1,(undefined4 *)(acStack_1b4 + -0x34),
                                   (undefined4 *)&cStack_1e4);
              if (cVar7 == '\0') goto LAB_0077dc44;
              uStack_1dc = FUN_00b47df0(pvRam00000298,&cStack_1e4,'\0');
              uVar10 = WallProduct_HasNonzeroFieldE0(uStack_1dc);
              puVar5 = uStack_1dc;
              if ((char)uVar10 == '\0') {
                uVar10 = FUN_00c5b860(uStack_1dc);
                if ((char)uVar10 == '\0') {
                  iVar11 = FUN_00c5b750(uStack_1dc);
                  uVar10 = FUN_00779560(iVar11);
                  if ((char)uVar10 == '\0') goto LAB_0077dc44;
                  uStack_1dc = puRam000002b8;
                  if (puRam000002b8 != (uint *)0x0) {
                    uVar14 = FUN_00c1e510(puRam000002b8,&cStack_1e4);
                    uVar25 = FUN_00c1aba0(uStack_1dc,uVar14);
                    *(undefined8 *)param_4 = uVar25;
                    if ((int)uVar25 != 0 || param_4[1] != 0) {
                      fStack_160 = -1.0;
                      fStack_15c = -1.0;
                      iStack_158 = 0;
                      FUN_00c45e80(&cStack_1e4,&fStack_160);
                      fStack_110 = (float)(iStack_158 + 1);
                      fStack_118 = fStack_160;
                      fStack_114 = fStack_15c;
                      FUN_00adc7c0((void *)0x0,&fStack_118,&fStack_1a8,'\0');
                      iVar11 = (**(code **)(_DAT_00000000 + 100))(auStack_108);
                      fVar17 = *(float *)(iVar11 + 4);
                      fStack_16c = param_6[1];
                      fStack_178 = (fVar17 + fStack_1a4) - fStack_16c;
                      fStack_174 = (fVar17 + fStack_1a4) - fStack_16c;
                      fStack_170 = (fVar17 + fStack_1a4) - fStack_16c;
                      fStack_16c = (fVar17 + fStack_1a4) - fStack_16c;
                      if ((fStack_178 < -0.001) || (0.15 <= fStack_178)) {
                        FUN_00adc7c0((void *)0x0,&fStack_160,&fStack_1c8,'\0');
                        pfVar13 = (float *)FUN_00ab1540((void *)0x0,auStack_58);
                        fVar17 = fStack_1c8 * pfVar13[1];
                        fVar19 = fStack_1c8 * pfVar13[2];
                        fVar22 = fStack_1c8 * pfVar13[3];
                        fVar23 = fStack_1c4 * pfVar13[6];
                        fVar24 = fStack_1c4 * pfVar13[7];
                        fStack_1bc = fStack_1c0 * pfVar13[0xb];
                        fStack_1c8 = fStack_1c8 * *pfVar13 + pfVar13[0xc] + fStack_1c4 * pfVar13[4]
                                     + fStack_1c0 * pfVar13[8];
                        fStack_1c4 = fVar17 + pfVar13[0xd] + fStack_1c4 * pfVar13[5] +
                                     fStack_1c0 * pfVar13[9];
                        fStack_1c0 = fVar19 + pfVar13[0xe] + fVar23 + fStack_1c0 * pfVar13[10];
                        fStack_1bc = fVar22 + pfVar13[0xf] + fVar24 + fStack_1bc;
                        *param_6 = fStack_1c8;
                        param_6[1] = fStack_1c4;
                        param_6[2] = fStack_1c0;
                        *param_5 = 2;
                        *param_8 = 0x15;
                      }
                      else {
                        *param_5 = 0x10;
                        LStack_138.x = -1.0;
                        LStack_138.z = -1.0;
                        LStack_138.level = 0;
                        Lot_WorldPositionToLocalLocation((void *)0x0,pfVar1,&LStack_138);
                        *param_4 = LStack_138.level;
                        param_4[1] = LStack_138.level >> 0x1f;
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
                uStack_1dc._0_3_ = CONCAT12(acStack_1e2[0],CONCAT11(uStack_1e3,cStack_1e4));
                fVar15 = FUN_0077d7e0((void *)0x0,(char *)&uStack_1dc);
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
                if (fStack_178 <= 1.0) {
                  iVar11 = 0x13;
                }
                *param_5 = iVar11;
              }
            }
            else {
              *param_5 = 2;
            }
            goto LAB_0077e47b;
          }
          *param_5 = 4;
          uVar10 = FUN_00a52590((void *)0x0,&cStack_1e4,&fStack_178);
          if ((char)uVar10 != '\0') {
            *param_6 = fStack_178;
            param_6[1] = fStack_174;
            param_6[2] = fStack_170;
          }
        }
LAB_0077dc44:
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
    if (*(void **)((int)DAT_011edbc4 + 0x5c) != (void *)0x0) {
      fStack_198 = *pfVar1;
      fStack_194 = *(float *)(iVar9 + 0x284);
      fStack_190 = *(float *)(iVar9 + 0x288);
      fStack_18c = *(float *)(iVar9 + 0x28c);
      fStack_118 = fStack_198;
      fStack_114 = fStack_194;
      fStack_110 = fStack_190;
      fStack_10c = fStack_18c;
      uVar10 = FUN_00b77f60(*(void **)((int)DAT_011edbc4 + 0x5c),fStack_198,fStack_190,'\x01','\0',
                            (undefined4 *)0x0,(float *)0x0,'\0');
      if ((char)uVar10 != '\0') {
        *param_5 = 7;
      }
    }
  }
LAB_0077e47b:
  cVar7 = GameProducts_TestCachedMask40000();
  fVar17 = *pfVar1;
  if (cVar7 == '\0') {
    *param_7 = fVar17;
    param_7[1] = *(float *)(iVar9 + 0x284);
    fVar17 = *(float *)(iVar9 + 0x288);
    goto LAB_0077e672;
  }
  bVar3 = false;
  fStack_198 = fVar17;
  fStack_194 = *(float *)(iVar9 + 0x284);
  fStack_190 = *(float *)(iVar9 + 0x288);
  fStack_18c = *(float *)(iVar9 + 0x28c);
  if ((*param_5 == 2) || (*param_5 == 9)) {
    pvVar12 = ObjectRegistry_GetGlobal();
    pvVar12 = ObjectRegistry_FindBorrowed(pvVar12,*(ulonglong *)param_4);
    FUN_0055e250(&pvStack_1ac,(int)pvVar12);
    if ((pvStack_1ac != (void *)0x0) &&
       (pvVar12 = (void *)Object_GetTransformComponentOrNull(pvStack_1ac), pvVar12 != (void *)0x0))
    {
      pfVar13 = FUN_00956060(pvVar12,afStack_d8);
      fVar17 = *pfVar1;
      fVar19 = *(float *)(iVar9 + 0x284);
      fVar22 = *(float *)(iVar9 + 0x288);
      fVar23 = *pfVar13;
      fVar24 = pfVar13[1];
      fVar2 = pfVar13[2];
      fVar20 = pfVar13[3];
      fVar16 = (fVar22 * fVar24 - fVar19 * fVar2) + fVar20 * fVar17;
      fVar18 = (fVar17 * fVar2 - fVar22 * fVar23) + fVar20 * fVar19;
      fVar20 = (fVar19 * fVar23 - fVar17 * fVar24) + fVar20 * fVar22;
      fStack_198 = (fVar20 * fVar24 - fVar18 * fVar2) * 2.0 + fVar17 + pfVar13[4];
      fStack_194 = (fVar16 * fVar2 - fVar20 * fVar23) * 2.0 + fVar19 + pfVar13[5];
      fStack_190 = (fVar18 * fVar23 - fVar16 * fVar24) * 2.0 + fVar22 + pfVar13[6];
      fStack_18c = (fVar16 * fVar23 - fVar16 * fVar23) * 2.0 + *(float *)(iVar9 + 0x28c) +
                   pfVar13[7];
      bVar3 = true;
    }
    FUN_007462e0((int *)&pvStack_1ac);
    if (!bVar3) goto LAB_0077e56c;
LAB_0077e621:
    fVar19 = fStack_198;
    fVar22 = fStack_194;
    fVar17 = fStack_190;
  }
  else {
LAB_0077e56c:
    fVar19 = fStack_198;
    fVar22 = fStack_194;
    fVar17 = fStack_190;
    if (DAT_011edbc4 != (void *)0x0) {
      fStack_1d8 = *pfVar1;
      fStack_1d4 = *(float *)(iVar9 + 0x284);
      fStack_1d0 = *(float *)(iVar9 + 0x288);
      fStack_1cc = *(float *)(iVar9 + 0x28c);
      fStack_1c8 = fStack_1d8;
      fStack_1c4 = fStack_1d4;
      fStack_1c0 = fStack_1d0;
      fStack_1bc = fStack_1cc;
      pvVar12 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,fStack_1d8,fStack_1d0);
      if ((pvVar12 == (void *)0x0) || (*(char *)((int)pvVar12 + 0x4bc) == '\0')) goto LAB_0077e621;
      pfVar13 = (float *)Lot_GetAttachedWorldQuaternionTranslation(pvVar12,afStack_78);
      fVar17 = *pfVar13;
      fVar23 = pfVar13[1];
      fVar22 = pfVar13[2];
      fVar19 = pfVar13[3];
      fVar24 = *pfVar1;
      fVar2 = *(float *)(iVar9 + 0x284);
      fVar20 = *(float *)(iVar9 + 0x288);
      fVar16 = (fVar20 * fVar23 - fVar2 * fVar22) + fVar19 * fVar24;
      fVar18 = (fVar24 * fVar22 - fVar20 * fVar17) + fVar19 * fVar2;
      fVar21 = (fVar2 * fVar17 - fVar24 * fVar23) + fVar19 * fVar20;
      fVar19 = (fVar21 * fVar23 - fVar18 * fVar22) * 2.0 + fVar24 + pfVar13[4];
      fVar22 = (fVar16 * fVar22 - fVar21 * fVar17) * 2.0 + fVar2 + pfVar13[5];
      fVar17 = (fVar18 * fVar17 - fVar16 * fVar23) * 2.0 + fVar20 + pfVar13[6];
    }
  }
  *param_7 = fVar19;
  param_7[1] = fVar22;
LAB_0077e672:
  param_7[2] = fVar17;
  if ((bVar4) && (DAT_011edbc4 != (void *)0x0)) {
    fStack_1d8 = *pfVar1;
    fStack_1d4 = *(float *)(iVar9 + 0x284);
    fStack_1d0 = *(float *)(iVar9 + 0x288);
    fStack_1cc = *(float *)(iVar9 + 0x28c);
    fStack_1c8 = fStack_1d8;
    fStack_1c4 = fStack_1d4;
    fStack_1c0 = fStack_1d0;
    fStack_1bc = fStack_1cc;
    pvVar12 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,fStack_1d8,fStack_1d0);
    if (pvVar12 == (void *)0x0) {
      *param_4 = 0;
      param_4[1] = 0;
      *param_5 = 0;
    }
    else {
      *param_4 = *(uint *)((int)pvVar12 + 0x48);
      param_4[1] = *(uint *)((int)pvVar12 + 0x4c);
      if ((*param_5 == 3) &&
         (uVar14 = FUN_00aff9d0(pvVar12,pfVar1,(int *)0x0,1), (char)uVar14 != '\0')) {
        *param_5 = 4;
        return;
      }
    }
  }
  return;
}

