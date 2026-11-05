/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Simple-mode total owner. ECX lot; RET0. Separate object and construction dirty flags and retained float stamp control recomputation. Object membership uses C6E140/C6E150 ordered manager pointers, not spatial position. AFFDB0 catalog category bits6/7 exclude fireplaces/chimneys; included B01D70 values feed all-object subtotal and separate bit1 unfurnished subtotal. Land uses inherited x87 FISTP; foundation price quarter-products accumulate through FSTP double memory. Final signed low32 sum clamps at zero. Stored inferred EDX parameter and float temporaries do not establish physical arguments or binary32 subtotal storage. Whole dirty writers, complex mode and catalog helpers remain open.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00AC5F00_FUN_00ac5f00.asm
 */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */

int __fastcall FUN_00ac5f00(void *param_1,uint param_2)

{
  float fVar1;
  void *pvVar2;
  uint uVar3;
  void *pvVar4;
  void *pvVar5;
  int iVar6;
  int iVar7;
  uint extraout_EDX;
  uint extraout_EDX_00;
  uint extraout_EDX_01;
  uint extraout_EDX_02;
  uint extraout_EDX_03;
  uint extraout_EDX_04;
  uint extraout_EDX_05;
  uint uVar8;
  int iVar9;
  ulonglong uVar10;
  void *local_18;
  void *local_14;
  undefined4 local_10;
  char *local_c;
  
  pvVar2 = DAT_011ee034;
  fVar1 = DAT_011ceda8;
  if ((*(char *)((int)param_1 + 0x334) != '\0') ||
     (DAT_011ceda8 != *(float *)((int)param_1 + 0x338))) {
    uVar8 = 0;
    *(undefined4 *)((int)param_1 + 0x32c) = 0;
    *(undefined4 *)((int)param_1 + 0x330) = 0;
    uVar3 = FUN_00c6e140((int)param_1);
    param_2 = extraout_EDX;
    if (uVar3 != 0) {
      do {
        pvVar4 = (void *)FUN_00c6e150(param_1,uVar8);
        param_2 = extraout_EDX_00;
        if ((pvVar4 != (void *)0x0) &&
           ((pvVar5 = Object_FindCatalogInfo(pvVar4), pvVar5 == (void *)0x0 ||
            ((param_2 = extraout_EDX_01, (*(uint *)((int)pvVar5 + 0xd0) >> 6 & 1) == 0 &&
             ((*(uint *)((int)pvVar5 + 0xd0) >> 7 & 1) == 0)))))) {
          iVar6 = FUN_00b01d70(pvVar4);
          *(int *)((int)param_1 + 0x32c) = *(int *)((int)param_1 + 0x32c) + iVar6;
          param_2 = extraout_EDX_02;
          if ((pvVar5 != (void *)0x0) &&
             (param_2 = *(uint *)((int)pvVar5 + 0xa8) >> 1, (param_2 & 1) != 0)) {
            *(int *)((int)param_1 + 0x330) = *(int *)((int)param_1 + 0x330) + iVar6;
          }
        }
        uVar8 = uVar8 + 1;
      } while (uVar8 < uVar3);
    }
    *(undefined1 *)((int)param_1 + 0x334) = 0;
    *(float *)((int)param_1 + 0x338) = fVar1;
  }
  iVar6 = *(int *)((int)param_1 + 0x32c);
  if (*(char *)((int)param_1 + 0x328) != '\0') {
    iVar9 = *(int *)((int)param_1 + 0x174);
    iVar7 = *(int *)((int)param_1 + 0x178);
    if (DAT_01183eec == '\0') {
      LotSettings_LoadToolTunables(&DAT_01183eec);
      param_2 = extraout_EDX_03;
    }
    *(int *)((int)param_1 + 0x324) = (int)ROUND((float)(iVar7 * iVar9) * _DAT_01183ef0);
    if (*(void **)((int)param_1 + 0x298) != (void *)0x0) {
      uVar10 = FUN_00b4b630(*(void **)((int)param_1 + 0x298),param_2);
      param_2 = (uint)(uVar10 >> 0x20);
      *(int *)((int)param_1 + 0x324) = *(int *)((int)param_1 + 0x324) + (int)uVar10;
    }
    if (*(int *)((int)param_1 + 0x290) != 0) {
      uVar10 = FloorManager_ComputePatternContribution(*(int *)((int)param_1 + 0x290),param_2);
      param_2 = (uint)(uVar10 >> 0x20);
      *(int *)((int)param_1 + 0x324) = *(int *)((int)param_1 + 0x324) + (int)uVar10;
    }
    if (*(void **)((int)param_1 + 0x2cc) != (void *)0x0) {
      uVar10 = FUN_00a75e50(*(void **)((int)param_1 + 0x2cc),param_2);
      param_2 = (uint)(uVar10 >> 0x20);
      *(int *)((int)param_1 + 0x324) = *(int *)((int)param_1 + 0x324) + (int)uVar10;
    }
    if (*(void **)((int)param_1 + 0x2a4) != (void *)0x0) {
      fVar1 = 0.0;
      local_18 = (void *)0x0;
      local_14 = (void *)0x0;
      local_10 = 0;
      local_c = "Lot/Tmp";
      FourWordGrid_ExportLevelXZCells(*(void **)((int)param_1 + 0x2a4),(int *)&local_18);
      pvVar4 = local_18;
      if (local_18 != local_14) {
        do {
          iVar9 = 0;
          do {
            iVar7 = *(int *)((int)pvVar4 + iVar9 * 4);
            if ((iVar7 != 0) && (iVar7 = FUN_00c8bbb0(pvVar2,iVar7), iVar7 != 0)) {
              fVar1 = *(float *)(iVar7 + 0x58) * 0.25 + fVar1;
            }
            iVar9 = iVar9 + 1;
          } while (iVar9 < 4);
          pvVar4 = (void *)((int)pvVar4 + 0x10);
        } while (pvVar4 != local_14);
      }
      pvVar2 = local_18;
      iVar9 = Compiler_TruncateX87ToLowInt32((float10)fVar1);
      *(int *)((int)param_1 + 0x324) = *(int *)((int)param_1 + 0x324) + iVar9;
      param_2 = extraout_EDX_04;
      if (pvVar2 != (void *)0x0) {
        Memory_FreeIfNonNull(pvVar2);
        param_2 = extraout_EDX_05;
      }
    }
    if (*(int *)((int)param_1 + 0x2b4) != 0) {
      uVar10 = FUN_00b177c0(*(int *)((int)param_1 + 0x2b4),param_2);
      *(int *)((int)param_1 + 0x324) = *(int *)((int)param_1 + 0x324) + (int)uVar10;
    }
    *(undefined1 *)((int)param_1 + 0x328) = 0;
  }
  iVar6 = iVar6 + (int)*(float *)((int)param_1 + 0x420) + *(int *)((int)param_1 + 0x324);
  if (iVar6 < 0) {
    iVar6 = 0;
  }
  return iVar6;
}

