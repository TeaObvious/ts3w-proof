/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Analyst PC1.67 original instruction review. Primary map renderer+10F0
   storesGUID,+20targetRGBA,+30startRGBA,+40sampledRGBA,+50durations4,+60elapsed4. Adds supplied
   floatdelta to all4 elapsed, MAXPS0/MINPSduration, divides perlane, blends start*(1-f)+target*f.
   Finite completion threshold: pairwise float32 sum(f3+f1)+(f2+f0)>=binary32(3.99), then
   exacttarget+endpointnotify and erase. COMISS/JBE also takes unordered completion; invalid inputs
   not normalized here. Missing sceneobject erasesnode. Full body also advances separate second
   transition map/other renderer state; do not conflate second-map .98 threshold with this RGBA map.
    */

void __thiscall Renderer_AdvanceObjectVisualTransitions(void *this,float delta)

{
  float *pfVar1;
  float *pfVar2;
  undefined4 *puVar3;
  bool bVar4;
  bool bVar5;
  int *piVar6;
  void *pvVar7;
  int iVar8;
  int *piVar9;
  float *pfVar10;
  int iVar11;
  float fVar12;
  undefined1 auVar13 [16];
  float fVar14;
  float fVar15;
  float fVar16;
  float local_54;
  float local_50;
  int *local_4c;
  undefined4 *local_40;
  int local_3c;
  int local_38;
  int *local_34;
  int local_30 [4];
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if ((*(int *)((int)this + 0x1104) != 0) &&
     (piVar9 = *(int **)((int)this + 0x10f8),
     *(int **)((int)this + 0x10f8) != (int *)((int)this + 0x10f4))) {
    do {
      local_40 = (undefined4 *)piVar9[4];
      local_3c = piVar9[5];
      RenderGuidMap_FindIterator((void *)((int)this + 4),&local_38,(byte *)&local_40);
      if ((local_38 == *(int *)((int)this + 0x1028)) ||
         ((local_38 == 0 || (pvVar7 = (void *)(local_38 + -8), pvVar7 == (void *)0x0)))) {
LAB_0070143d:
        *(int *)((int)this + 0x1104) = *(int *)((int)this + 0x1104) + -1;
        piVar6 = FUN_004e1030(piVar9);
        FUN_004e1330(piVar9,(int *)((int)this + 0x10f4));
        Memory_FreeIfNonNull(piVar9);
      }
      else {
        piVar9[0x18] = (int)(delta + (float)piVar9[0x18]);
        piVar9[0x19] = (int)(delta + (float)piVar9[0x19]);
        piVar9[0x1a] = (int)(delta + (float)piVar9[0x1a]);
        piVar9[0x1b] = (int)(delta + (float)piVar9[0x1b]);
                    /* RGBA map has per-lane times and samples. Verify SIMD COPY/float lanes;
                       decompiler pointer/int casts do not imply integer interpolation. */
        auVar13 = maxps(*(undefined1 (*) [16])(piVar9 + 0x18),ZEXT816(0));
        auVar13 = minps(auVar13,*(undefined1 (*) [16])(piVar9 + 0x14));
        *(undefined1 (*) [16])(piVar9 + 0x18) = auVar13;
        auVar13 = divps(*(undefined1 (*) [16])(piVar9 + 0x18),*(undefined1 (*) [16])(piVar9 + 0x14))
        ;
        fVar12 = auVar13._0_4_;
        fVar14 = auVar13._4_4_;
        fVar15 = auVar13._8_4_;
        fVar16 = auVar13._12_4_;
        local_50 = fVar16 * 1.0 + fVar14 * 1.0 + fVar15 * 1.0 + fVar12 * 1.0;
        local_30[0] = 0x407f5c29;
        piVar9[0x10] = (int)((1.0 - fVar12) * (float)piVar9[0xc] + (float)piVar9[8] * fVar12);
        piVar9[0x11] = (int)((1.0 - fVar14) * (float)piVar9[0xd] + (float)piVar9[9] * fVar14);
        piVar9[0x12] = (int)((1.0 - fVar15) * (float)piVar9[0xe] + (float)piVar9[10] * fVar15);
        piVar9[0x13] = (int)((1.0 - fVar16) * (float)piVar9[0xf] + (float)piVar9[0xb] * fVar16);
        if (3.99 <= local_50) {
          SceneObject_SetTintOpacity(pvVar7,(float *)(piVar9 + 8));
          SceneObject_PublishOpacityEndpoint(pvVar7);
          goto LAB_0070143d;
        }
        SceneObject_SetTintOpacity(pvVar7,(float *)(piVar9 + 0x10));
        piVar6 = FUN_004e1030(piVar9);
      }
      piVar9 = piVar6;
    } while (piVar6 != (int *)((int)this + 0x10f4));
  }
  if ((*(int *)((int)this + 0x1120) != 0) &&
     (piVar9 = *(int **)((int)this + 0x1114),
     *(int **)((int)this + 0x1114) != (int *)((int)this + 0x1110))) {
    do {
      local_38 = piVar9[4];
      local_34 = (int *)piVar9[5];
      RenderGuidMap_FindIterator((void *)((int)this + 4),local_30,(byte *)&local_38);
      if ((local_30[0] == *(int *)((int)this + 0x1028)) ||
         ((local_30[0] == 0 || (pvVar7 = (void *)(local_30[0] + -8), pvVar7 == (void *)0x0)))) {
LAB_00701475:
        *(int *)((int)this + 0x1120) = *(int *)((int)this + 0x1120) + -1;
        piVar6 = FUN_004e1030(piVar9);
        FUN_004e1330(piVar9,(int *)((int)this + 0x1110));
        Memory_FreeIfNonNull(piVar9);
      }
      else {
        pfVar1 = (float *)(piVar9 + 10);
        local_20 = delta;
        fStack_1c = delta;
        fStack_18 = delta;
        fStack_14 = delta;
        *pfVar1 = *pfVar1 + delta;
        local_54 = 0.0;
        pfVar10 = &local_54;
        if (0.0 < *pfVar1 || *pfVar1 == 0.0) {
          pfVar10 = pfVar1;
        }
        pfVar2 = (float *)(piVar9 + 9);
        *pfVar1 = *pfVar10;
        pfVar10 = pfVar2;
        if (*pfVar1 < *pfVar2 || *pfVar1 == *pfVar2) {
          pfVar10 = pfVar1;
        }
        fVar12 = *pfVar10;
        local_40 = (undefined4 *)piVar9[6];
        *pfVar1 = fVar12;
        fVar12 = fVar12 / *pfVar2;
        local_50 = (1.0 - fVar12) * (float)piVar9[7] + (float)local_40 * fVar12;
        piVar9[8] = (int)local_50;
        if (0.98 <= fVar12) {
          FUN_006fc940(pvVar7,local_40);
          goto LAB_00701475;
        }
        FUN_006fc940(pvVar7,local_50);
        piVar6 = FUN_004e1030(piVar9);
      }
      piVar9 = piVar6;
    } while (piVar6 != (int *)((int)this + 0x1110));
  }
  if ((((*(int *)((int)this + 0x10d0) != *(int *)((int)this + 0x10d8)) ||
       (*(int *)((int)this + 0x10d4) != *(int *)((int)this + 0x10dc))) ||
      (*(int *)((int)this + 0x10e0) != *(int *)((int)this + 0x10e8))) ||
     (*(int *)((int)this + 0x10e4) != *(int *)((int)this + 0x10ec))) {
    local_4c = *(int **)((int)this + 0x1078);
    iVar8 = *local_4c;
    if (iVar8 == 0) {
      local_4c = local_4c + 1;
      if (*local_4c == 0) {
        do {
          local_4c = local_4c + 1;
        } while (*local_4c == 0);
      }
      iVar8 = *local_4c;
    }
    local_30[0] = *(int *)(*(int *)((int)this + 0x1078) + *(int *)((int)this + 0x107c) * 4);
    if (iVar8 != local_30[0]) {
      do {
        local_40 = *(undefined4 **)(iVar8 + 8);
        if (*(undefined4 **)(iVar8 + 8) != (undefined4 *)0x0) {
          iVar11 = -4;
          do {
            pvVar7 = (void *)(**(code **)*local_40)(iVar11);
            if (pvVar7 != (void *)0x0) {
              FUN_006fa7a0(pvVar7,'\0');
            }
            iVar11 = iVar11 + 1;
          } while (iVar11 < 6);
        }
        iVar8 = *(int *)(iVar8 + 0x10);
        if (iVar8 == 0) {
          do {
            iVar8 = local_4c[1];
            local_4c = local_4c + 1;
          } while (iVar8 == 0);
        }
      } while (iVar8 != local_30[0]);
    }
    bVar5 = false;
    bVar4 = false;
    if (*(char *)((int)this + 0x10b8) == '\0') {
      piVar9 = U64PairMap_Find((void *)((int)this + 0x1074),local_30,
                               (ulonglong *)((int)this + 0x10e8));
    }
    else {
      local_34 = (int *)(*(int *)((int)this + 0x1078) + *(int *)((int)this + 0x107c) * 4);
      local_38 = *local_34;
      piVar9 = &local_38;
    }
    local_4c = (int *)piVar9[1];
    if (*piVar9 != *(int *)(*(int *)((int)this + 0x1078) + *(int *)((int)this + 0x107c) * 4)) {
      puVar3 = *(undefined4 **)(*piVar9 + 8);
      if (puVar3 != (undefined4 *)0x0) {
        iVar8 = (**(code **)*puVar3)(0);
        if ((iVar8 != 0) && (bVar5 = FUN_006fa5c0(iVar8), bVar5)) {
          bVar4 = true;
        }
        iVar8 = -4;
        do {
          pvVar7 = (void *)(**(code **)*puVar3)(iVar8);
          if (pvVar7 != (void *)0x0) {
            FUN_006fa7a0(pvVar7,'\x01');
          }
          iVar8 = iVar8 + 1;
        } while (iVar8 < 6);
      }
      bVar5 = true;
    }
    piVar9 = U64PairMap_Find((void *)((int)this + 0x1074),local_30,(ulonglong *)((int)this + 0x10d8)
                            );
    local_4c = (int *)piVar9[1];
    if (((*piVar9 != *(int *)(*(int *)((int)this + 0x1078) + *(int *)((int)this + 0x107c) * 4)) &&
        (puVar3 = *(undefined4 **)(*piVar9 + 8), puVar3 != (undefined4 *)0x0)) &&
       (((!bVar5 || (bVar4)) ||
        ((iVar8 = (**(code **)*puVar3)(0), iVar8 != 0 && (bVar5 = FUN_006fa5c0(iVar8), bVar5)))))) {
      iVar8 = -4;
      do {
        pvVar7 = (void *)(**(code **)*puVar3)(iVar8);
        if (pvVar7 != (void *)0x0) {
          FUN_006fa7a0(pvVar7,'\x01');
        }
        iVar8 = iVar8 + 1;
      } while (iVar8 < 6);
    }
    *(undefined4 *)((int)this + 0x10d0) = *(undefined4 *)((int)this + 0x10d8);
    *(undefined4 *)((int)this + 0x10d4) = *(undefined4 *)((int)this + 0x10dc);
    *(undefined4 *)((int)this + 0x10e0) = *(undefined4 *)((int)this + 0x10e8);
    *(undefined4 *)((int)this + 0x10e4) = *(undefined4 *)((int)this + 0x10ec);
  }
  piVar9 = *(int **)((int)this + 0x1174);
  if (*(int **)((int)this + 0x1174) != (int *)((int)this + 0x1170)) {
    do {
      local_38 = piVar9[4];
      local_34 = (int *)piVar9[5];
      RenderGuidMap_FindIterator((void *)((int)this + 4),local_30,(byte *)&local_38);
      if (((local_30[0] == *(int *)((int)this + 0x1028)) || (local_30[0] == 0)) ||
         ((int *)(local_30[0] + -8) == (int *)0x0)) {
        piVar6 = FUN_004e1030(piVar9);
      }
      else {
        (**(code **)(*(int *)(local_30[0] + -8) + 0x70))(1);
        *(int *)((int)this + 0x1180) = *(int *)((int)this + 0x1180) + -1;
        piVar6 = FUN_004e1030(piVar9);
        FUN_004e1330(piVar9,(int *)((int)this + 0x1170));
        Memory_FreeIfNonNull(piVar9);
      }
      piVar9 = piVar6;
    } while (piVar6 != (int *)((int)this + 0x1170));
  }
  if (0 < *(int *)((int)this + 0x10c8)) {
    *(int *)((int)this + 0x10c8) = *(int *)((int)this + 0x10c8) + -1;
  }
  if (0 < *(int *)((int)this + 0x10cc)) {
    *(int *)((int)this + 0x10cc) = *(int *)((int)this + 0x10cc) + -1;
  }
  return;
}

