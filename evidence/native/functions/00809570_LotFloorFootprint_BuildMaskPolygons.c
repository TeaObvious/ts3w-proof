/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 routing footprint table and kind contract): Analyst name. ECX
   LotFloorFootprint; four stackslots RET 0x10:float XZorigin,first axis XZ,second axis
   XZ,outputPolygon; void. Actual caller 80ACA0 chooses 808260 only for kind 3 above native ground
   level, otherwise this path. Kind through virtual +C is signed 624C40; stored level byte+36 and
   kind-selective mask policies are retained in complete body. Kind 21 branch at 809C49 uses AF7690
   position conversion and B97FD0(lot owner +0x2AC,0.0,2.0,position,0,0,0); AL false preserves
   candidate path,AL true clears local mask.2.0 is binary32 0x40000000 at 103FD88. This static
   headroom-filtering path does not establish current Foundation AABB rendering role or frontend
   0..4 clamp. Actual C artifacts remain; original branch directions/floating constants/ABI
   authoritative. */

void __thiscall
LotFloorFootprint_BuildMaskPolygons
          (void *this,float *originXZ,float *firstAxisXZ,float *secondAxisXZ,void *outputPolygon)

{
  byte bVar1;
  int *piVar2;
  bool bVar3;
  bool bVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  undefined4 uVar8;
  float *pfVar9;
  char cVar10;
  float *pfVar11;
  float10 fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  byte bStack_a1;
  int iStack_a0;
  float *local_9c;
  float *local_98;
  undefined4 local_94;
  char *local_90;
  char cStack_8c;
  undefined1 uStack_8b;
  undefined1 uStack_8a;
  byte bStack_89;
  void *local_88;
  char cStack_81;
  float fStack_80;
  char cStack_7a;
  char cStack_79;
  char cStack_78;
  undefined3 uStack_77;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  char cStack_61;
  int iStack_60;
  float fStack_5c;
  float fStack_58;
  int iStack_54;
  int iStack_50;
  int iStack_4c;
  int iStack_48;
  void *pvStack_44;
  int iStack_40;
  int iStack_3c;
  int iStack_38;
  int iStack_34;
  float fStack_30;
  float fStack_2c;
  byte bStack_28;
  undefined3 uStack_27;
  byte bStack_24;
  undefined3 uStack_23;
  float fStack_20;
  int local_1c;
  int local_18;
  float fStack_14;
  float fStack_10;
  undefined4 uStack_c;
  
  local_9c = (float *)0x0;
  local_98 = (float *)0x0;
  local_94 = 0;
  local_90 = "Routing/LotFloorFootprint/poly";
  iVar7 = *(int *)(*(int *)((int)this + 0x40) + 0x174);
  local_1c = *(int *)(*(int *)((int)this + 0x40) + 0x178);
  local_88 = this;
  local_18 = iVar7;
  iVar5 = (**(code **)(*(int *)this + 0xc))();
  iStack_34 = local_1c + 1;
  iStack_4c = iVar7 + 1;
  pvStack_44 = DAT_011edbc4;
  iStack_60 = iVar5;
  if (DAT_011edbc4 == (void *)0x0) {
    fStack_20 = 0.0;
  }
  else {
    fVar12 = WorldWater_GetSeaLevel((int)DAT_011edbc4);
    fStack_20 = (float)fVar12;
  }
  if ((iVar5 == 0x1d) || (cStack_7a = '\0', iVar5 == 0x1c)) {
    cStack_7a = '\x01';
  }
  if (*(int *)((int)this + 0x40) == 0) {
    cStack_81 = '\0';
  }
  else {
    cStack_81 = *(char *)(*(int *)((int)this + 0x40) + 0x4bc);
  }
  uStack_8a = *(undefined1 *)((int)this + 0x36);
  cStack_61 = iVar5 == 0x1f;
  fStack_30 = (*firstAxisXZ + *secondAxisXZ) * _DAT_00f9b5b4;
  fStack_2c = (firstAxisXZ[1] + secondAxisXZ[1]) * _DAT_00f9b5b4;
  cStack_8c = '\0';
  uStack_8b = 0;
  bStack_89 = 0xf;
  fStack_80 = DAT_0102176c;
  if ((iVar5 != 0x1e) && (fStack_80 = DAT_01021768, (bool)cStack_61)) {
    fStack_80 = 0.0;
  }
  iStack_48 = -2;
  iStack_50 = -2;
  iStack_54 = -1;
  if (-1 < iStack_4c) {
    do {
      cStack_8c = (char)iStack_54;
      iStack_38 = -2;
      iStack_40 = -2;
      fStack_5c = *firstAxisXZ * (float)iStack_54 + *originXZ;
      fStack_58 = firstAxisXZ[1] * (float)iStack_54 + originXZ[1];
      cStack_79 = '\x01';
      iStack_3c = -1;
      if (iStack_34 < 0) {
LAB_0080a8fd:
        if (cStack_61 == '\0') goto LAB_0080a923;
        if (iStack_48 < -1) {
          iStack_48 = iStack_54;
        }
        iStack_50 = iStack_54 + 1;
      }
      else {
        do {
          uStack_8b = (undefined1)iStack_3c;
          if ((((iStack_54 < 0) || (local_18 <= iStack_54)) || (iStack_3c < 0)) ||
             (local_1c <= iStack_3c)) {
            cVar10 = '\x01';
          }
          else {
            cVar10 = '\0';
          }
          _cStack_78 = CONCAT31(uStack_77,cVar10);
          bStack_a1 = 0;
          if (iStack_60 == 0x1b) {
            if ((*(char *)((int)local_88 + 0x36) == '\0') && (cVar10 == '\0')) {
              iStack_a0 = 0;
              do {
                bStack_89 = (&DAT_01023d6c)[iStack_a0];
                _bStack_28 = CONCAT31(uStack_27,bStack_89);
                uVar6 = LotLevelSurface_TestCellMask
                                  (*(void **)(*(int *)((int)local_88 + 0x40) + 0x290),&cStack_8c,
                                   bStack_89,1);
                if ((((char)uVar6 != '\0') &&
                    (iVar7 = FUN_00a8cb10(*(void **)(*(int *)((int)local_88 + 0x40) + 0x290),
                                          &cStack_8c), (char)iVar7 != '\0')) &&
                   (uVar8 = FUN_00ab0160(*(void **)((int)local_88 + 0x40),&cStack_8c,
                                         (byte)_bStack_28), (char)uVar8 != '\0')) {
                  bStack_a1 = bStack_a1 | bStack_28;
                }
                iStack_a0 = iStack_a0 + 1;
              } while (iStack_a0 < 4);
            }
            else {
LAB_00809826:
              bStack_a1 = 0;
            }
LAB_00809948:
            if ((((cStack_81 != '\0') || (*(char *)((int)local_88 + 0x36) != '\0')) ||
                ((iStack_60 == 0x1a || ((iStack_60 == 0x1b || (iStack_60 == 0x1e)))))) ||
               (iStack_60 == 0x1f)) goto LAB_00809db1;
            bStack_a1 = ~bStack_a1 & 0xf;
            cVar10 = (char)_cStack_78;
            if (iStack_60 != 0x10) {
              if (iStack_60 != 0xf) {
                if (iStack_60 == 0x1d) {
                  if (bStack_a1 == 0xf) goto LAB_0080a18f;
                  uVar8 = FUN_00807e10(local_88,&cStack_8c,cVar10,&fStack_5c,originXZ,firstAxisXZ,
                                       secondAxisXZ,&fStack_30,1);
                  if ((char)uVar8 != '\0') {
                    bStack_a1 = 0xf;
                    goto LAB_0080a19e;
                  }
                }
                else if (iStack_60 == 0x1c) {
                  if (bStack_a1 != 0) goto LAB_00809cda;
                  uVar8 = FUN_00807fa0(local_88,&cStack_8c,cVar10,&fStack_5c,originXZ,firstAxisXZ,
                                       secondAxisXZ,&fStack_30,1);
                  if ((char)uVar8 != '\0') {
                    bStack_a1 = 0xf;
                    goto LAB_0080a19e;
                  }
                }
                goto LAB_00809db1;
              }
              if (bStack_a1 == 0) {
                uVar8 = FUN_00807fa0(local_88,&cStack_8c,cVar10,&fStack_5c,originXZ,firstAxisXZ,
                                     secondAxisXZ,&fStack_30,0);
                if ((char)uVar8 != '\0') {
                  bStack_a1 = 0xf;
                  goto LAB_0080a19e;
                }
                goto LAB_00809db1;
              }
LAB_00809cda:
              bStack_a1 = 0;
              goto LAB_00809dbc;
            }
            if (bStack_a1 == 0xf) goto LAB_0080a18f;
            uVar8 = FUN_00807e10(local_88,&cStack_8c,cVar10,&fStack_5c,originXZ,firstAxisXZ,
                                 secondAxisXZ,&fStack_30,0);
            if ((char)uVar8 == '\0') goto LAB_00809db1;
            bStack_a1 = 0xf;
LAB_0080a19e:
            fStack_6c = *secondAxisXZ * (float)iStack_3c + fStack_5c;
            fStack_68 = (float)iStack_3c * secondAxisXZ[1] + fStack_58;
            if (bStack_a1 == 0xf) {
              if (iStack_38 < -1) {
                iStack_38 = iStack_3c;
              }
              iStack_40 = iStack_3c + 1;
            }
            else {
              if (bStack_a1 == 3) {
                uVar6 = (int)local_98 - (int)local_9c >> 3;
                if (uVar6 < 3) {
                  FUN_00629b70(&local_9c,local_98,3 - uVar6,&fStack_74);
                }
                else {
                  local_98 = local_98 + ((int)local_98 - (int)(local_9c + 6) >> 3) * -2;
                }
                *local_9c = fStack_6c;
                local_9c[1] = fStack_68;
                fVar13 = firstAxisXZ[1];
                local_9c[2] = *firstAxisXZ + *local_9c;
                local_9c[3] = local_9c[1] + fVar13;
                fVar15 = local_9c[2] + *secondAxisXZ;
                fVar13 = local_9c[3];
LAB_0080a890:
                fVar13 = fVar13 + secondAxisXZ[1];
LAB_0080a895:
                local_9c[4] = fVar15;
                local_9c[5] = fVar13;
              }
              else {
                if (bStack_a1 == 6) {
                  uVar6 = (int)local_98 - (int)local_9c >> 3;
                  if (uVar6 < 3) {
                    FUN_00629b70(&local_9c,local_98,3 - uVar6,&fStack_74);
                  }
                  else {
                    FUN_00629900(&local_9c,local_9c + 6,local_98);
                  }
                  fVar13 = firstAxisXZ[1];
                  *local_9c = fStack_6c + *firstAxisXZ;
                  local_9c[1] = fStack_68 + fVar13;
                  fVar13 = secondAxisXZ[1];
                  local_9c[2] = *secondAxisXZ + *local_9c;
                  local_9c[3] = local_9c[1] + fVar13;
                  fVar15 = local_9c[2] - *firstAxisXZ;
                  fVar13 = local_9c[3] - firstAxisXZ[1];
                  goto LAB_0080a895;
                }
                if (bStack_a1 == 0xc) {
                  uVar6 = (int)local_98 - (int)local_9c >> 3;
                  if (uVar6 < 3) {
                    FUN_00629b70(&local_9c,local_98,3 - uVar6,&fStack_74);
                  }
                  else {
                    FUN_00629900(&local_9c,local_9c + 6,local_98);
                  }
                  *local_9c = fStack_6c;
                  local_9c[1] = fStack_68;
                  fVar13 = firstAxisXZ[1];
                  fVar15 = secondAxisXZ[1];
                  local_9c[2] = *firstAxisXZ + *local_9c + *secondAxisXZ;
                  local_9c[3] = local_9c[1] + fVar13 + fVar15;
                  fVar15 = local_9c[2] - *firstAxisXZ;
                  fVar13 = local_9c[3] - firstAxisXZ[1];
                  goto LAB_0080a895;
                }
                if (bStack_a1 != 9) {
                  if ((bStack_a1 & 1) != 0) {
                    uVar6 = (int)local_98 - (int)local_9c >> 3;
                    if (uVar6 < 3) {
                      FUN_00629b70(&local_9c,local_98,3 - uVar6,&fStack_74);
                    }
                    else {
                      FUN_00629900(&local_9c,local_9c + 6,local_98);
                    }
                    *local_9c = fStack_6c;
                    local_9c[1] = fStack_68;
                    fVar13 = firstAxisXZ[1];
                    local_9c[2] = *firstAxisXZ + *local_9c;
                    fVar14 = _DAT_00f9b5b4;
                    local_9c[3] = local_9c[1] + fVar13;
                    fVar13 = secondAxisXZ[1];
                    fVar15 = firstAxisXZ[1];
                    local_9c[4] = *local_9c + *firstAxisXZ * fVar14 + *secondAxisXZ * fVar14;
                    local_9c[5] = local_9c[1] + fVar15 * fVar14 + fVar13 * fVar14;
                    FUN_00832af0((int *)&local_9c,fStack_80);
                    piVar2 = *(int **)((int)outputPolygon + 4);
                    if (piVar2 < *(int **)((int)outputPolygon + 8)) {
                      *(int **)((int)outputPolygon + 4) = piVar2 + 4;
                      if (piVar2 != (int *)0x0) {
                        FUN_006289f0(piVar2,(int *)&local_9c);
                      }
                    }
                    else {
                      FUN_00808140(outputPolygon,piVar2,(int *)&local_9c);
                    }
                  }
                  if ((bStack_a1 & 2) != 0) {
                    uVar6 = (int)local_98 - (int)local_9c >> 3;
                    if (uVar6 < 3) {
                      FUN_00629b70(&local_9c,local_98,3 - uVar6,&fStack_74);
                    }
                    else {
                      FUN_00629900(&local_9c,local_9c + 6,local_98);
                    }
                    fVar13 = firstAxisXZ[1];
                    *local_9c = fStack_6c + *firstAxisXZ;
                    local_9c[1] = fStack_68 + fVar13;
                    fVar13 = secondAxisXZ[1];
                    local_9c[2] = *secondAxisXZ + *local_9c;
                    fVar14 = _DAT_00f9b5b4;
                    local_9c[3] = local_9c[1] + fVar13;
                    fVar13 = secondAxisXZ[1];
                    fVar15 = firstAxisXZ[1];
                    local_9c[4] = (*local_9c - *firstAxisXZ * fVar14) + *secondAxisXZ * fVar14;
                    local_9c[5] = (local_9c[1] - fVar15 * fVar14) + fVar13 * fVar14;
                    FUN_00832af0((int *)&local_9c,fStack_80);
                    piVar2 = *(int **)((int)outputPolygon + 4);
                    if (piVar2 < *(int **)((int)outputPolygon + 8)) {
                      *(int **)((int)outputPolygon + 4) = piVar2 + 4;
                      if (piVar2 != (int *)0x0) {
                        FUN_006289f0(piVar2,(int *)&local_9c);
                      }
                    }
                    else {
                      FUN_00808140(outputPolygon,piVar2,(int *)&local_9c);
                    }
                  }
                  if ((bStack_a1 & 4) != 0) {
                    uVar6 = (int)local_98 - (int)local_9c >> 3;
                    if (uVar6 < 3) {
                      FUN_00629b70(&local_9c,local_98,3 - uVar6,&fStack_74);
                    }
                    else {
                      FUN_00629900(&local_9c,local_9c + 6,local_98);
                    }
                    fVar13 = secondAxisXZ[1];
                    *local_9c = fStack_6c + *secondAxisXZ;
                    fVar14 = _DAT_00f9b5b4;
                    local_9c[1] = fStack_68 + fVar13;
                    fVar13 = secondAxisXZ[1];
                    fVar15 = firstAxisXZ[1];
                    local_9c[2] = (*local_9c + *firstAxisXZ * fVar14) - *secondAxisXZ * fVar14;
                    local_9c[3] = (local_9c[1] + fVar15 * fVar14) - fVar13 * fVar14;
                    fVar13 = firstAxisXZ[1];
                    local_9c[4] = *firstAxisXZ + *local_9c;
                    local_9c[5] = local_9c[1] + fVar13;
                    FUN_00832af0((int *)&local_9c,fStack_80);
                    piVar2 = *(int **)((int)outputPolygon + 4);
                    if (piVar2 < *(int **)((int)outputPolygon + 8)) {
                      *(int **)((int)outputPolygon + 4) = piVar2 + 4;
                      if (piVar2 != (int *)0x0) {
                        FUN_006289f0(piVar2,(int *)&local_9c);
                      }
                    }
                    else {
                      FUN_00808140(outputPolygon,piVar2,(int *)&local_9c);
                    }
                  }
                  if ((bStack_a1 & 8) == 0) goto LAB_0080a8e1;
                  uVar6 = (int)local_98 - (int)local_9c >> 3;
                  if (uVar6 < 3) {
                    FUN_00629b70(&local_9c,local_98,3 - uVar6,&fStack_74);
                  }
                  else {
                    FUN_00629900(&local_9c,local_9c + 6,local_98);
                  }
                  *local_9c = fStack_6c;
                  local_9c[1] = fStack_68;
                  fVar13 = secondAxisXZ[1] * _DAT_00f9b5b4;
                  fVar15 = firstAxisXZ[1] * _DAT_00f9b5b4;
                  local_9c[2] = *local_9c + *firstAxisXZ * _DAT_00f9b5b4 +
                                *secondAxisXZ * _DAT_00f9b5b4;
                  local_9c[3] = local_9c[1] + fVar15 + fVar13;
                  fVar15 = *secondAxisXZ + *local_9c;
                  fVar13 = local_9c[1];
                  goto LAB_0080a890;
                }
                uVar6 = (int)local_98 - (int)local_9c >> 3;
                if (uVar6 < 3) {
                  FUN_00629b70(&local_9c,local_98,3 - uVar6,&fStack_74);
                }
                else {
                  FUN_00629900(&local_9c,local_9c + 6,local_98);
                }
                *local_9c = fStack_6c;
                local_9c[1] = fStack_68;
                fVar13 = firstAxisXZ[1];
                local_9c[2] = *firstAxisXZ + *local_9c;
                local_9c[3] = local_9c[1] + fVar13;
                fVar13 = firstAxisXZ[1];
                fVar15 = secondAxisXZ[1];
                local_9c[4] = *secondAxisXZ + (local_9c[2] - *firstAxisXZ);
                local_9c[5] = (local_9c[3] - fVar13) + fVar15;
              }
              FUN_00832af0((int *)&local_9c,fStack_80);
              piVar2 = *(int **)((int)outputPolygon + 4);
              if (piVar2 < *(int **)((int)outputPolygon + 8)) {
                *(int **)((int)outputPolygon + 4) = piVar2 + 4;
                if (piVar2 != (int *)0x0) {
                  FUN_006289f0(piVar2,(int *)&local_9c);
                }
              }
              else {
                FUN_00808140(outputPolygon,piVar2,(int *)&local_9c);
              }
            }
          }
          else {
            if (iStack_60 == 0x1a) {
              if ((*(char *)((int)local_88 + 0x36) != '\0') || (cVar10 != '\0')) goto LAB_00809826;
              iStack_a0 = 0;
              do {
                bStack_89 = (&DAT_01023d6c)[iStack_a0];
                _bStack_24 = CONCAT31(uStack_23,bStack_89);
                uVar6 = LotLevelSurface_TestCellMask
                                  (*(void **)(*(int *)((int)local_88 + 0x40) + 0x290),&cStack_8c,
                                   bStack_89,1);
                if ((((char)uVar6 != '\0') &&
                    (iVar7 = FUN_00a8cb10(*(void **)(*(int *)((int)local_88 + 0x40) + 0x290),
                                          &cStack_8c), (char)iVar7 != '\0')) &&
                   (uVar8 = LotWater_IsQuarterUnderWater
                                      (*(void **)((int)local_88 + 0x40),&cStack_8c,(byte)_bStack_24)
                   , (char)uVar8 != '\0')) {
                  bStack_a1 = bStack_a1 | bStack_24;
                }
                iStack_a0 = iStack_a0 + 1;
              } while (iStack_a0 < 4);
              goto LAB_00809948;
            }
            if (iStack_60 == 0x1e) {
              if (*(char *)((int)local_88 + 0x36) != '\0') goto LAB_00809826;
              iStack_a0 = 0;
              do {
                bVar1 = (&DAT_01023d6c)[iStack_a0];
                bStack_89 = bVar1;
                uVar6 = FUN_00ad07e0(*(int **)((int)local_88 + 0x40),&cStack_8c,pvStack_44,
                                     (char)_cStack_78);
                if ((char)uVar6 != '\0') {
                  bStack_a1 = bStack_a1 | bVar1;
                }
                iStack_a0 = iStack_a0 + 1;
              } while (iStack_a0 < 4);
              goto LAB_00809948;
            }
            if (iStack_60 == 0x1f) {
              iVar7 = *(int *)((int)local_88 + 0x40);
              if ((((*(int *)(iVar7 + 0x408) != 1) || (*(int *)(iVar7 + 0x40c) != 0x50)) ||
                  (*(char *)((int)local_88 + 0x36) != '\x01')) &&
                 ((*(char *)(iVar7 + 0x4b0) == '\0' || (*(char *)((int)local_88 + 0x36) != '\0'))))
              goto LAB_00809826;
              iStack_a0 = 0;
              do {
                bVar1 = (&DAT_01023d6c)[iStack_a0];
                bStack_89 = bVar1;
                uVar6 = FUN_00ad0470(*(int **)((int)local_88 + 0x40),&cStack_8c,pvStack_44,
                                     (char)_cStack_78);
                if ((char)uVar6 != '\0') {
                  bStack_a1 = bStack_a1 | bVar1;
                }
                iStack_a0 = iStack_a0 + 1;
              } while (iStack_a0 < 4);
              goto LAB_00809948;
            }
            if (cVar10 == '\0') {
              if (((cStack_81 != '\0') && (*(char *)((int)local_88 + 0x36) == '\0')) &&
                 (uVar8 = FUN_00807670(*(void **)((int)local_88 + 0x40),&cStack_8c),
                 (char)uVar8 == '\0')) goto LAB_00809b87;
              iStack_a0 = 0;
              do {
                bStack_89 = (&DAT_01023d6c)[iStack_a0];
                iStack_4c = CONCAT31(iStack_4c._1_3_,bStack_89);
                uVar6 = LotLevelSurface_TestCellMask
                                  (*(void **)(*(int *)((int)local_88 + 0x40) + 0x290),&cStack_8c,
                                   bStack_89,1);
                if ((((char)uVar6 != '\0') &&
                    (iVar7 = FUN_00a8cb10(*(void **)(*(int *)((int)local_88 + 0x40) + 0x290),
                                          &cStack_8c), (char)iVar7 != '\0')) &&
                   ((cStack_7a != '\0' ||
                    ((uVar8 = LotWater_IsQuarterUnderWater
                                        (*(void **)((int)local_88 + 0x40),&cStack_8c,(byte)iStack_4c
                                        ), (char)uVar8 == '\0' &&
                     (uVar6 = FUN_00ad0470(*(int **)((int)local_88 + 0x40),&cStack_8c,(void *)0x0,
                                           '\0'), (char)uVar6 == '\0')))))) {
                  bStack_a1 = bStack_a1 | (byte)iStack_4c;
                }
                iStack_a0 = iStack_a0 + 1;
              } while (iStack_a0 < 4);
            }
            else if ((*(char *)((int)local_88 + 0x36) == '\0') && (cStack_81 == '\0')) {
              if (pvStack_44 != (void *)0x0) {
                if ((iStack_60 == 0x1d) || (bVar3 = true, iStack_60 == 0x1c)) {
                  bVar3 = false;
                }
                fStack_70 = (float)iStack_3c * secondAxisXZ[1] + fStack_58 + fStack_2c;
                fStack_74 = *secondAxisXZ * (float)iStack_3c + fStack_5c + fStack_30;
                fVar12 = WorldSurface_QueryHeight
                                   (pvStack_44,fStack_74,fStack_70,0,'\x01','\0',(undefined1 *)0x0,
                                    (undefined1 *)0x0,'\0','\0');
                bVar4 = FUN_00c6b8f0(pvStack_44,fStack_74,fStack_70);
                if ((!bVar4) || ((bVar3 && ((float)fVar12 <= fStack_20)))) goto LAB_00809b87;
              }
              bStack_a1 = 0xf;
            }
            else {
LAB_00809b87:
              bStack_a1 = 0;
            }
            if (iStack_60 != 0x15) goto LAB_00809948;
            if (bStack_a1 != 0) {
              if (cStack_78 == '\0') {
                fStack_14 = FLOAT_00fab218;
                fStack_10 = FLOAT_00fab218;
                uStack_c = 0;
                FUN_00af7690(&cStack_8c,&fStack_14);
                uVar8 = FUN_00b97fd0(*(void **)(*(int *)((int)local_88 + 0x40) + 0x2ac),0.0,
                                     DAT_0103fd88,&fStack_14,'\0',0,(LPCRITICAL_SECTION)0x0);
                if ((char)uVar8 == '\0') goto LAB_00809db1;
              }
              goto LAB_00809cda;
            }
LAB_00809db1:
            if (bStack_a1 != 0xf) {
LAB_00809dbc:
              cStack_79 = '\0';
              if (-2 < iStack_40) {
                uVar6 = (int)local_98 - (int)local_9c >> 3;
                if (uVar6 < 4) {
                  FUN_00629b70(&local_9c,local_98,4 - uVar6,&fStack_74);
                }
                else {
                  local_98 = local_98 + ((int)local_98 - (int)(local_9c + 8) >> 3) * -2;
                }
                fVar13 = *secondAxisXZ;
                local_9c[1] = (float)iStack_38 * secondAxisXZ[1] + fStack_58;
                *local_9c = fVar13 * (float)iStack_38 + fStack_5c;
                fVar13 = *firstAxisXZ;
                local_9c[3] = local_9c[1] + firstAxisXZ[1];
                local_9c[2] = fVar13 + *local_9c;
                fVar13 = secondAxisXZ[1];
                local_9c[4] = local_9c[2] + *secondAxisXZ * (float)(iStack_40 - iStack_38);
                local_9c[5] = local_9c[3] + (float)(iStack_40 - iStack_38) * fVar13;
                fVar13 = firstAxisXZ[1];
                local_9c[6] = local_9c[4] - *firstAxisXZ;
                local_9c[7] = local_9c[5] - fVar13;
                FUN_00832af0((int *)&local_9c,fStack_80);
                piVar2 = *(int **)((int)outputPolygon + 4);
                if (piVar2 < *(int **)((int)outputPolygon + 8)) {
                  *(int **)((int)outputPolygon + 4) = piVar2 + 4;
                  if (piVar2 != (int *)0x0) {
                    iVar7 = (int)local_98 - (int)local_9c >> 3;
                    piVar2[3] = (int)local_90;
                    if (iVar7 == 0) {
                      pfVar9 = (float *)0x0;
                    }
                    else {
                      pfVar9 = (float *)FUN_004e4500(iVar7 * 8,local_90,0);
                    }
                    *piVar2 = (int)pfVar9;
                    piVar2[1] = (int)pfVar9;
                    piVar2[2] = (int)(pfVar9 + iVar7 * 2);
                    for (pfVar11 = local_9c; pfVar11 != local_98; pfVar11 = pfVar11 + 2) {
                      if (pfVar9 != (float *)0x0) {
                        *pfVar9 = *pfVar11;
                        pfVar9[1] = pfVar11[1];
                      }
                      pfVar9 = pfVar9 + 2;
                    }
                    piVar2[1] = (int)pfVar9;
                  }
                }
                else {
                  FUN_00808140(outputPolygon,piVar2,(int *)&local_9c);
                }
                iStack_38 = -2;
                iStack_40 = -2;
              }
              if (-2 < iStack_50) {
                uVar6 = (int)local_98 - (int)local_9c >> 3;
                if (uVar6 < 4) {
                  FUN_00629b70(&local_9c,local_98,4 - uVar6,&fStack_74);
                }
                else {
                  local_98 = local_98 + ((int)local_98 - (int)(local_9c + 8) >> 3) * -2;
                }
                fVar13 = firstAxisXZ[1];
                fVar14 = secondAxisXZ[1] * FLOAT_00fab218;
                fVar15 = originXZ[1];
                *local_9c = *firstAxisXZ * (float)iStack_48 + *originXZ +
                            *secondAxisXZ * FLOAT_00fab218;
                local_9c[1] = fVar13 * (float)iStack_48 + fVar15 + fVar14;
                fVar15 = (float)(iStack_34 + 1);
                fVar13 = secondAxisXZ[1];
                local_9c[2] = *secondAxisXZ * fVar15 + *local_9c;
                local_9c[3] = local_9c[1] + fVar15 * fVar13;
                fVar13 = firstAxisXZ[1];
                local_9c[4] = *firstAxisXZ * (float)(iStack_50 - iStack_48) + local_9c[2];
                local_9c[5] = local_9c[3] + fVar13 * (float)(iStack_50 - iStack_48);
                fVar13 = secondAxisXZ[1];
                local_9c[6] = local_9c[4] - *secondAxisXZ * fVar15;
                local_9c[7] = local_9c[5] - fVar15 * fVar13;
                FUN_00832af0((int *)&local_9c,fStack_80);
                piVar2 = *(int **)((int)outputPolygon + 4);
                if (piVar2 < *(int **)((int)outputPolygon + 8)) {
                  *(int **)((int)outputPolygon + 4) = piVar2 + 4;
                  if (piVar2 != (int *)0x0) {
                    iVar7 = (int)local_98 - (int)local_9c >> 3;
                    piVar2[3] = (int)local_90;
                    if (iVar7 == 0) {
                      pfVar9 = (float *)0x0;
                    }
                    else {
                      pfVar9 = (float *)FUN_004e4500(iVar7 * 8,local_90,0);
                    }
                    *piVar2 = (int)pfVar9;
                    piVar2[1] = (int)pfVar9;
                    piVar2[2] = (int)(pfVar9 + iVar7 * 2);
                    for (pfVar11 = local_9c; pfVar11 != local_98; pfVar11 = pfVar11 + 2) {
                      if (pfVar9 != (float *)0x0) {
                        *pfVar9 = *pfVar11;
                        pfVar9[1] = pfVar11[1];
                      }
                      pfVar9 = pfVar9 + 2;
                    }
                    piVar2[1] = (int)pfVar9;
                  }
                }
                else {
                  FUN_00808140(outputPolygon,piVar2,(int *)&local_9c);
                }
                iStack_48 = -2;
                iStack_50 = -2;
              }
            }
LAB_0080a18f:
            if (bStack_a1 != 0) goto LAB_0080a19e;
          }
LAB_0080a8e1:
          iStack_3c = iStack_3c + 1;
        } while (iStack_3c < iStack_34);
        if (cStack_79 != '\0') goto LAB_0080a8fd;
LAB_0080a923:
        iVar7 = iStack_40;
        if (-2 < iStack_40) {
          uVar6 = (int)local_98 - (int)local_9c >> 3;
          if (uVar6 < 4) {
            FUN_00629b70(&local_9c,local_98,4 - uVar6,&fStack_74);
          }
          else {
            local_98 = local_98 + ((int)local_98 - (int)(local_9c + 8) >> 3) * -2;
          }
          fVar13 = *secondAxisXZ;
          local_9c[1] = (float)iStack_38 * secondAxisXZ[1] + fStack_58;
          *local_9c = fStack_5c + (float)iStack_38 * fVar13;
          fVar13 = *firstAxisXZ;
          local_9c[3] = local_9c[1] + firstAxisXZ[1];
          local_9c[2] = fVar13 + *local_9c;
          fVar13 = secondAxisXZ[1];
          local_9c[4] = local_9c[2] + (float)(iVar7 - iStack_38) * *secondAxisXZ;
          local_9c[5] = local_9c[3] + (float)(iVar7 - iStack_38) * fVar13;
          fVar13 = firstAxisXZ[1];
          local_9c[6] = local_9c[4] - *firstAxisXZ;
          local_9c[7] = local_9c[5] - fVar13;
          FUN_00832af0((int *)&local_9c,fStack_80);
          piVar2 = *(int **)((int)outputPolygon + 4);
          if (piVar2 < *(int **)((int)outputPolygon + 8)) {
            *(int **)((int)outputPolygon + 4) = piVar2 + 4;
            if (piVar2 != (int *)0x0) {
              iVar7 = (int)local_98 - (int)local_9c >> 3;
              piVar2[3] = (int)local_90;
              if (iVar7 == 0) {
                pfVar9 = (float *)0x0;
              }
              else {
                pfVar9 = (float *)FUN_004e4500(iVar7 * 8,local_90,0);
              }
              *piVar2 = (int)pfVar9;
              piVar2[1] = (int)pfVar9;
              piVar2[2] = (int)(pfVar9 + iVar7 * 2);
              for (pfVar11 = local_9c; pfVar11 != local_98; pfVar11 = pfVar11 + 2) {
                if (pfVar9 != (float *)0x0) {
                  *pfVar9 = *pfVar11;
                  pfVar9[1] = pfVar11[1];
                }
                pfVar9 = pfVar9 + 2;
              }
              piVar2[1] = (int)pfVar9;
            }
          }
          else {
            FUN_00808140(outputPolygon,piVar2,(int *)&local_9c);
          }
        }
      }
      iVar7 = iStack_50;
      iStack_54 = iStack_54 + 1;
    } while (iStack_54 < local_18 + 1);
    if (-2 < iStack_50) {
      uVar6 = (int)local_98 - (int)local_9c >> 3;
      if (uVar6 < 4) {
        FUN_00629b70(&local_9c,local_98,4 - uVar6,&fStack_74);
      }
      else {
        FUN_00629900(&local_9c,local_9c + 8,local_98);
      }
      fVar14 = secondAxisXZ[1] * FLOAT_00fab218;
      fVar13 = firstAxisXZ[1];
      fVar15 = originXZ[1];
      *local_9c = *originXZ + (float)iStack_48 * *firstAxisXZ + *secondAxisXZ * FLOAT_00fab218;
      local_9c[1] = (float)iStack_48 * fVar13 + fVar15 + fVar14;
      fVar15 = (float)(iStack_34 + 1);
      fVar13 = secondAxisXZ[1];
      local_9c[2] = fVar15 * *secondAxisXZ + *local_9c;
      local_9c[3] = local_9c[1] + fVar15 * fVar13;
      fVar13 = firstAxisXZ[1];
      local_9c[4] = local_9c[2] + (float)(iVar7 - iStack_48) * *firstAxisXZ;
      local_9c[5] = local_9c[3] + (float)(iVar7 - iStack_48) * fVar13;
      fVar13 = secondAxisXZ[1];
      local_9c[6] = local_9c[4] - fVar15 * *secondAxisXZ;
      local_9c[7] = local_9c[5] - fVar15 * fVar13;
      FUN_00832af0((int *)&local_9c,fStack_80);
      piVar2 = *(int **)((int)outputPolygon + 4);
      if (piVar2 < *(int **)((int)outputPolygon + 8)) {
        *(int **)((int)outputPolygon + 4) = piVar2 + 4;
        if (piVar2 != (int *)0x0) {
          FUN_006289f0(piVar2,(int *)&local_9c);
        }
      }
      else {
        FUN_00808140(outputPolygon,piVar2,(int *)&local_9c);
      }
    }
  }
  if (local_9c != (float *)0x0) {
    Memory_FreeIfNonNull(local_9c);
  }
  return;
}

