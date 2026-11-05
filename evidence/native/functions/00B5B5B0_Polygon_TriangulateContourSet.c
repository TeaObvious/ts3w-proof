/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX triangulator plus4stackDWORDs/RET10; success only AL,
   not fullEAX. Empty contour/vertex ranges return false without a promised output reset. Input
   counts plus XY; temporary duplicate coordinates receive seeded small jitter, up to5 retry
   attempts. Final output indices refer to original vertex array, discard near-coincident endpoints
   using binary32 .001 and update output triangle count. Inferred C float index locals contain int
   bit-pattern artifacts: verify MOV/LEA and original instruction indexing, do not numerically
   convert those pseudocode floats. Full child triangulation algorithm not recovered by this parent
   alone. */

undefined4 __thiscall
Polygon_TriangulateContourSet(void *this,int *param_1,int *param_2,int *param_3,uint *param_4)

{
  float fVar1;
  float fVar2;
  float fVar3;
  int *piVar4;
  float *pfVar5;
  undefined4 *puVar6;
  int iVar7;
  int *piVar8;
  int iVar9;
  uint uVar10;
  int *piVar11;
  undefined4 extraout_EAX;
  undefined4 uVar12;
  int iVar13;
  undefined4 *puVar14;
  uint uVar15;
  int iVar16;
  float fVar17;
  float10 fVar18;
  int local_64;
  int local_60;
  int local_5c;
  uint local_58;
  uint local_54 [2];
  char *local_4c;
  float local_48;
  float local_44;
  int local_40;
  void *local_3c;
  int local_38;
  undefined4 local_34;
  char *local_30;
  void *local_2c;
  int local_28;
  undefined1 local_1c [4];
  undefined4 ***local_18;
  undefined4 ***local_14;
  undefined4 *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  piVar8 = param_1;
  if (*param_1 != param_1[1]) {
    piVar8 = (int *)param_2[1];
    if ((int *)*param_2 != piVar8) {
      iVar7 = (int)piVar8 - *param_2 >> 3;
      local_3c = (void *)0x0;
      local_38 = 0;
      local_34 = 0;
      local_30 = "World/TriangulatePolygon/TriangleIndices";
      local_4c = "World/TriangulatePolygon/Vertices";
      FUN_00b57c80(&local_2c,iVar7,&local_4c);
      TreeVariation_Reseed(&local_64,-1);
      local_18 = &local_18;
      iVar16 = 0;
      local_4 = "World/TriangulatePolygon/ptSet";
      local_10 = (undefined4 *)0x0;
      local_c = 0;
      local_8 = 0;
      local_14 = local_18;
      if (0 < iVar7) {
        do {
          local_48 = *(float *)(*param_2 + iVar16 * 8);
          local_44 = *(float *)(*param_2 + 4 + iVar16 * 8);
          piVar8 = (int *)FUN_00b57630(local_1c,&local_40,&local_48);
          if ((undefined4 ****)*piVar8 == &local_18) {
            local_4c = (char *)((uint)local_4c & 0xffffff00);
            FUN_00b57ce0(local_1c,local_54,&local_48);
          }
          else {
            fVar18 = TreeVariation_DrawUniform(&local_64);
            local_48 = (float)(fVar18 * (float10)0.009999999776482582 + (float10)local_48);
            fVar18 = TreeVariation_DrawUniform(&local_64);
            local_44 = (float)(fVar18 * (float10)0.009999999776482582 + (float10)local_44);
          }
          *(float *)((int)local_2c + iVar16 * 8) = local_48;
          *(float *)((int)local_2c + iVar16 * 8 + 4) = local_44;
          iVar16 = iVar16 + 1;
        } while (iVar16 < iVar7);
      }
      uVar15 = param_1[1] - *param_1 >> 2;
      local_48 = (float)(local_28 - (int)local_2c >> 3);
      iVar7 = (int)local_48 + uVar15 * 10;
      local_4c = (char *)0x0;
      local_54[0] = uVar15;
      if (iVar7 * 3 == 0) {
        memmove((void *)(iVar7 * 0xc),(void *)0x0,0);
        local_38 = (iVar7 * -0xc >> 2) * -4;
      }
      else {
        FUN_006e4940(&local_3c,(undefined4 *)0x0,iVar7 * 3,&local_4c);
      }
      *(uint *)((int)this + 0x9c) = (uint)(local_38 - (int)local_3c >> 2) / 3;
      local_4c = (char *)0x0;
      do {
        iVar7 = 1;
        FUN_00b5ae00(this,(int)local_48);
        local_58 = 0;
        if (uVar15 != 0) {
          do {
            local_60 = iVar7;
            iVar16 = *(int *)(*param_1 + local_58 * 4);
            local_40 = iVar16 + -1 + local_60;
            iVar7 = local_60;
            if (iVar16 != 0) {
              puVar14 = (undefined4 *)((int)local_2c + local_60 * 8 + -4);
              iVar9 = local_60 * 0x24;
              iVar13 = local_60;
              local_5c = iVar16;
              do {
                iVar16 = iVar13 + 1;
                *(undefined4 *)(iVar9 + *(int *)((int)this + 0x40)) = puVar14[-1];
                *(undefined4 *)(*(int *)((int)this + 0x40) + 4 + iVar9) = *puVar14;
                if (iVar7 == local_40) {
                  *(int *)(*(int *)((int)this + 0x40) + 0x1c + iVar9) = local_60;
                  *(int *)(*(int *)((int)this + 0x40) + 0x20 + iVar9) = iVar13 + -1;
LAB_00b5b852:
                  iVar13 = *(int *)((int)this + 0x40) + iVar9;
                  *(undefined4 *)(iVar13 + -0x1c) =
                       *(undefined4 *)(*(int *)((int)this + 0x40) + iVar9);
                  *(undefined4 *)(iVar13 + -0x18) = *(undefined4 *)(iVar13 + 4);
                }
                else {
                  if (iVar7 != local_60) {
                    *(int *)(*(int *)((int)this + 0x40) + 0x20 + iVar9) = iVar13 + -1;
                    *(int *)(*(int *)((int)this + 0x40) + 0x1c + iVar9) = iVar16;
                    goto LAB_00b5b852;
                  }
                  *(int *)(*(int *)((int)this + 0x40) + 0x1c + iVar9) = iVar16;
                  *(int *)(*(int *)((int)this + 0x40) + 0x20 + iVar9) = local_40;
                  iVar13 = *(int *)((int)this + 0x40);
                  *(undefined4 *)(iVar13 + 8 + local_40 * 0x24) = *(undefined4 *)(iVar13 + iVar9);
                  *(undefined4 *)(iVar13 + 0xc + local_40 * 0x24) =
                       *(undefined4 *)(iVar13 + 4 + iVar9);
                }
                puVar14 = puVar14 + 2;
                *(undefined1 *)(*(int *)((int)this + 0x40) + 0x10 + iVar9) = 0;
                iVar7 = iVar7 + 1;
                iVar9 = iVar9 + 0x24;
                local_5c = local_5c + -1;
                iVar13 = iVar16;
              } while (local_5c != 0);
              local_5c = 0;
            }
            local_58 = local_58 + 1;
            uVar15 = local_54[0];
          } while (local_58 < local_54[0]);
        }
        FUN_00b5ac80(this,iVar7 - 1U);
        uVar10 = FUN_00b5ae80(this);
        uVar10 = FUN_00b5b330(this,iVar7 - 1U,uVar10,(int *)&local_3c);
        piVar8 = param_3;
        *param_4 = uVar10;
        if (uVar10 < *(uint *)((int)this + 0x9c)) break;
        *(undefined4 *)((int)this + 0x98) = 0;
        *(undefined4 *)((int)this + 0x94) = 0;
        *(undefined4 *)((int)this + 0x90) = 0;
        *(undefined4 *)((int)this + 0x1c) = 0;
        *(undefined4 *)((int)this + 0x18) = 0;
        *(undefined4 *)((int)this + 0x14) = 0;
        *(undefined4 *)this = 0;
        *(undefined4 *)((int)this + 8) = *(undefined4 *)((int)this + 4);
        *(undefined4 *)((int)this + 0x24) = *(undefined4 *)((int)this + 0x20);
        *(undefined4 *)((int)this + 0x34) = *(undefined4 *)((int)this + 0x30);
        *(undefined4 *)((int)this + 0x44) = *(undefined4 *)((int)this + 0x40);
        *(undefined4 *)((int)this + 0x54) = *(undefined4 *)((int)this + 0x50);
        *(undefined4 *)((int)this + 100) = *(undefined4 *)((int)this + 0x60);
        *(undefined4 *)((int)this + 0x74) = *(undefined4 *)((int)this + 0x70);
        *(undefined4 *)((int)this + 0x84) = *(undefined4 *)((int)this + 0x80);
        local_4c = local_4c + 1;
      } while (local_4c < &DAT_00000005);
      local_4c = (char *)0x0;
      if (*param_4 != 0) {
        piVar11 = (int *)((int)local_3c + 8);
        do {
          iVar7 = *param_2;
          fVar1 = *(float *)(iVar7 + -8 + piVar11[-2] * 8);
          param_3 = (int *)(piVar11[-2] + -1);
          fVar2 = *(float *)(iVar7 + -8 + piVar11[-1] * 8);
          iVar16 = piVar11[-1] + -1;
          fVar17 = (float)(*piVar11 + -1);
          local_48 = fVar17;
          local_40 = iVar16;
          if ((((0.001 < ABS(fVar1 - fVar2)) ||
               (0.001 < ABS(*(float *)(iVar7 + 4 + (int)param_3 * 8) -
                            *(float *)(iVar7 + 4 + iVar16 * 8)))) &&
              ((fVar3 = *(float *)(iVar7 + (int)fVar17 * 8), 0.001 < ABS(fVar2 - fVar3) ||
               (0.001 < ABS(*(float *)(iVar7 + 4 + iVar16 * 8) -
                            *(float *)(iVar7 + 4 + (int)fVar17 * 8)))))) &&
             ((0.001 < ABS(fVar1 - fVar3) ||
              (0.001 < ABS(*(float *)(iVar7 + 4 + (int)param_3 * 8) -
                           *(float *)(iVar7 + 4 + (int)fVar17 * 8)))))) {
            piVar4 = (int *)piVar8[1];
            if (piVar4 < (int *)piVar8[2]) {
              piVar8[1] = (int)(piVar4 + 1);
              if (piVar4 != (int *)0x0) {
                *piVar4 = (int)param_3;
              }
            }
            else {
              FUN_00982420(piVar8,piVar4,&param_3);
            }
            piVar4 = (int *)piVar8[1];
            if (piVar4 < (int *)piVar8[2]) {
              piVar8[1] = (int)(piVar4 + 1);
              if (piVar4 != (int *)0x0) {
                *piVar4 = iVar16;
              }
            }
            else {
              FUN_00982420(piVar8,piVar4,&local_40);
            }
            pfVar5 = (float *)piVar8[1];
            if (pfVar5 < (float *)piVar8[2]) {
              piVar8[1] = (int)(pfVar5 + 1);
              if (pfVar5 != (float *)0x0) {
                *pfVar5 = fVar17;
              }
            }
            else {
              FUN_00982420(piVar8,pfVar5,&local_48);
            }
          }
          piVar11 = piVar11 + 3;
          local_4c = local_4c + 1;
        } while (local_4c < (char *)*param_4);
      }
      *param_4 = (uint)(piVar8[1] - *piVar8 >> 2) / 3;
      puVar14 = local_10;
      while (puVar14 != (undefined4 *)0x0) {
        FUN_008b19b0((undefined4 *)*puVar14);
        puVar6 = (undefined4 *)puVar14[1];
        Memory_FreeIfNonNull(puVar14);
        puVar14 = puVar6;
      }
      if (local_2c != (void *)0x0) {
        Memory_FreeIfNonNull(local_2c);
      }
      uVar12 = 0;
      if (local_3c != (void *)0x0) {
        Memory_FreeIfNonNull(local_3c);
        uVar12 = extraout_EAX;
      }
      return CONCAT31((int3)((uint)uVar12 >> 8),1);
    }
  }
  return (uint)piVar8 & 0xffffff00;
}

