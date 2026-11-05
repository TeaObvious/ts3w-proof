/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. Caller-cleaned four physical words, plainRET.
   Enumerates manager objects in order, filters Tree mask/optional callback, groups exactSPT then
   normalized Location level and grid cell. Cell conversion uses CVTTSS2SI (truncate), not floor
   outside nonnegative domain. First member survives; CombineWith then manager virtual3C destroys
   later members, refreshes bounds/physics/location and queues3359DC3C. Lot1x1 grouping is only a
   bounded projection. */

void __cdecl TreeManager_AutoCluster(int *param_1,int *param_2,int *param_3,int *param_4)

{
  float *pfVar1;
  int ****this;
  int ****ppppiVar2;
  int ***pppiVar3;
  undefined4 *puVar4;
  undefined4 *allocation;
  int iVar5;
  char cVar6;
  void *pvVar7;
  int *piVar8;
  int iVar9;
  int *piVar10;
  int *piVar11;
  uint uVar12;
  int ******ppppppiVar13;
  int *****local_fc;
  int *****local_f8;
  int iStack_f4;
  int *piStack_f0;
  uint uStack_ec;
  undefined1 auStack_e8 [4];
  int *****pppppiStack_e4;
  int *****pppppiStack_e0;
  undefined4 *puStack_dc;
  undefined4 uStack_d8;
  undefined4 uStack_d4;
  char *pcStack_d0;
  int *local_cc;
  int *local_c8;
  int *local_c4;
  char *local_c0;
  int iStack_bc;
  float fStack_b8;
  undefined1 auStack_b4 [4];
  int *piStack_b0;
  uint uStack_ac;
  undefined4 uStack_a8;
  float fStack_a4;
  undefined4 uStack_a0;
  undefined4 uStack_9c;
  char *pcStack_98;
  float fStack_94;
  float fStack_90;
  float fStack_8c;
  int iStack_88;
  int iStack_84;
  float fStack_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float fStack_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  undefined4 uStack_60;
  undefined **ppuStack_5c;
  int *piStack_58;
  int *piStack_54;
  int **appiStack_50 [19];
  
  local_f8 = (int *****)FUN_00c6e140((int)param_1);
  ppppppiVar13 = (int ******)0x0;
  local_cc = (int *)0x0;
  local_c8 = (int *)0x0;
  local_c4 = (int *)0x0;
  local_c0 = "Objects/TreeComponent/TreeComponentVector";
  piVar10 = (int *)0x0;
  if ((int ******)local_f8 != (int ******)0x0) {
    do {
      pvVar7 = (void *)FUN_00c6e150(param_1,(uint)ppppppiVar13);
      piVar11 = piVar10;
      if (((pvVar7 != (void *)0x0) &&
          (local_fc = Object_GetComponentByMask(pvVar7,DAT_011ea290), local_fc != (int *****)0x0))
         && ((param_4 == (int *)0x0 ||
             (cVar6 = (**(code **)(*param_4 + 4))
                                (*(undefined4 *)((int)pvVar7 + 8),*(undefined4 *)((int)pvVar7 + 0xc)
                                ), cVar6 != '\0')))) {
        if (piVar10 < local_c4) {
          local_c8 = piVar10 + 1;
          piVar11 = local_c8;
          if (piVar10 != (int *)0x0) {
            *piVar10 = (int)local_fc;
          }
        }
        else {
          FUN_00982420(&local_cc,piVar10,&local_fc);
          piVar11 = local_c8;
        }
      }
      ppppppiVar13 = (int ******)((int)ppppppiVar13 + 1);
      piVar10 = piVar11;
    } while (ppppppiVar13 < local_f8);
    if (local_cc == piVar11) {
      if (local_cc != (int *)0x0) {
        Memory_FreeIfNonNull(local_cc);
        return;
      }
    }
    else {
      fStack_a4 = 1.0;
      uStack_a0 = 0x40000000;
      pcStack_98 = "Objects/TreeComponent/KeyComponentMap";
      uStack_ac = 1;
      piStack_b0 = &DAT_0114d900;
      uStack_a8 = 0;
      uStack_9c = 0;
      piVar10 = local_cc;
      do {
        ppppppiVar13 = (int ******)*piVar10;
        local_fc = (int *****)ppppppiVar13;
        pvVar7 = (void *)FUN_0095d0e0(auStack_b4,(uint *)(ppppppiVar13 + 4));
        piVar8 = *(int **)((int)pvVar7 + 4);
        if (piVar8 < *(int **)((int)pvVar7 + 8)) {
          *(int **)((int)pvVar7 + 4) = piVar8 + 1;
          if (piVar8 != (int *)0x0) {
            *piVar8 = (int)ppppppiVar13;
          }
        }
        else {
          FUN_00982420(pvVar7,piVar8,&local_fc);
        }
        piVar10 = piVar10 + 1;
      } while (piVar10 != piVar11);
      fStack_90 = (float)*param_2;
      iStack_bc = DAT_011edbc4;
      if (*param_2 < 0) {
        fStack_90 = fStack_90 + 4.2949673e+09;
      }
      fStack_90 = (*(float *)(DAT_011edbc4 + 0xbc) - *(float *)(DAT_011edbc4 + 0xb4)) / fStack_90;
      fStack_b8 = (float)*param_3;
      if (*param_3 < 0) {
        fStack_b8 = fStack_b8 + 4.2949673e+09;
      }
      fStack_b8 = (*(float *)(DAT_011edbc4 + 0xc0) - *(float *)(DAT_011edbc4 + 0xb8)) / fStack_b8;
      iStack_f4 = *piStack_b0;
      piStack_f0 = piStack_b0;
      if (iStack_f4 == 0) {
        piStack_f0 = piStack_b0 + 1;
        iVar9 = piStack_b0[1];
        while (iVar9 == 0) {
          piStack_f0 = piStack_f0 + 1;
          iVar9 = *piStack_f0;
        }
        iStack_f4 = *piStack_f0;
      }
      if (iStack_f4 != piStack_b0[uStack_ac]) {
        do {
          iVar5 = iStack_bc;
          iVar9 = iStack_f4;
          puStack_dc = (undefined4 *)0x0;
          uStack_d4 = 0;
          piVar10 = *(int **)(iStack_f4 + 0x10);
          pppppiStack_e4 = (int *****)&pppppiStack_e4;
          pcStack_d0 = "Objects/Components/Tree";
          uStack_d8 = 0;
          pppppiStack_e0 = pppppiStack_e4;
          if (piVar10 != *(int **)(iStack_f4 + 0x14)) {
            fStack_94 = 1.0 / fStack_90;
            fStack_8c = 1.0 / fStack_b8;
            do {
              pfVar1 = *(float **)(*(int *)(*piVar10 + 8) + 8);
              fStack_80 = *pfVar1;
              fStack_7c = pfVar1[1];
              fStack_78 = pfVar1[2];
              fStack_74 = pfVar1[3];
              pvVar7 = *(void **)(*piVar10 + 4);
              iStack_88 = (int)((fStack_80 - *(float *)(iVar5 + 0xb4)) * fStack_94);
              iStack_84 = (int)((fStack_78 - *(float *)(iVar5 + 0xb8)) * fStack_8c);
              local_fc = (int *****)0x0;
              fStack_70 = fStack_80;
              fStack_6c = fStack_7c;
              fStack_68 = fStack_78;
              fStack_64 = fStack_74;
              if ((pvVar7 != (void *)0x0) &&
                 (pvVar7 = Object_GetComponentByMask(pvVar7,DAT_011edf08), pvVar7 != (void *)0x0)) {
                local_fc = (int *****)
                           (-(uint)(*(uint *)((int)pvVar7 + 0x18) != 0x7fffffff) &
                           *(uint *)((int)pvVar7 + 0x18));
              }
              piVar11 = &iStack_88;
              piVar8 = FUN_0095d4f0(auStack_e8,(int *)&local_fc);
              piVar8 = FUN_0095d270(piVar8,piVar11);
              piVar11 = (int *)piVar8[1];
              if (piVar11 < (int *)piVar8[2]) {
                piVar8[1] = (int)(piVar11 + 1);
                if (piVar11 != (int *)0x0) {
                  *piVar11 = *piVar10;
                }
              }
              else {
                FUN_00982420(piVar8,piVar11,piVar10);
              }
              piVar10 = piVar10 + 1;
            } while (piVar10 != *(int **)(iVar9 + 0x14));
          }
          local_fc = pppppiStack_e0;
          allocation = puStack_dc;
          if ((int ******)pppppiStack_e0 != &pppppiStack_e4) {
            do {
              ppppppiVar13 = (int ******)local_fc[7];
              local_f8 = (int *****)ppppppiVar13;
              if (ppppppiVar13 != (int ******)(local_fc + 6)) {
                do {
                  uStack_ec = (int)ppppppiVar13[7] - (int)ppppppiVar13[6] >> 2;
                  local_f8 = (int *****)ppppppiVar13;
                  if (1 < uStack_ec) {
                    this = *ppppppiVar13[6];
                    uVar12 = 1;
                    do {
                      ppppiVar2 = (int ****)local_f8[6][uVar12];
                      TreeComponent_CombineCluster(this,(int)ppppiVar2);
                      (**(code **)(*param_1 + 0x3c))(ppppiVar2[1],1);
                      ppppppiVar13 = (int ******)local_f8;
                      uVar12 = uVar12 + 1;
                    } while (uVar12 < uStack_ec);
                    FUN_0095b910(this);
                    TreeComponent_RefreshClusterBounds((int)this);
                    if ((this[1] != (int ***)0x0) &&
                       (pvVar7 = Object_GetComponentByMask(this[1],DAT_011e9fa8),
                       pvVar7 != (void *)0x0)) {
                      FUN_009479f0((int)pvVar7);
                    }
                    iVar9 = (**(code **)(*param_1 + 0x40))();
                    if (iVar9 == 1) {
                      Lot_NotifyObjectLocationChanged(param_1,this[1]);
                    }
                    else if (((this[1] != (int ***)0x0) &&
                             (pvVar7 = Object_GetComponentByMask(this[1],DAT_011e9fc8),
                             pvVar7 != (void *)0x0)) &&
                            (iVar9 = *(int *)((int)pvVar7 + 8), iVar9 != 0)) {
                      pvVar7 = (void *)CollisionService_GetGlobal();
                      thunk_FUN_006874f0(pvVar7,iVar9);
                    }
                    piStack_58 = (int *)this[1][2];
                    piStack_54 = (int *)this[1][3];
                    uStack_60 = 0x3359dc3c;
                    ppuStack_5c = &PTR_PTR_0117cbf8;
                    appiStack_50[0] = (int **)0x0;
                    pppiVar3 = this[2];
                    if (pppiVar3 != (int ***)0x0) {
                      LOCK();
                      pppiVar3[1] = (int **)((int)pppiVar3[1] + 1);
                      UNLOCK();
                      appiStack_50[0] = (int **)pppiVar3;
                    }
                    RenderCommand_EnqueueIfDispatcherExists((byte *)&uStack_60);
                    if (ppuStack_5c != (undefined **)0x0) {
                      (**(code **)*ppuStack_5c)(appiStack_50);
                    }
                  }
                  ppppppiVar13 = (int ******)FUN_004e1030((int *)ppppppiVar13);
                  local_f8 = (int *****)ppppppiVar13;
                } while (ppppppiVar13 != (int ******)(local_fc + 6));
              }
              local_fc = (int *****)FUN_004e1030((int *)local_fc);
              allocation = puStack_dc;
            } while ((int ******)local_fc != &pppppiStack_e4);
          }
          while (allocation != (undefined4 *)0x0) {
            FUN_0095cf50((undefined4 *)*allocation);
            puVar4 = (undefined4 *)allocation[1];
            FUN_0095b330((undefined4 *)allocation[8]);
            Memory_FreeIfNonNull(allocation);
            allocation = puVar4;
          }
          iStack_f4 = *(int *)(iStack_f4 + 0x20);
          while (iStack_f4 == 0) {
            piVar10 = piStack_f0 + 1;
            piStack_f0 = piStack_f0 + 1;
            iStack_f4 = *piVar10;
          }
        } while (iStack_f4 != piStack_b0[uStack_ac]);
      }
      FUN_0095b510((int)piStack_b0,uStack_ac);
      uStack_a8 = 0;
      if (1 < uStack_ac) {
        Memory_FreeIfNonNull(piStack_b0);
      }
      if (local_cc != (int *)0x0) {
        Memory_FreeIfNonNull(local_cc);
      }
    }
  }
  return;
}

