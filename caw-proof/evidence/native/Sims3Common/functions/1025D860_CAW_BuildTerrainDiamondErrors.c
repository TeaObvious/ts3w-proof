/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Builds uint16 height-error values for the padded
   power-of-two square grid. Midpoint discrepancy uses the ceiling of the two endpoint heights
   average. Axis midpoints inherit adjoining finer diagonal errors; diagonal midpoints alternate
   direction and inherit four axis errors. Default data flag 0x10C0FD8C is one; the bounded direct
   cross-reference search finds only its read in this routine. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __thiscall CAW_BuildTerrainDiamondErrors(void *this,uint param_1)

{
  ushort uVar1;
  ushort uVar2;
  ushort uVar3;
  ushort uVar4;
  ushort uVar5;
  uint uVar6;
  int iVar7;
  int *piVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  byte bVar12;
  uint uVar13;
  uint uVar14;
  uint uVar15;
  ushort *puVar16;
  ushort *puVar17;
  ushort *puVar18;
  uint uVar19;
  ushort *puVar20;
  int iVar21;
  ushort *puVar22;
  ushort *puVar23;
  uint uVar24;
  bool local_59;
  int local_50;
  int local_44;
  int local_40;
  int local_3c;
  int local_38;
  uint local_34;
  ushort *local_30;
  int local_2c;
  ushort *local_24;
  ushort *local_20;
  uint local_1c;
  
  uVar6 = *(int *)((int)this + 8) * *(int *)((int)this + 8);
  uVar24 = 1 << ((byte)param_1 & 0x1f);
  uVar13 = 0;
  if (uVar6 != 0) {
    do {
      *(undefined2 *)(**(int **)this + 2 + uVar13 * 4) = 0;
      uVar13 = uVar13 + 1;
    } while (uVar13 < uVar6);
  }
  local_20 = (ushort *)0x0;
  local_50 = 0;
  do {
    if (((uint)local_20 & 1) == 0) {
      uVar6 = 0;
      if (uVar24 != 0) {
        do {
          iVar9 = *(int *)(local_50 + *(int *)this);
          uVar13 = (uint)*(ushort *)(iVar9 + 8 + uVar6 * 4) + (uint)*(ushort *)(iVar9 + uVar6 * 4);
          iVar10 = ((uint)*(ushort *)(iVar9 + 4 + uVar6 * 4) - ((int)uVar13 >> 1)) - (uVar13 & 1);
          uVar1 = (ushort)(iVar10 >> 0x1f);
          *(ushort *)(iVar9 + 6 + uVar6 * 4) = ((ushort)iVar10 ^ uVar1) - uVar1;
          uVar6 = uVar6 + 2;
        } while (uVar6 < uVar24);
      }
    }
    else {
      uVar6 = 0;
      if (uVar24 != 0) {
        do {
          iVar10 = *(int *)this;
          uVar13 = (uint)*(ushort *)(*(int *)(iVar10 + -4 + local_50) + uVar6 * 4) +
                   (uint)*(ushort *)(*(int *)(iVar10 + local_50 + 4) + uVar6 * 4);
          iVar9 = uVar6 * 4;
          iVar7 = ((uint)*(ushort *)(*(int *)(iVar10 + local_50) + iVar9) - ((int)uVar13 >> 1)) -
                  (uVar13 & 1);
          uVar1 = (ushort)(iVar7 >> 0x1f);
          *(ushort *)(*(int *)(iVar10 + local_50) + iVar9 + 2) = ((ushort)iVar7 ^ uVar1) - uVar1;
          piVar8 = (int *)(*(int *)this + local_50);
          puVar20 = (ushort *)(*piVar8 + iVar9 + 8);
          uVar13 = (uint)*(ushort *)(piVar8[-1] + 8 + iVar9) +
                   (uint)*(ushort *)(piVar8[1] + iVar9 + 8);
          iVar9 = ((uint)*puVar20 - ((int)uVar13 >> 1)) - (uVar13 & 1);
          uVar1 = (ushort)(iVar9 >> 0x1f);
          uVar6 = uVar6 + 4;
          puVar20[1] = ((ushort)iVar9 ^ uVar1) - uVar1;
        } while (uVar6 < uVar24);
      }
      iVar10 = *(int *)this + local_50;
      iVar9 = uVar24 * 4;
      puVar20 = (ushort *)(*(int *)(*(int *)this + local_50) + iVar9);
      uVar6 = (uint)*(ushort *)(*(int *)(iVar10 + -4) + iVar9) +
              (uint)*(ushort *)(*(int *)(iVar10 + 4) + iVar9);
      iVar9 = ((uint)*puVar20 - ((int)uVar6 >> 1)) - (uVar6 & 1);
      uVar1 = (ushort)(iVar9 >> 0x1f);
      puVar20[1] = ((ushort)iVar9 ^ uVar1) - uVar1;
    }
    local_50 = local_50 + 4;
    local_20 = (ushort *)((int)local_20 + 1);
  } while (local_20 <= uVar24);
  if ((DAT_10c0fd8c != '\0') && (local_34 = 0, param_1 != 0)) {
    do {
      bVar12 = (byte)local_34;
      uVar6 = 1 << (bVar12 & 0x1f);
      uVar13 = 2 << (bVar12 & 0x1f);
      if (local_34 != 0) {
        iVar9 = 1 << (bVar12 - 1 & 0x1f);
        local_3c = uVar6 * 4;
        local_38 = uVar6 * -4;
        local_40 = iVar9 * -4;
        local_44 = iVar9 * 4;
        local_59 = false;
        local_20 = (ushort *)0x0;
        do {
          iVar10 = local_38;
          if (local_20 == (ushort *)0x0) {
            iVar10 = local_3c;
          }
          iVar7 = *(int *)this;
          puVar20 = *(ushort **)(iVar7 + iVar10);
          iVar10 = local_40;
          if (local_20 == (ushort *)0x0) {
            iVar10 = local_44;
          }
          iVar10 = *(int *)(iVar7 + iVar10);
          puVar23 = *(ushort **)(iVar7 + (int)local_20 * 4);
          iVar21 = local_44;
          if (uVar24 <= local_20) {
            iVar21 = local_40;
          }
          iVar21 = *(int *)(iVar7 + iVar21);
          iVar11 = local_3c;
          if (uVar24 <= local_20) {
            iVar11 = local_38;
          }
          puVar16 = *(ushort **)(iVar7 + iVar11);
          if (local_59) {
            iVar7 = ((uint)*puVar23 - ((int)((uint)*puVar16 + (uint)*puVar20) >> 1)) -
                    ((uint)*puVar16 + (uint)*puVar20 & 1);
            uVar4 = (ushort)(iVar7 >> 0x1f);
            uVar4 = ((ushort)iVar7 ^ uVar4) - uVar4;
            puVar23[1] = uVar4;
            uVar1 = *(ushort *)(iVar9 * 4 + 2 + iVar10);
            uVar2 = *(ushort *)(iVar9 * 4 + 2 + iVar21);
            if (uVar4 < uVar1) {
              puVar23[1] = uVar1;
            }
            if (puVar23[1] < uVar2) {
              puVar23[1] = uVar2;
            }
            if (uVar13 < uVar24) {
              puVar22 = puVar23 + uVar13 * 2 + 1;
              local_30 = (ushort *)(iVar21 + 2 + (iVar9 + uVar13) * 4);
              puVar17 = (ushort *)(iVar21 + 2 + (uVar13 - iVar9) * 4);
              puVar18 = puVar20;
              local_1c = uVar13;
              do {
                puVar18 = puVar18 + uVar13 * 2;
                uVar14 = (uint)*(ushort *)(((int)puVar16 - (int)puVar20) + (int)puVar18) +
                         (uint)*puVar18;
                iVar7 = ((uint)puVar22[-1] - ((int)uVar14 >> 1)) - (uVar14 & 1);
                uVar5 = (ushort)(iVar7 >> 0x1f);
                uVar5 = ((ushort)iVar7 ^ uVar5) - uVar5;
                *puVar22 = uVar5;
                uVar1 = *(ushort *)((int)puVar17 + (iVar10 - iVar21));
                uVar2 = *(ushort *)((int)local_30 + (iVar10 - iVar21));
                uVar4 = *local_30;
                uVar3 = *puVar17;
                if (uVar5 < uVar1) {
                  *puVar22 = uVar1;
                }
                if (*puVar22 < uVar2) {
                  *puVar22 = uVar2;
                }
                if (*puVar22 < uVar3) {
                  *puVar22 = uVar3;
                }
                if (*puVar22 < uVar4) {
                  *puVar22 = uVar4;
                }
                local_1c = local_1c + uVar13;
                local_30 = local_30 + uVar13 * 2;
                puVar22 = puVar22 + uVar13 * 2;
                puVar17 = puVar17 + uVar13 * 2;
              } while (local_1c < uVar24);
            }
            iVar7 = ((uint)puVar23[uVar24 * 2] -
                    ((int)((uint)puVar16[uVar24 * 2] + (uint)puVar20[uVar24 * 2]) >> 1)) -
                    ((uint)puVar16[uVar24 * 2] + (uint)puVar20[uVar24 * 2] & 1);
            uVar4 = (ushort)(iVar7 >> 0x1f);
            puVar23 = puVar23 + uVar24 * 2 + 1;
            uVar4 = ((ushort)iVar7 ^ uVar4) - uVar4;
            iVar7 = (uVar24 - iVar9) * 4 + 2;
            *puVar23 = uVar4;
            uVar1 = *(ushort *)(iVar7 + iVar10);
            uVar2 = *(ushort *)(iVar7 + iVar21);
            if (uVar4 < uVar1) {
              *puVar23 = uVar1;
            }
            if (*puVar23 < uVar2) {
              *puVar23 = uVar2;
            }
          }
          else {
            local_30 = (ushort *)0x0;
            if (uVar24 != 0) {
              local_24 = puVar23 + uVar13 * 2;
              puVar20 = puVar23 + uVar6 * 2 + 1;
              puVar16 = (ushort *)(iVar21 + 2 + (iVar9 + uVar6) * 4);
              puVar22 = (ushort *)(iVar9 * 4 + 2 + iVar21);
              do {
                iVar7 = ((uint)puVar20[-1] -
                        ((int)((uint)puVar23[(int)local_30 * 2] + (uint)*local_24) >> 1)) -
                        ((uint)puVar23[(int)local_30 * 2] + (uint)*local_24 & 1);
                uVar5 = (ushort)(iVar7 >> 0x1f);
                uVar5 = ((ushort)iVar7 ^ uVar5) - uVar5;
                *puVar20 = uVar5;
                uVar1 = *(ushort *)((int)puVar22 + (iVar10 - iVar21));
                uVar2 = *(ushort *)((iVar10 - iVar21) + (int)puVar16);
                uVar4 = *puVar22;
                uVar3 = *puVar16;
                if (uVar5 < uVar1) {
                  *puVar20 = uVar1;
                }
                if (*puVar20 < uVar2) {
                  *puVar20 = uVar2;
                }
                if (*puVar20 < uVar4) {
                  *puVar20 = uVar4;
                }
                if (*puVar20 < uVar3) {
                  *puVar20 = uVar3;
                }
                local_30 = (ushort *)((int)local_30 + uVar13);
                local_24 = local_24 + uVar13 * 2;
                puVar20 = puVar20 + uVar13 * 2;
                puVar22 = puVar22 + uVar13 * 2;
                puVar16 = puVar16 + uVar13 * 2;
              } while (local_30 < uVar24);
            }
          }
          local_59 = local_59 == false;
          local_20 = (ushort *)((int)local_20 + uVar6);
          iVar10 = uVar6 * 4;
          local_44 = local_44 + iVar10;
          local_40 = local_40 + iVar10;
          local_3c = local_3c + iVar10;
          local_38 = local_38 + iVar10;
        } while (local_20 <= uVar24);
      }
      local_59 = false;
      if (uVar6 <= uVar24) {
        iVar9 = uVar6 * 8;
        local_2c = 0;
        local_24 = (ushort *)uVar6;
        do {
          iVar10 = local_2c;
          if (local_24 == (ushort *)0x0) {
            iVar10 = iVar9;
          }
          iVar7 = *(int *)this;
          iVar10 = *(int *)(iVar7 + iVar10);
          iVar21 = *(int *)(iVar7 + (int)local_24 * 4);
          iVar11 = iVar9;
          if (uVar24 <= local_24) {
            iVar11 = local_2c;
          }
          iVar7 = *(int *)(iVar7 + iVar11);
          uVar14 = uVar6;
          if (local_59) {
            uVar14 = -uVar6;
          }
          if (uVar6 < uVar24) {
            local_20 = (ushort *)(iVar21 + 2 + uVar6 * 8);
            puVar23 = (ushort *)(iVar21 + 2 + uVar6 * 4);
            puVar20 = (ushort *)(iVar21 + 2);
            uVar19 = uVar6;
            do {
              uVar15 = (uint)*(ushort *)(iVar7 + (uVar14 + uVar19) * 4) +
                       (uint)*(ushort *)(iVar10 + (uVar19 - uVar14) * 4);
              iVar11 = ((uint)puVar23[-1] - ((int)uVar15 >> 1)) - (uVar15 & 1);
              uVar5 = (ushort)(iVar11 >> 0x1f);
              puVar16 = (ushort *)((iVar7 - iVar21) + (int)puVar23);
              uVar5 = ((ushort)iVar11 ^ uVar5) - uVar5;
              *puVar23 = uVar5;
              uVar1 = *(ushort *)((int)puVar16 + (iVar10 - iVar7));
              uVar2 = *puVar16;
              uVar4 = *puVar20;
              uVar3 = *local_20;
              if (uVar5 < uVar1) {
                *puVar23 = uVar1;
              }
              if (*puVar23 < uVar2) {
                *puVar23 = uVar2;
              }
              if (*puVar23 < uVar4) {
                *puVar23 = uVar4;
              }
              if (*puVar23 < uVar3) {
                *puVar23 = uVar3;
              }
              uVar19 = uVar19 + uVar13;
              local_20 = local_20 + uVar13 * 2;
              uVar14 = -uVar14;
              puVar23 = puVar23 + uVar13 * 2;
              puVar20 = puVar20 + uVar13 * 2;
            } while (uVar19 < uVar24);
          }
          local_59 = local_59 == false;
          local_24 = (ushort *)((int)local_24 + uVar13);
          iVar9 = iVar9 + uVar13 * 4;
          local_2c = local_2c + uVar13 * 4;
        } while (local_24 <= uVar24);
      }
      local_34 = local_34 + 1;
    } while (local_34 < param_1);
  }
  return;
}

