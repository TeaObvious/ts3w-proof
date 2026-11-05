/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Room metric parent. Eleven cdecl words and plain RET; no pointer-valued ratio result. Output counts are DWORDs and ratios stored Float32 after unsigned FILD/FADD2^32/x87 FDIVP. Initializes size/covered/puddles/burnt before gates, carpet and flag outputs only on admitted room path. Enumerates retained room cells through C32240/C312E0, per-quarter AD0D00 exclusion, A8FA90 descriptor comparisons, AB7E80 mode8/type6; per-tile AB66C0 bits1/2. First cell supplies AF81A0 sample then B482C0/B4C3E0, AB6970 and AFF6A0. Full child algorithms/writers/rounding/lifetime remain separate.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00B00190_FUN_00b00190.asm
 */

void __cdecl
FUN_00b00190(void *param_1,undefined4 param_2,int param_3,int *param_4,undefined4 *param_5,
            undefined4 *param_6,int *param_7,int *param_8,undefined1 *param_9,undefined1 *param_10,
            undefined1 *param_11)

{
  float fVar1;
  float fVar2;
  void *this;
  undefined1 *puVar3;
  undefined1 *puVar4;
  undefined1 *puVar5;
  byte bVar6;
  char cVar7;
  bool bVar8;
  ushort uVar9;
  void *this_00;
  undefined4 uVar10;
  int ***pppiVar11;
  uint uVar12;
  int iVar13;
  int *piVar14;
  int *piVar15;
  undefined4 local_64;
  uint local_60;
  int local_5c;
  int local_58;
  void *local_54;
  void *local_50;
  LotXZLevel local_4c;
  undefined4 local_40 [16];
  
  piVar15 = param_4;
  this = param_1;
  *param_4 = 0;
  *param_5 = 0;
  *param_7 = 0;
  *param_8 = 0;
  if (((param_1 != (void *)0x0) &&
      (local_54 = *(void **)((int)param_1 + 0x298), local_54 != (void *)0x0)) &&
     (this_00 = (void *)FUN_00b470c0(local_54,param_2,param_3), this_00 != (void *)0x0)) {
    param_1 = (void *)0xff00ffff;
    local_50 = this_00;
    FUN_00afba70(local_40);
    local_5c = 0;
    local_58 = 0;
    local_64 = 0xff00ffff;
    local_60 = 0xff00ffff;
    bVar6 = SpanShape_BeginLocationEnumeration(this_00,(char *)&local_60);
    param_4 = (int *)CONCAT31(param_4._1_3_,bVar6);
    local_64 = local_60;
    cVar7 = '\0';
    if (bVar6 != 0) {
      do {
        param_1 = (void *)(local_64 & 0xffffff);
        iVar13 = 0;
        do {
          bVar6 = '\x01' << ((byte)iVar13 & 0x1f);
          param_1 = (void *)CONCAT13(bVar6,param_1._0_3_);
          if (((local_64._3_1_ & bVar6) != 0) &&
             (uVar10 = Lot_TestCellRegionAndCollectionAdmission
                                 (this,(char *)&param_1,1,0,(undefined1 *)0x0), (char)uVar10 == '\0'
             )) {
            *piVar15 = *piVar15 + 1;
            FloorManager_CopyPatternKeysAtCellPart
                      (*(void **)((int)this + 0x290),(char *)&param_1,local_40);
            uVar10 = FUN_00a8ae70(local_40,&DAT_011ec8e0);
            if (((char)uVar10 != '\0') &&
               (uVar10 = FUN_00a8ae70(local_40,&DAT_011ec920), (char)uVar10 != '\0')) {
              local_5c = local_5c + 1;
              local_4c.x = FLOAT_00fab218;
              local_4c.z = FLOAT_00fab218;
              local_4c.level = 0;
              TilePart_GetLocalSamplePoint((char *)&param_1,&local_4c);
              pppiVar11 = FUN_00ab7e80(this,&local_4c.x,8);
              if (pppiVar11 == (int ***)&DAT_00000006) {
                local_58 = local_58 + 1;
              }
            }
          }
          iVar13 = iVar13 + 1;
        } while (iVar13 < 4);
        bVar6 = FUN_00ab66c0(this,(char *)&local_64,0xffff);
        if ((bVar6 & 1) != 0) {
          *param_7 = *param_7 + 1;
        }
        if ((bVar6 & 2) != 0) {
          *param_8 = *param_8 + 1;
        }
        bVar6 = SpanShape_NextLocation(local_50,(char *)&local_64);
      } while (bVar6 != 0);
      cVar7 = (char)param_4;
    }
    puVar5 = param_11;
    puVar4 = param_10;
    puVar3 = param_9;
    iVar13 = *piVar15;
    if (iVar13 == 0) {
      piVar14 = (int *)0x0;
    }
    else {
      fVar1 = (float)local_5c;
      if (local_5c < 0) {
        fVar1 = fVar1 + FLOAT_00f99948;
      }
      fVar2 = (float)iVar13;
      if (iVar13 < 0) {
        fVar2 = fVar2 + FLOAT_00f99948;
      }
      piVar14 = (int *)(fVar1 / fVar2);
      param_7 = piVar14;
    }
    *param_5 = piVar14;
    iVar13 = *piVar15;
    if (iVar13 == 0) {
      piVar15 = (int *)0x0;
    }
    else {
      fVar1 = (float)local_58;
      if (local_58 < 0) {
        fVar1 = fVar1 + FLOAT_00f99948;
      }
      fVar2 = (float)iVar13;
      if (iVar13 < 0) {
        fVar2 = fVar2 + FLOAT_00f99948;
      }
      piVar15 = (int *)(fVar1 / fVar2);
      param_7 = piVar15;
    }
    *param_6 = piVar15;
    *param_9 = 0;
    *param_10 = 0;
    *param_11 = 0;
    if (cVar7 != '\0') {
      local_4c.x = FLOAT_00fab218;
      local_4c.z = FLOAT_00fab218;
      local_4c.level = 0;
      TilePart_GetLocalSamplePoint((char *)&local_60,&local_4c);
      uVar9 = LotRoom_ResolveForLocalLocation(local_54,&local_4c.x,0,0);
      bVar8 = LotRoom_TestOutsideClassification(local_54,(uint)uVar9,1);
      *puVar3 = bVar8;
      uVar10 = FUN_00ab6970(this,(char *)&local_60,'\x01','\x01','\x01','\0','\x01');
      *puVar4 = (char)uVar10;
      uVar12 = Lot_TestNextLevelAtLocalLocation(this,&local_4c,1);
      *puVar5 = (char)uVar12;
    }
  }
  return;
}

