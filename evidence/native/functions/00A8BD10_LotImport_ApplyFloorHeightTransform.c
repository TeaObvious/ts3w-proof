/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Applies imported floor height data through the placement vertex transform.
   For non-water contents, every interior target vertex written is source height plus header +0x34,
   without an exact-size or zero-rotation bypass. Boundary vertices are deliberately retained from
   the target terrain. Water-lot contents have additional branches. */

void __thiscall
LotImport_ApplyFloorHeightTransform
          (void *this,int param_1,int *sourceHeights,int placementHeader,int param_4,int param_5)

{
  float *pfVar1;
  float *pfVar2;
  bool bVar3;
  bool bVar4;
  undefined4 uVar5;
  int iVar6;
  float *pfVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  float fVar12;
  int local_34;
  int local_30;
  int local_2c;
  int local_28;
  float local_24;
  int local_20;
  int local_1c;
  int local_18;
  int local_14;
  void *local_10;
  int local_c;
  int local_8;
  int local_4;

  iVar6 = param_1;
  local_c = *(int *)(param_1 + 4) + -1;
  local_8 = *(int *)(param_1 + 8) + -1;
  iVar9 = *(int *)(param_1 + 0xc);
  local_10 = this;
  local_4 = iVar9;
  if (*(char *)(placementHeader + 0x48) == '\0') {
    local_18 = 0;
    if (0 < iVar9) {
      iVar11 = param_4 * param_5 * 4;
      local_1c = 0;
      local_14 = iVar11;
      do {
        iVar8 = 0;
        if (0 < param_4) {
          param_1 = local_1c;
          do {
            iVar10 = 0;
            iVar9 = param_1;
            if (0 < param_5) {
              do {
                FUN_00cb30c0((void *)(placementHeader + 100),iVar8,iVar10,&local_20,(int *)&local_24
                            );
                if ((((0 < local_20) && (0 < (int)local_24)) && (local_20 < local_c)) &&
                   ((int)local_24 < local_8)) {
                    /* For every admitted interior vertex, add placementHeader+0x34 to the source
                       height. Exact-cover and rotation-zero imports do not bypass this addition. */
                  *(float *)(*(int *)(iVar6 + 0x10) +
                            ((*(int *)(iVar6 + 4) * local_18 + local_20) * *(int *)(iVar6 + 8) +
                            (int)local_24) * 4) =
                       *(float *)(iVar9 + *sourceHeights) + *(float *)(placementHeader + 0x34);
                }
                iVar10 = iVar10 + 1;
                iVar11 = local_14;
                iVar9 = iVar9 + 4;
              } while (iVar10 < param_5);
            }
            param_1 = param_1 + param_5 * 4;
            iVar8 = iVar8 + 1;
            iVar9 = local_4;
          } while (iVar8 < param_4);
        }
        local_1c = local_1c + iVar11;
        local_18 = local_18 + 1;
        this = local_10;
      } while (local_18 < iVar9);
    }
  }
  else {
    local_34 = 0;
    if (0 < iVar9) {
      local_18 = 0;
      iVar6 = param_4 * param_5 * 4;
      local_14 = iVar6;
      do {
        local_30 = 0;
        if (0 < param_4) {
          local_1c = local_18;
          do {
            if ((local_30 == 0) || (bVar4 = false, local_30 == param_4 + -1)) {
              bVar4 = true;
            }
            iVar9 = 0;
            if (0 < param_5) {
              local_20 = local_1c;
              do {
                FUN_00cb30c0((void *)(placementHeader + 100),local_30,iVar9,&local_28,&local_2c);
                if (((0 < local_28) && (0 < local_2c)) &&
                   ((local_28 < local_c && (local_2c < local_8)))) {
                  local_24 = *(float *)(placementHeader + 0x34) +
                             *(float *)(local_20 + *sourceHeights);
                  if ((iVar9 == 0) || (iVar9 == param_5 + -1)) {
                    bVar3 = true;
                  }
                  else {
                    bVar3 = false;
                  }
                  if ((*(char *)(placementHeader + 0x50) == '\0') ||
                     (local_34 != *(int *)(placementHeader + 0x24))) {
                    if ((bVar4) || (fVar12 = local_24, bVar3)) goto LAB_00a8bea6;
                  }
                  else {
                    if (*(char *)(*(int *)((int)local_10 + 4) + 0x4b0) == '\0') {
                      local_24 = local_24 - 1.0;
                    }
                    if ((bVar4) || (bVar3)) {
LAB_00a8bea6:
                      fVar12 = local_24;
                      if (*(float *)(local_20 + *sourceHeights) < *(float *)(placementHeader + 0x4c)
                         ) {
                        iVar6 = (*(int *)(param_1 + 4) * local_34 + local_28) *
                                *(int *)(param_1 + 8) + local_2c;
                        pfVar1 = (float *)(*(int *)(param_1 + 0x10) + iVar6 * 4);
                        pfVar2 = (float *)(*(int *)(param_1 + 0x10) + iVar6 * 4);
                        pfVar7 = &local_24;
                        if (local_24 < *pfVar1 || local_24 == *pfVar1) {
                          pfVar7 = pfVar2;
                        }
                        *pfVar2 = *pfVar7;
                        goto LAB_00a8bf00;
                      }
                    }
                    else {
                      fVar12 = local_24;
                      if ((local_24 < 0.0) &&
                         (uVar5 = FUN_00acfe80(local_30,iVar9,*(int *)(placementHeader + 0x1c),
                                               *(int *)(placementHeader + 0x20),(undefined4 *)0x0),
                         fVar12 = local_24, (char)uVar5 != '\0')) {
                        fVar12 = *(float *)(placementHeader + 0x4c) +
                                 *(float *)(placementHeader + 0x34);
                      }
                    }
                  }
                  *(float *)(*(int *)(param_1 + 0x10) +
                            ((*(int *)(param_1 + 4) * local_34 + local_28) * *(int *)(param_1 + 8) +
                            local_2c) * 4) = fVar12;
                }
LAB_00a8bf00:
                local_20 = local_20 + 4;
                iVar9 = iVar9 + 1;
              } while (iVar9 < param_5);
            }
            local_30 = local_30 + 1;
            local_1c = local_1c + param_5 * 4;
            iVar6 = local_14;
            this = local_10;
            iVar9 = local_4;
          } while (local_30 < param_4);
        }
        local_34 = local_34 + 1;
        local_18 = local_18 + iVar6;
        if (iVar9 <= local_34) {
          *(undefined1 *)((int)this + 0x220) = 1;
          return;
        }
      } while( true );
    }
  }
  *(undefined1 *)((int)this + 0x220) = 1;
  return;
}


