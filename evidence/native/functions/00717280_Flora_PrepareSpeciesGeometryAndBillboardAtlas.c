/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 original contract. ECX species renderer, one decoded geometry pointer stack word,
   RET4, ALsuccess. Complete existing function retained; annotation specifically closes tail717FA1
   onward, not all earlier mesh-generation semantics. Copy12DWORD billboard descriptor from
   geometry+B0 to renderer+2B0; cap local retained UV-row count at32. For raw rectangle endpoints
   C0,C2, center=(C0+C2)*0.5, inset(C)=C*0.984375+center*0.015625 with separate SSE operations.
   Store(inset(C0).x,inset(C0).y,inset(C0).x-inset(C2).x,inset(C0).y-inset(C2).y) in
   renderer+A0+row*10hex. Zero unused32-row tail. Copied descriptor image-count field remains
   unmodified; do not infer universal malformed-count safety. This is32 float4 rectangles, not eight
   nearest-view rows. */

uint __thiscall Flora_PrepareSpeciesGeometryAndBillboardAtlas(void *this,int param_1)

{
  float fVar1;
  float fVar2;
  uint *puVar3;
  short sVar4;
  float fVar5;
  float fVar6;
  bool bVar7;
  undefined1 *puVar8;
  undefined4 uVar9;
  int iVar10;
  undefined3 extraout_var;
  undefined4 *puVar11;
  int *piVar12;
  uint uVar13;
  undefined2 *puVar14;
  uint uVar15;
  undefined3 extraout_var_00;
  byte *pbVar16;
  undefined3 extraout_var_01;
  ushort uVar17;
  uint uVar18;
  float *pfVar19;
  short *psVar20;
  int *piVar21;
  int *piVar22;
  undefined4 *puVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  int *piStack_a4;
  uint uStack_a0;
  int *piStack_9c;
  int *piStack_98;
  undefined1 *puStack_94;
  int *local_90;
  int *local_8c;
  undefined1 *puStack_88;
  int *piStack_84;
  int *piStack_80;
  uint uStack_7c;
  int local_78;
  undefined1 *local_74;
  
  puVar8 = (undefined1 *)FUN_0061abf0();
  piVar12 = *(int **)(*(int *)((int)this + 0x2e0) + 0x34);
  local_90 = piVar12;
  local_74 = puVar8;
  uVar9 = FUN_007b87e0(piVar12);
  *(undefined4 *)((int)this + 0x310) = uVar9;
  iVar10 = FUN_00c93640((int)piVar12);
  *(int *)((int)this + 0x314) = iVar10;
  if (*(int *)((int)this + 0x310) == 0) {
    local_78 = 0;
  }
  else {
    local_78 = *(int *)(param_1 + 0x10);
  }
  if (iVar10 == 0) {
    local_8c = (int *)0x0;
  }
  else {
    local_8c = *(int **)(param_1 + 0x68);
  }
  iVar10 = (int)local_8c + local_78;
  if (iVar10 != 0) {
    bVar7 = VertexFormatCache_GetOrCreate
                      (puVar8,(NativeVertexElement8 *)&DAT_00ffcfa8,6,(void **)((int)this + 0x2f8));
    uVar13 = CONCAT31(extraout_var,bVar7);
    if (!bVar7) goto LAB_00717314;
    puVar11 = (undefined4 *)FUN_004e4520(0x20,4,0,"SpeedTree/VertexBuffer",0);
    if (puVar11 == (undefined4 *)0x0) {
      piVar12 = (int *)0x0;
    }
    else {
      piVar12 = FUN_0061aa60(puVar11);
    }
    *(int **)((int)this + 0x2fc) = piVar12;
    (**(code **)(*piVar12 + 4))();
    uVar13 = FUN_0061a8a0(*(void **)((int)this + 0x2fc),*(int *)((int)this + 0x2f4) * iVar10 * 0x28,
                          0);
    if ((char)uVar13 == '\0') goto LAB_00717314;
    puVar14 = (undefined2 *)FUN_0061a560(*(void **)((int)this + 0x2fc),0,0,0);
    if (puVar14 != (undefined2 *)0x0) {
      piVar12 = (int *)0x0;
      if (*(int *)((int)this + 0x2f4) != 0) {
        do {
          piStack_a4 = piVar12;
          puVar14 = FUN_00716300(puVar14,param_1,(char *)&piStack_a4);
          piVar12 = (int *)((int)piVar12 + 1);
        } while (piVar12 < *(int **)((int)this + 0x2f4));
      }
      piVar12 = (int *)0x0;
      if (*(int *)((int)this + 0x2f4) != 0) {
        do {
          piStack_a4 = piVar12;
          puVar14 = FUN_00716300(puVar14,param_1 + 0x58,(char *)&piStack_a4);
          piVar12 = (int *)((int)piVar12 + 1);
        } while (piVar12 < *(int **)((int)this + 0x2f4));
      }
      FUN_0061a5d0(*(int *)((int)this + 0x2fc));
    }
    FUN_00c221f0(this,*(uint *)((int)this + 0x310));
    if ((local_78 != 0) && (piStack_98 = (int *)0x0, *(int *)((int)this + 0x310) != 0)) {
      do {
        if (0 < *(int *)(*(int *)(param_1 + 4) + (int)piStack_98 * 4)) {
          uVar15 = **(uint **)(*(int *)(param_1 + 8) + (int)piStack_98 * 4);
          puVar11 = (undefined4 *)FUN_004e4520(0x24,4,0,"SpeedTree/IndexBuffer",0);
          if (puVar11 == (undefined4 *)0x0) {
            piStack_84 = (int *)0x0;
          }
          else {
            piStack_84 = FUN_006176a0(puVar11);
          }
          piVar12 = piStack_84;
          *(int **)(*(int *)this + (int)piStack_98 * 4) = piStack_84;
          (**(code **)(*piStack_84 + 4))();
          uVar13 = FUN_006175b0(piVar12,*(int *)((int)this + 0x2f4) * uVar15 +
                                        *(int *)((int)this + 0x2f4) * 2 + -2,0,0);
          if ((char)uVar13 == '\0') goto LAB_00717314;
          puStack_88 = FUN_00617380(piStack_84,0,0,0);
          if (puStack_88 != (undefined1 *)0x0) {
            piStack_a4 = (int *)**(undefined4 **)(*(int *)(param_1 + 0xc) + (int)piStack_98 * 4);
            uStack_a0 = 0;
            if (*(int *)((int)this + 0x2f4) != 0) {
              piStack_9c = (int *)0x0;
              uStack_7c = 0;
              puStack_94 = (undefined1 *)0x0;
              do {
                uVar13 = 0;
                if (uVar15 != 0) {
                  psVar20 = (short *)(puStack_88 + (uStack_7c & 0xffff) * 2);
                  do {
                    *psVar20 = (short)piStack_a4[uVar13] + (short)puStack_94;
                    uVar13 = uVar13 + 1;
                    psVar20 = psVar20 + 1;
                  } while (uVar13 < uVar15);
                }
                if ((short)uStack_a0 != 0) {
                  *(undefined2 *)((int)(puStack_88 + (uStack_7c & 0xffff) * 2) + -2) =
                       *(undefined2 *)(puStack_88 + (uStack_7c & 0xffff) * 2);
                }
                if (piStack_9c < (int *)(*(int *)((int)this + 0x2f4) + -1)) {
                  iVar10 = (uStack_7c & 0xffff) + uVar15;
                  *(undefined2 *)(puStack_88 + iVar10 * 2) =
                       *(undefined2 *)(puStack_88 + iVar10 * 2 + -2);
                }
                puStack_94 = puStack_94 + local_78;
                uStack_a0 = uStack_a0 + 1;
                uStack_7c = uStack_7c + uVar15 + 2;
                piStack_9c = (int *)(uStack_a0 & 0xffff);
              } while (piStack_9c < *(int **)((int)this + 0x2f4));
            }
            FUN_0061a5d0((int)piStack_84);
          }
        }
        piStack_98 = (int *)((int)piStack_98 + 1);
      } while (piStack_98 < *(int **)((int)this + 0x310));
    }
    puVar11 = *(undefined4 **)((int)this + 0x14);
    uVar13 = *(uint *)((int)this + 0x314);
    uVar15 = (int)puVar11 - *(int *)((int)this + 0x10) >> 2;
    if (uVar15 < uVar13) {
      piStack_a4 = (int *)0x0;
      FUN_006e4940((void *)((int)this + 0x10),puVar11,uVar13 - uVar15,&piStack_a4);
    }
    else {
      piStack_a4 = (int *)(*(int *)((int)this + 0x10) + uVar13 * 4);
      memmove(piStack_a4,puVar11,0);
      *(int *)((int)this + 0x14) =
           *(int *)((int)this + 0x14) + ((int)puVar11 - (int)piStack_a4 >> 2) * -4;
    }
    if ((local_8c != (int *)0x0) && (uStack_a0 = 0, *(int *)((int)this + 0x314) != 0)) {
      do {
        if (0 < *(int *)(*(int *)(param_1 + 0x5c) + uStack_a0 * 4)) {
          uVar15 = **(uint **)(*(int *)(param_1 + 0x60) + uStack_a0 * 4);
          puVar11 = (undefined4 *)FUN_004e4520(0x24,4,0,"SpeedTree/IndexBuffer",0);
          if (puVar11 == (undefined4 *)0x0) {
            piStack_98 = (int *)0x0;
          }
          else {
            piStack_98 = FUN_006176a0(puVar11);
          }
          *(int **)(*(int *)((int)this + 0x10) + uStack_a0 * 4) = piStack_98;
          (**(code **)(*piStack_98 + 4))();
          uVar13 = FUN_006175b0(piStack_98,
                                *(int *)((int)this + 0x2f4) * uVar15 +
                                *(int *)((int)this + 0x2f4) * 2 + -2,0,0);
          if ((char)uVar13 == '\0') goto LAB_00717314;
          puStack_94 = FUN_00617380(piStack_98,0,0,0);
          if (puStack_94 != (undefined1 *)0x0) {
            piStack_a4 = (int *)**(undefined4 **)(*(int *)(param_1 + 100) + uStack_a0 * 4);
            piStack_84 = (int *)0x0;
            if (*(int *)((int)this + 0x2f4) != 0) {
              puStack_88 = (undefined1 *)0x0;
              uVar13 = 0;
              piStack_9c = (int *)0x0;
              do {
                uVar17 = *(short *)((int)this + 0x2f4) * (short)local_78 + (short)piStack_9c;
                piStack_80 = (int *)(uint)uVar17;
                uVar18 = 0;
                if (uVar15 != 0) {
                  psVar20 = (short *)(puStack_94 + (uVar13 & 0xffff) * 2);
                  do {
                    piVar12 = piStack_a4 + uVar18;
                    uVar18 = uVar18 + 1;
                    *psVar20 = (short)*piVar12 + uVar17;
                    psVar20 = psVar20 + 1;
                  } while (uVar18 < uVar15);
                }
                if ((short)piStack_84 != 0) {
                  *(undefined2 *)((int)(puStack_94 + (uVar13 & 0xffff) * 2) + -2) =
                       *(undefined2 *)(puStack_94 + (uVar13 & 0xffff) * 2);
                }
                if (puStack_88 < (undefined1 *)(*(int *)((int)this + 0x2f4) + -1)) {
                  *(undefined2 *)(puStack_94 + ((uVar13 & 0xffff) + uVar15) * 2) =
                       *(undefined2 *)((int)(puStack_94 + ((uVar13 & 0xffff) + uVar15) * 2) + -2);
                }
                piStack_9c = (int *)((int)piStack_9c + (int)local_8c);
                piStack_84 = (int *)((int)piStack_84 + 1);
                puStack_88 = (undefined1 *)((uint)piStack_84 & 0xffff);
                uVar13 = uVar13 + uVar15 + 2;
              } while (puStack_88 < *(undefined1 **)((int)this + 0x2f4));
            }
            FUN_0061a5d0((int)piStack_98);
          }
        }
        uStack_a0 = uStack_a0 + 1;
      } while (uStack_a0 < *(uint *)((int)this + 0x314));
    }
  }
  iVar10 = FUN_007b87f0(local_90);
  *(int *)((int)this + 0x318) = iVar10;
  puStack_88 = *(undefined1 **)(param_1 + 0x180);
  local_8c = (int *)0x0;
  uStack_7c = 0;
  piStack_84 = (int *)0x0;
  puStack_94 = (undefined1 *)0x0;
  piStack_80 = (int *)0x0;
  if (iVar10 != 0) {
    piStack_a4 = (int *)(puStack_88 + 0x44);
    do {
      piVar12 = piStack_a4;
      uVar13 = 0;
      piVar21 = (int *)0x0;
      piStack_98 = (int *)0x0;
      piStack_9c = (int *)0x0;
      uStack_a0 = 0;
      local_78 = 0;
      if (piStack_a4[-0xf] != 0) {
        local_90 = (int *)piStack_a4[-0xb];
        do {
          piVar22 = *(int **)(*piStack_a4 + 0x20 + (uint)*(byte *)((int)local_90 + uVar13) * 0x24);
          if (piVar22 == (int *)0x0) {
            piStack_98 = piStack_98 + 1;
            uStack_a0 = uStack_a0 + 6;
          }
          else {
            piVar21 = (int *)((int)piVar21 + *piVar22);
            local_78 = local_78 + piVar22[6];
          }
          uVar13 = uVar13 + 1;
        } while (uVar13 < (uint)piStack_a4[-0xf]);
        piStack_9c = piVar21;
      }
      piVar22 = piStack_9c;
      piVar21 = *(int **)((int)this + 0x44);
      if (piVar21 < *(int **)((int)this + 0x48)) {
        *(int **)((int)this + 0x44) = piVar21 + 1;
        if (piVar21 != (int *)0x0) {
          *piVar21 = (int)piStack_98;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0x40),piVar21,&piStack_98);
      }
      piVar21 = *(int **)((int)this + 0x54);
      if (piVar21 < *(int **)((int)this + 0x58)) {
        *(int **)((int)this + 0x54) = piVar21 + 1;
        if (piVar21 != (int *)0x0) {
          *piVar21 = (int)piVar22;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0x50),piVar21,&piStack_9c);
        piVar22 = piStack_9c;
      }
      puVar3 = *(uint **)((int)this + 100);
      if (puVar3 < *(uint **)((int)this + 0x68)) {
        *(uint **)((int)this + 100) = puVar3 + 1;
        if (puVar3 != (uint *)0x0) {
          *puVar3 = uStack_a0;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0x60),puVar3,&uStack_a0);
      }
      piVar21 = *(int **)((int)this + 0x74);
      if (piVar21 < *(int **)((int)this + 0x78)) {
        *(int **)((int)this + 0x74) = piVar21 + 1;
        if (piVar21 != (int *)0x0) {
          *piVar21 = local_78;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0x70),piVar21,&local_78);
      }
      piVar21 = *(int **)((int)this + 0x84);
      if (piVar21 < *(int **)((int)this + 0x88)) {
        *(int **)((int)this + 0x84) = piVar21 + 1;
        if (piVar21 != (int *)0x0) {
          *piVar21 = (int)piStack_84;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0x80),piVar21,&piStack_84);
      }
      piVar21 = *(int **)((int)this + 0x94);
      if (piVar21 < *(int **)((int)this + 0x98)) {
        *(int **)((int)this + 0x94) = piVar21 + 1;
        if (piVar21 != (int *)0x0) {
          *piVar21 = (int)puStack_94;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0x90),piVar21,&puStack_94);
      }
      uStack_7c = uStack_7c + (int)piVar22;
      puStack_94 = puStack_94 + *(int *)((int)this + 0x2f4) * (int)piVar22 * 0x34;
      local_8c = (int *)((int)local_8c + (int)piStack_98);
      piStack_84 = piStack_84 + *(int *)((int)this + 0x2f4) * (int)piStack_98 * 10;
      piStack_80 = (int *)((int)piStack_80 + 1);
      piStack_a4 = piVar12 + 0x12;
    } while (piStack_80 < *(int **)((int)this + 0x318));
    if (local_8c != (int *)0x0) {
      *(undefined1 *)((int)this + 0x32c) = 1;
      bVar7 = VertexFormatCache_GetOrCreate
                        (local_74,(NativeVertexElement8 *)&DAT_00ffcf60,7,
                         (void **)((int)this + 0x300));
      uVar13 = CONCAT31(extraout_var_00,bVar7);
      if (!bVar7) goto LAB_00717314;
      puVar11 = (undefined4 *)FUN_004e4520(0x20,4,0,"SpeedTree/VertexBuffer",0);
      if (puVar11 == (undefined4 *)0x0) {
        piVar12 = (int *)0x0;
      }
      else {
        piVar12 = FUN_0061aa60(puVar11);
      }
      *(int **)((int)this + 0x304) = piVar12;
      (**(code **)(*piVar12 + 4))();
      uVar13 = FUN_0061a8a0(*(void **)((int)this + 0x304),
                            *(int *)((int)this + 0x2f4) * (int)local_8c * 0x28,0);
      if ((char)uVar13 == '\0') goto LAB_00717314;
      pbVar16 = (byte *)FUN_0061a560(*(void **)((int)this + 0x304),0,0,0);
      if (pbVar16 != (byte *)0x0) {
        piStack_a4 = (int *)0x0;
        if (*(int *)((int)this + 0x318) != 0) {
          puVar8 = puStack_88;
          do {
            piVar12 = (int *)0x0;
            if (*(int *)((int)this + 0x2f4) != 0) {
              do {
                local_90 = piVar12;
                pbVar16 = TreeLeaves_WriteCardVertices(pbVar16,puVar8,(byte *)&local_90);
                piVar12 = (int *)((int)piVar12 + 1);
              } while (piVar12 < *(int **)((int)this + 0x2f4));
            }
            piStack_a4 = (int *)((int)piStack_a4 + 1);
            puVar8 = puVar8 + 0x48;
          } while (piStack_a4 < *(int **)((int)this + 0x318));
        }
        FUN_0061a5d0(*(int *)((int)this + 0x304));
      }
      puVar11 = *(undefined4 **)((int)this + 0x24);
      uVar13 = *(uint *)((int)this + 0x318);
      uVar15 = (int)puVar11 - *(int *)((int)this + 0x20) >> 2;
      if (uVar15 < uVar13) {
        local_90 = (int *)0x0;
        FUN_006e4940((void *)((int)this + 0x20),puVar11,uVar13 - uVar15,&local_90);
      }
      else {
        local_90 = (int *)(*(int *)((int)this + 0x20) + uVar13 * 4);
        memmove(local_90,puVar11,0);
        *(int *)((int)this + 0x24) =
             *(int *)((int)this + 0x24) + ((int)puVar11 - (int)local_90 >> 2) * -4;
      }
      local_8c = (int *)0x0;
      if (*(int *)((int)this + 0x318) != 0) {
        do {
          uStack_a0 = (int)local_8c * 4;
          piVar12 = (int *)0x0;
          if (*(int *)(uStack_a0 + *(int *)((int)this + 0x40)) != 0) {
            puVar11 = (undefined4 *)FUN_004e4520(0x24,4,0,"SpeedTree/IndexBuffer",0);
            if (puVar11 == (undefined4 *)0x0) {
              piStack_9c = (int *)0x0;
            }
            else {
              piStack_9c = FUN_006176a0(puVar11);
            }
            piVar21 = piStack_9c;
            *(int **)(uStack_a0 + *(int *)((int)this + 0x20)) = piStack_9c;
            (**(code **)(*piStack_9c + 4))();
            uVar13 = FUN_006175b0(piVar21,*(int *)(*(int *)((int)this + 0x60) + uStack_a0) *
                                          *(int *)((int)this + 0x2f4),0,0);
            if ((char)uVar13 == '\0') goto LAB_00717314;
            puVar14 = (undefined2 *)
                      FUN_00617380(*(void **)(*(int *)((int)this + 0x20) + uStack_a0),0,0,0);
            if (puVar14 != (undefined2 *)0x0) {
              piStack_80 = (int *)0x0;
              if (*(int *)((int)this + 0x2f4) != 0) {
                do {
                  uVar13 = 0;
                  if (*(int *)(uStack_a0 + *(int *)((int)this + 0x40)) != 0) {
                    uVar15 = (int)piVar12 + 2U & 0xffff;
                    do {
                      *puVar14 = (short)piVar12;
                      sVar4 = (short)uVar15;
                      puVar14[1] = sVar4 + -1;
                      puVar14[3] = (short)piVar12;
                      piVar12 = piVar12 + 1;
                      puVar14[2] = sVar4;
                      puVar14[4] = sVar4;
                      puVar14[5] = sVar4 + 1;
                      uVar13 = uVar13 + 4;
                      uVar15 = uVar15 + 4;
                      puVar14 = puVar14 + 6;
                      piStack_a4 = piVar12;
                    } while (uVar13 < *(uint *)(uStack_a0 + *(int *)((int)this + 0x40)));
                  }
                  piStack_80 = (int *)((int)piStack_80 + 1);
                  piVar21 = piStack_9c;
                } while (piStack_80 < *(int **)((int)this + 0x2f4));
              }
              FUN_0061a5d0((int)piVar21);
            }
          }
          local_8c = (int *)((int)local_8c + 1);
        } while (local_8c < *(int **)((int)this + 0x318));
      }
    }
    uVar15 = uStack_7c;
    if (uStack_7c != 0) {
      *(undefined1 *)((int)this + 0x32d) = 1;
      bVar7 = VertexFormatCache_GetOrCreate
                        (local_74,(NativeVertexElement8 *)&DAT_00ffcf18,9,
                         (void **)((int)this + 0x308));
      uVar13 = CONCAT31(extraout_var_01,bVar7);
      if (!bVar7) goto LAB_00717314;
      puVar11 = (undefined4 *)FUN_004e4520(0x20,4,0,"SpeedTree/VertexBuffer",0);
      if (puVar11 == (undefined4 *)0x0) {
        piVar12 = (int *)0x0;
      }
      else {
        piVar12 = FUN_0061aa60(puVar11);
      }
      *(int **)((int)this + 0x30c) = piVar12;
      (**(code **)(*piVar12 + 4))();
      uVar13 = FUN_0061a8a0(*(void **)((int)this + 0x30c),
                            *(int *)((int)this + 0x2f4) * uVar15 * 0x34,0);
      if ((char)uVar13 == '\0') goto LAB_00717314;
      pbVar16 = (byte *)FUN_0061a560(*(void **)((int)this + 0x30c),0,0,0);
      if (pbVar16 != (byte *)0x0) {
        local_74 = (undefined1 *)0x0;
        if (*(int *)((int)this + 0x318) != 0) {
          puVar8 = puStack_88;
          do {
            piVar12 = (int *)0x0;
            if (*(int *)((int)this + 0x2f4) != 0) {
              do {
                local_90 = piVar12;
                pbVar16 = TreeLeaves_WriteMeshVertices(pbVar16,puVar8,(byte *)&local_90);
                piVar12 = (int *)((int)piVar12 + 1);
              } while (piVar12 < *(int **)((int)this + 0x2f4));
            }
            local_74 = local_74 + 1;
            puVar8 = puVar8 + 0x48;
          } while (local_74 < *(undefined1 **)((int)this + 0x318));
        }
        FUN_0061a5d0(*(int *)((int)this + 0x30c));
      }
      puVar11 = *(undefined4 **)((int)this + 0x34);
      uVar13 = *(uint *)((int)this + 0x318);
      uVar15 = (int)puVar11 - *(int *)((int)this + 0x30) >> 2;
      if (uVar15 < uVar13) {
        local_90 = (int *)0x0;
        FUN_006e4940((void *)((int)this + 0x30),puVar11,uVar13 - uVar15,&local_90);
      }
      else {
        local_90 = (int *)(*(int *)((int)this + 0x30) + uVar13 * 4);
        memmove(local_90,puVar11,0);
        *(int *)((int)this + 0x34) =
             *(int *)((int)this + 0x34) + ((int)puVar11 - (int)local_90 >> 2) * -4;
      }
      uStack_7c = 0;
      if (*(int *)((int)this + 0x318) != 0) {
        puStack_94 = puStack_88;
        do {
          iVar10 = uStack_7c * 4;
          puStack_88 = (undefined1 *)0x0;
          if (*(int *)(iVar10 + *(int *)((int)this + 0x50)) != 0) {
            puVar11 = (undefined4 *)FUN_004e4520(0x24,4,0,"SpeedTree/IndexBuffer",0);
            if (puVar11 == (undefined4 *)0x0) {
              local_8c = (int *)0x0;
            }
            else {
              local_8c = FUN_006176a0(puVar11);
            }
            piVar12 = local_8c;
            *(int **)(iVar10 + *(int *)((int)this + 0x30)) = local_8c;
            (**(code **)(*local_8c + 4))();
            uVar13 = FUN_006175b0(piVar12,*(int *)(*(int *)((int)this + 0x70) + iVar10) *
                                          *(int *)((int)this + 0x2f4),0,0);
            if ((char)uVar13 == '\0') goto LAB_00717314;
            puVar8 = FUN_00617380(*(void **)(*(int *)((int)this + 0x30) + iVar10),0,0,0);
            local_74 = puVar8;
            if (puVar8 != (undefined1 *)0x0) {
              piStack_80 = *(int **)(puStack_94 + 8);
              piStack_9c = (int *)0x0;
              if (*(int *)((int)this + 0x2f4) != 0) {
                do {
                  piStack_a4 = (int *)0x0;
                  if (piStack_80 != (int *)0x0) {
                    do {
                      piVar12 = *(int **)(*(int *)(puStack_94 + 0x44) + 0x20 +
                                         (uint)*(byte *)((int)piStack_a4 +
                                                        *(int *)(puStack_94 + 0x18)) * 0x24);
                      if (piVar12 != (int *)0x0) {
                        uVar13 = piVar12[6];
                        uVar15 = 0;
                        if (uVar13 != 0) {
                          do {
                            *(short *)(local_74 + uVar15 * 2) =
                                 *(short *)(piVar12[7] + uVar15 * 4) + (short)puStack_88;
                            uVar15 = uVar15 + 1;
                            puVar8 = local_74;
                          } while (uVar15 < uVar13);
                        }
                        puStack_88 = puStack_88 + *piVar12;
                        puVar8 = puVar8 + uVar13 * 2;
                        local_74 = puVar8;
                      }
                      piStack_a4 = (int *)((int)piStack_a4 + 1);
                    } while (piStack_a4 < piStack_80);
                  }
                  piStack_9c = (int *)((int)piStack_9c + 1);
                } while (piStack_9c < *(int **)((int)this + 0x2f4));
              }
              FUN_0061a5d0((int)local_8c);
            }
          }
          puStack_94 = puStack_94 + 0x48;
          uStack_7c = uStack_7c + 1;
        } while (uStack_7c < *(uint *)((int)this + 0x318));
      }
    }
  }
  uVar13 = Flora_SelectNearShaderDefinitions((int)this);
  if ((char)uVar13 != '\0') {
    *(undefined4 *)((int)this + 0x2ec) = *(undefined4 *)(*(int *)(param_1 + 0x180) + 0xc);
    *(undefined4 *)((int)this + 0x2f0) = *(undefined4 *)(*(int *)(param_1 + 0x180) + 0x10);
    puVar11 = (undefined4 *)(param_1 + 0xb0);
    puVar23 = (undefined4 *)((int)this + 0x2b0);
    for (iVar10 = 0xc; fVar6 = DAT_00ffcf10, iVar10 != 0; iVar10 = iVar10 + -1) {
      *puVar23 = *puVar11;
      puVar11 = puVar11 + 1;
      puVar23 = puVar23 + 1;
    }
    uVar13 = *(uint *)((int)this + 0x2b8);
    if (0x20 < uVar13) {
      uVar13 = 0x20;
    }
    if (0 < (int)uVar13) {
      param_1 = (int)this + 0xa0;
      pfVar19 = (float *)(*(int *)((int)this + 700) + 0x10);
      uVar15 = uVar13;
      do {
        fVar5 = DAT_00fa2ba4;
        fVar1 = pfVar19[1];
        fVar2 = *pfVar19;
        fVar25 = pfVar19[-3];
        fVar27 = (fVar1 + fVar25) * _DAT_00f9b5b4;
        fVar26 = (pfVar19[-4] + fVar2) * _DAT_00f9b5b4 * DAT_00fa2ba4;
        fVar24 = pfVar19[-4] * fVar6 + fVar26;
        *(float *)param_1 = fVar24;
        *(float *)(param_1 + 4) = *(float *)(param_1 + 4);
        *(float *)(param_1 + 8) = *(float *)(param_1 + 8);
        *(float *)(param_1 + 0xc) = *(float *)(param_1 + 0xc);
        fVar27 = fVar27 * fVar5;
        fVar25 = fVar25 * fVar6 + fVar27;
        *(float *)param_1 = *(float *)param_1;
        *(float *)(param_1 + 4) = fVar25;
        *(float *)(param_1 + 8) = *(float *)(param_1 + 8);
        *(float *)(param_1 + 0xc) = *(float *)(param_1 + 0xc);
        *(float *)param_1 = *(float *)param_1;
        *(float *)(param_1 + 4) = *(float *)(param_1 + 4);
        *(float *)(param_1 + 8) = fVar24 - (fVar2 * fVar6 + fVar26);
        *(float *)(param_1 + 0xc) = *(float *)(param_1 + 0xc);
        *(float *)param_1 = *(float *)param_1;
        *(float *)(param_1 + 4) = *(float *)(param_1 + 4);
        *(float *)(param_1 + 8) = *(float *)(param_1 + 8);
        *(float *)(param_1 + 0xc) = fVar25 - (fVar1 * fVar6 + fVar27);
        param_1 = param_1 + 0x10;
        pfVar19 = pfVar19 + 8;
        uVar15 = uVar15 - 1;
      } while (uVar15 != 0);
    }
    if (uVar13 < 0x20) {
      param_1 = (uVar13 + 10) * 0x10 + (int)this;
      iVar10 = 0x20 - uVar13;
      do {
        *(float *)param_1 = 0.0;
        *(float *)(param_1 + 4) = *(float *)(param_1 + 4);
        *(float *)(param_1 + 8) = *(float *)(param_1 + 8);
        *(float *)(param_1 + 0xc) = *(float *)(param_1 + 0xc);
        *(float *)param_1 = *(float *)param_1;
        *(float *)(param_1 + 4) = 0.0;
        *(float *)(param_1 + 8) = *(float *)(param_1 + 8);
        *(float *)(param_1 + 0xc) = *(float *)(param_1 + 0xc);
        *(float *)param_1 = *(float *)param_1;
        *(float *)(param_1 + 4) = *(float *)(param_1 + 4);
        *(float *)(param_1 + 8) = 0.0;
        *(float *)(param_1 + 0xc) = *(float *)(param_1 + 0xc);
        *(float *)param_1 = *(float *)param_1;
        *(float *)(param_1 + 4) = *(float *)(param_1 + 4);
        *(float *)(param_1 + 8) = *(float *)(param_1 + 8);
        *(float *)(param_1 + 0xc) = 0.0;
        param_1 = param_1 + 0x10;
        iVar10 = iVar10 + -1;
      } while (iVar10 != 0);
    }
    return CONCAT31((int3)((uint)param_1 >> 8),1);
  }
LAB_00717314:
  return uVar13 & 0xffffff00;
}

