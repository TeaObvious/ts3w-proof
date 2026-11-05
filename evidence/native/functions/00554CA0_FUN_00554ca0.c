/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Ordered layer composition. ECX owns linked sentinel at+24; stack4 evaluation context and stack8 output pose, RET8. Child pointer at list node+C invokes virtual+8 once per visited nonnull child. Scratch pose+3C null sets a stop latch in either flag2 branch; loop exits after that child regardless of its numerical weight. This does not establish producer ordering, complete mask/blend arithmetic, allocation failure or all resource references. Actual helper and COMISS/x87 instructions govern nonfinite/FP behavior; no CLR full-kernel equality inferred.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00554CA0_FUN_00554ca0.asm
 */



void __thiscall FUN_00554ca0(void *this,int param_1,void *param_2)

{
  int *piVar1;
  float fVar2;
  float *pfVar3;
  bool bVar4;
  float *pfVar5;
  float *pfVar6;
  int iVar7;
  undefined4 *puVar8;
  int iVar9;
  int iVar10;
  byte *pbVar11;
  float *pfVar12;
  float *pfVar13;
  float10 fVar14;
  float fVar15;
  int *piVar16;
  void *pvVar17;
  float fStack_34;
  int *piStack_30;
  undefined4 *local_2c;
  float fStack_28;
  int iStack_18;
  
  piVar1 = (int *)((int)this + 0x24);
  if ((int *)*piVar1 != piVar1) {
    pfVar5 = (float *)FUN_005742b0(param_2,0x3f800000);
    pfVar6 = (float *)FUN_00574290((int)param_2);
    iVar7 = FUN_005742f0((int)param_2);
    puVar8 = FUN_005749a0();
    if (puVar8 == (undefined4 *)0x0) {
      local_2c = (undefined4 *)0x0;
    }
    else {
      piVar16 = *(int **)(param_1 + 0x40);
      if (piVar16 != (int *)0x0) {
        (**(code **)*piVar16)();
      }
      local_2c = FUN_00575050(puVar8,piVar16);
      if (local_2c != (undefined4 *)0x0) {
        local_2c[1] = local_2c[1] + 1;
      }
    }
    if ((*(byte *)(param_1 + 0x54) & 2) != 0) {
      FUN_0057cff0((int)param_2);
    }
    FUN_0057e820((int)param_2);
    piStack_30 = (int *)*piVar1;
    bVar4 = false;
    do {
      if (piStack_30 == piVar1) break;
      if (piStack_30[3] != 0) {
        FUN_00574d40((int)local_2c);
        (**(code **)(*(int *)piStack_30[3] + 8))(param_1,local_2c);
        if ((*(byte *)(param_1 + 0x54) & 2) == 0) {
          pfVar3 = (float *)local_2c[0xf];
          if (pfVar3 == (float *)0x0) {
            bVar4 = true;
          }
          puVar8 = local_2c;
          pvVar17 = param_2;
          fVar14 = FUN_0054c2a0(piStack_30[3]);
          FUN_0057e880(pfVar5,pfVar3,(float)fVar14,(int)puVar8,(int)pvVar17);
          fVar2 = *pfVar5;
          fVar14 = FUN_0054c2a0(piStack_30[3]);
          fVar15 = (float)(fVar14 * (float10)fVar2);
          if (pfVar3 != (float *)0x0) {
            fVar15 = *pfVar3 * fVar15;
          }
          *pfVar5 = fVar2 - fVar15;
        }
        else {
          iVar9 = FUN_00574290((int)local_2c);
          pfVar3 = (float *)local_2c[0xf];
          if (pfVar3 == (float *)0x0) {
            bVar4 = true;
          }
          iVar10 = FUN_0057b7d0(*(int *)(param_1 + 0x40));
          if (iVar10 != 0) {
            fVar14 = FUN_0054c2a0(piStack_30[3]);
            fStack_34 = (float)fVar14;
            fStack_28 = 1.0;
            if (pfVar5 != (float *)0x0) {
              fStack_28 = pfVar5[300];
              fStack_34 = fStack_28 * fStack_34;
            }
            if (pfVar3 != (float *)0x0) {
              fStack_34 = pfVar3[300] * fStack_34;
            }
            if (0.0 < fStack_34) {
              FUN_0057d040((int)local_2c,(int)param_2,fStack_34);
              pfVar5[300] = fStack_28 - fStack_34;
            }
          }
          puVar8 = local_2c;
          pvVar17 = param_2;
          fVar14 = FUN_0054c2a0(piStack_30[3]);
          FUN_0057e880(pfVar5,pfVar3,(float)fVar14,(int)puVar8,(int)pvVar17);
          iVar10 = GetNativeDescriptorTypeName_Field4(*(int *)(param_1 + 0x40) + 0x28);
          iStack_18 = FUN_00575750(*(int *)(param_1 + 0x40) + 0x28);
          if (iStack_18 != 0) {
            pbVar11 = (byte *)(iVar10 + 0x60);
            pfVar12 = pfVar5;
            pfVar13 = pfVar6;
            do {
              if ((*pbVar11 & 0x20) != 0) {
                fVar2 = *pfVar12;
                fVar14 = FUN_0054c2a0(piStack_30[3]);
                fStack_34 = (float)(fVar14 * (float10)fVar2);
                if (pfVar3 != (float *)0x0) {
                  fStack_34 = *(float *)(((int)pfVar3 - (int)pfVar5) + (int)pfVar12) * fStack_34;
                }
                if (0.0 < fStack_34) {
                  *pfVar12 = fVar2 - fStack_34;
                  FUN_00554be0(pfVar13,(float *)((iVar7 - (int)pfVar5) + (int)pfVar12),
                               (float *)((iVar9 - (int)pfVar6) + (int)pfVar13),fStack_34);
                }
              }
              pbVar11 = pbVar11 + 0x70;
              pfVar12 = pfVar12 + 1;
              pfVar13 = pfVar13 + 0xc;
              iStack_18 = iStack_18 + -1;
            } while (iStack_18 != 0);
          }
        }
      }
      piStack_30 = (int *)*piStack_30;
    } while (!bVar4);
    FUN_0057d280((int)param_2);
    if ((*(byte *)(param_1 + 0x54) & 2) != 0) {
      FUN_0057d150((int)param_2);
    }
    ClearDwordAtECXPlus3C((int)param_2);
    if ((local_2c != (undefined4 *)0x0) &&
       (iVar7 = local_2c[1], local_2c[1] = iVar7 + -1, iVar7 + -1 == 0)) {
      local_2c[1] = 1;
      (**(code **)*local_2c)(1);
    }
  }
  return;
}

