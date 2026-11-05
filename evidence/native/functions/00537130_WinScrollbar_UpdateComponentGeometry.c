/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: dirty/drawable gate; target/current clamp, page delta, seven metadata sizes and
   component geometry.
   Dirty/drawable gates and original clamp side effects precede page-delta and seven component
   size/layout computations. Resource metadata producer behavior and image/state selection remain
   outside this pair. Common virtual effects are not expanded beyond observed slots.
   Label describes observed native behavior; existing or newly inferred Ghidra metadata is not a
   replacement ABI specification. */

void __fastcall WinScrollbar_UpdateComponentGeometry(int param_1)

{
  int iVar1;
  int iVar2;
  char cVar3;
  int iVar4;
  float *pfVar5;
  undefined1 **ppuVar6;
  int iVar7;
  int iVar8;
  uint uVar9;
  float fVar10;
  float fVar11;
  undefined1 *puStack_58;
  undefined1 *puStack_50;
  undefined1 *puStack_4c;
  float afStack_48 [17];
  
  puStack_58 = &stack0xfffffffc;
  if (*(char *)(param_1 + 0x28c) != '\0') {
    *(undefined1 *)(param_1 + 0x28c) = 0;
    (**(code **)(*(int *)(param_1 + 4) + 0x74))
              (8,*(int *)(param_1 + 0x298) != 0 || *(int *)(param_1 + 0x29c) != 0);
    if (*(int *)(param_1 + 0x204) != 0) {
      iVar4 = *(int *)(param_1 + 0x268) - *(int *)(param_1 + 0x26c);
      if (iVar4 < *(int *)(param_1 + 0x254)) {
        (**(code **)(*(int *)(param_1 + 0x250) + 0x24))(iVar4);
        if ((*(byte *)(param_1 + 0x290) & 3) == 0) {
          (**(code **)(*(int *)(param_1 + 0x250) + 0x28))(*(undefined4 *)(param_1 + 0x25c),1);
        }
      }
      if (*(int *)(param_1 + 0x254) < *(int *)(param_1 + 0x264)) {
        (**(code **)(*(int *)(param_1 + 0x250) + 0x24))(*(int *)(param_1 + 0x264));
        if ((*(byte *)(param_1 + 0x290) & 3) == 0) {
          (**(code **)(*(int *)(param_1 + 0x250) + 0x28))(*(undefined4 *)(param_1 + 0x25c),1);
        }
      }
      iVar4 = *(int *)(param_1 + 0x26c) - *(int *)(param_1 + 0x270);
      *(int *)(param_1 + 0x278) = iVar4;
      if (iVar4 < 1) {
        *(undefined4 *)(param_1 + 0x278) = 1;
      }
      uVar9 = 0;
      do {
        cVar3 = (**(code **)(**(int **)(param_1 + 0x204) + 0x18))
                          (&puStack_50,(*(int *)(param_1 + 0x280) != 2) - 1U & 0x80,uVar9);
        if (cVar3 == '\0') {
          pfVar5 = (float *)(**(code **)(*(int *)(param_1 + 4) + 0x38))();
          puStack_50 = (undefined1 *)(pfVar5[2] - *pfVar5);
          puStack_4c = (undefined1 *)(pfVar5[3] - pfVar5[1]);
          if ((uVar9 == 6) || (uVar9 == 1)) {
            if (*(int *)(param_1 + 0x280) == 1) {
              puStack_58 = (undefined1 *)((pfVar5[2] - *pfVar5) * 0.33333334);
              ppuVar6 = &puStack_58;
              if (pfVar5[3] - pfVar5[1] <= (float)puStack_58) {
                ppuVar6 = &puStack_4c;
              }
              puStack_50 = *ppuVar6;
            }
            else {
              ppuVar6 = (undefined1 **)&stack0xffffffac;
              if (pfVar5[2] - *pfVar5 <= (pfVar5[3] - pfVar5[1]) * 0.33333334) {
                ppuVar6 = &puStack_50;
              }
              puStack_4c = *ppuVar6;
            }
          }
        }
        afStack_48[uVar9 * 2] = (float)puStack_50;
        afStack_48[uVar9 * 2 + 1] = (float)puStack_4c;
        uVar9 = uVar9 + 1;
      } while (uVar9 < 7);
      if (*(int *)(param_1 + 0x280) == 1) {
        fVar10 = ((*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_48[1]) * 0.5;
        *(float *)(param_1 + 0x2b4) = fVar10;
        *(float *)(param_1 + 700) = afStack_48[1] + fVar10;
        fVar10 = ((*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_48[3]) * 0.5;
        *(float *)(param_1 + 0x2c4) = fVar10;
        *(float *)(param_1 + 0x2cc) = fVar10 + afStack_48[3];
        fVar10 = ((*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_48[5]) * 0.5;
        *(float *)(param_1 + 0x2d4) = fVar10;
        *(float *)(param_1 + 0x2dc) = afStack_48[5] + fVar10;
        fVar10 = ((*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_48[7]) * 0.5;
        *(float *)(param_1 + 0x2e4) = fVar10;
        *(float *)(param_1 + 0x2ec) = afStack_48[7] + fVar10;
        fVar10 = ((*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_48[9]) * 0.5;
        *(float *)(param_1 + 0x2f4) = fVar10;
        *(float *)(param_1 + 0x2fc) = afStack_48[9] + fVar10;
        fVar10 = ((*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_48[0xb]) * 0.5
        ;
        *(float *)(param_1 + 0x304) = fVar10;
        *(float *)(param_1 + 0x30c) = afStack_48[0xb] + fVar10;
        fVar10 = ((*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_48[0xd]) * 0.5
        ;
        *(float *)(param_1 + 0x314) = fVar10;
        *(float *)(param_1 + 0x31c) = fVar10 + afStack_48[0xd];
      }
      else {
        fVar10 = ((*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_48[0]) * 0.5;
        *(float *)(param_1 + 0x2b0) = fVar10;
        *(float *)(param_1 + 0x2b8) = afStack_48[0] + fVar10;
        fVar10 = ((*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_48[2]) * 0.5;
        *(float *)(param_1 + 0x2c0) = fVar10;
        *(float *)(param_1 + 0x2c8) = fVar10 + afStack_48[2];
        fVar10 = ((*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_48[4]) * 0.5;
        *(float *)(param_1 + 0x2d0) = fVar10;
        *(float *)(param_1 + 0x2d8) = afStack_48[4] + fVar10;
        fVar10 = ((*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_48[6]) * 0.5;
        *(float *)(param_1 + 0x2e0) = fVar10;
        *(float *)(param_1 + 0x2e8) = afStack_48[6] + fVar10;
        fVar10 = ((*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_48[8]) * 0.5;
        *(float *)(param_1 + 0x2f0) = fVar10;
        *(float *)(param_1 + 0x2f8) = afStack_48[8] + fVar10;
        fVar10 = ((*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_48[10]) * 0.5;
        *(float *)(param_1 + 0x300) = fVar10;
        *(float *)(param_1 + 0x308) = afStack_48[10] + fVar10;
        fVar10 = ((*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_48[0xc]) * 0.5
        ;
        *(float *)(param_1 + 0x310) = fVar10;
        *(float *)(param_1 + 0x318) = fVar10 + afStack_48[0xc];
      }
      iVar4 = *(int *)(param_1 + 0x280);
      if (iVar4 == 1) {
        *(float *)(param_1 + 0x310) =
             (*(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40)) - afStack_48[0xc];
        *(undefined4 *)(param_1 + 0x2f8) = *(undefined4 *)(param_1 + 0x310);
        *(float *)(param_1 + 0x318) = *(float *)(param_1 + 0x48) - *(float *)(param_1 + 0x40);
        *(undefined4 *)(param_1 + 0x2c0) = 0;
        *(float *)(param_1 + 0x2c8) = afStack_48[2];
        *(float *)(param_1 + 0x2f0) = afStack_48[2];
      }
      else {
        *(float *)(param_1 + 0x314) =
             (*(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44)) - afStack_48[0xd];
        *(undefined4 *)(param_1 + 0x2fc) = *(undefined4 *)(param_1 + 0x314);
        *(float *)(param_1 + 0x31c) = *(float *)(param_1 + 0x4c) - *(float *)(param_1 + 0x44);
        *(undefined4 *)(param_1 + 0x2c4) = 0;
        *(float *)(param_1 + 0x2cc) = afStack_48[3];
        *(float *)(param_1 + 0x2f4) = afStack_48[3];
      }
      iVar1 = *(int *)(param_1 + 0x264);
      iVar2 = *(int *)(param_1 + 0x26c);
      iVar7 = *(int *)(param_1 + 0x268) - iVar1;
      if ((iVar2 < iVar7) && (0 < iVar7)) {
        iVar8 = iVar7 - iVar2;
        if (iVar4 == 1) {
          fVar10 = ((*(float *)(param_1 + 0x2f8) - *(float *)(param_1 + 0x2f0)) * (float)iVar2) /
                   (float)iVar7;
          if (fVar10 < (float)*(int *)(param_1 + 0x27c)) {
            fVar10 = (float)*(int *)(param_1 + 0x27c);
          }
          fVar11 = (((*(float *)(param_1 + 0x2f8) - *(float *)(param_1 + 0x2f0)) - fVar10) *
                    (float)(*(int *)(param_1 + 0x254) - iVar1) + (float)(iVar8 / 2)) / (float)iVar8
                   + *(float *)(param_1 + 0x2f0);
          *(float *)(param_1 + 0x2e0) = fVar11;
          *(float *)(param_1 + 0x2e8) = fVar11 + fVar10;
        }
        else {
          fVar10 = ((*(float *)(param_1 + 0x2fc) - *(float *)(param_1 + 0x2f4)) * (float)iVar2) /
                   (float)iVar7;
          if (fVar10 < (float)*(int *)(param_1 + 0x27c)) {
            fVar10 = (float)*(int *)(param_1 + 0x27c);
          }
          fVar11 = (((*(float *)(param_1 + 0x2fc) - *(float *)(param_1 + 0x2f4)) - fVar10) *
                    (float)(*(int *)(param_1 + 0x254) - iVar1) + (float)(iVar8 / 2)) / (float)iVar8
                   + *(float *)(param_1 + 0x2f4);
          *(float *)(param_1 + 0x2e4) = fVar11;
          *(float *)(param_1 + 0x2ec) = fVar11 + fVar10;
        }
      }
      else if (iVar4 == 1) {
        *(undefined4 *)(param_1 + 0x2e0) = *(undefined4 *)(param_1 + 0x2f0);
        *(undefined4 *)(param_1 + 0x2e8) = *(undefined4 *)(param_1 + 0x2f8);
      }
      else {
        *(undefined4 *)(param_1 + 0x2e4) = *(undefined4 *)(param_1 + 0x2f4);
        *(undefined4 *)(param_1 + 0x2ec) = *(undefined4 *)(param_1 + 0x2fc);
      }
      if (iVar4 == 1) {
        *(undefined4 *)(param_1 + 0x2d0) = *(undefined4 *)(param_1 + 0x2f0);
        *(undefined4 *)(param_1 + 0x2d8) = *(undefined4 *)(param_1 + 0x2e0);
        *(undefined4 *)(param_1 + 0x300) = *(undefined4 *)(param_1 + 0x2e8);
        *(undefined4 *)(param_1 + 0x308) = *(undefined4 *)(param_1 + 0x2f8);
      }
      else {
        *(undefined4 *)(param_1 + 0x2d4) = *(undefined4 *)(param_1 + 0x2f4);
        *(undefined4 *)(param_1 + 0x2dc) = *(undefined4 *)(param_1 + 0x2e4);
        *(undefined4 *)(param_1 + 0x304) = *(undefined4 *)(param_1 + 0x2ec);
        *(undefined4 *)(param_1 + 0x30c) = *(undefined4 *)(param_1 + 0x2fc);
      }
      (**(code **)(*(int *)(param_1 + 4) + 0x90))();
    }
  }
  return;
}

