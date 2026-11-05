/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Original instruction review; analyst name. this in ECX is room manager; room ID low 16 bits and
   cached flag low byte; Boolean in AL. Room 0 returns true. Cached flag true calls signed Int16
   lower bound 00aba600 over this+a8..+ac and returns matching membership. The original LEA
   ECX,[EAX+2]; CMP EAX,ECX; JNE at 00b4c42e..00b4c433 is an always-unequal iterator check. Ghidra
   prints psVar6==psVar6+1; this corresponds to original dead comparison, not a rejection of every
   room. Uncached branch samples room cells/coverage at levels and uses count<0.5*cellCount after
   special cases; cache producers and geometric helper contracts remain open. */

bool __thiscall LotRoom_TestOutsideClassification(void *this,uint param_1,undefined4 param_2)

{
  short *end;
  float fVar1;
  float fVar2;
  bool bVar3;
  byte bVar4;
  char cVar5;
  short *psVar6;
  undefined4 uVar7;
  int iVar8;
  char *this_00;
  uint uVar9;
  short sVar10;
  undefined4 local_2c;
  uint local_28;
  void *local_24;
  int local_20 [2];
  LotXZLevel local_18;
  LotXZLevel local_c;
  
  uVar9 = param_1;
  sVar10 = (short)param_1;
  if (sVar10 == 0) {
    return true;
  }
  if ((char)param_2 != '\0') {
    end = *(short **)((int)this + 0xac);
    psVar6 = RoomIdRange_LowerBoundSigned16
                       (*(short **)((int)this + 0xa8),end,(short *)&param_1,
                        *(uchar *)((int)this + 0xb8));
    if (((psVar6 == end) || (sVar10 < *psVar6)) || (psVar6 == psVar6 + 1)) {
      psVar6 = end;
    }
    return psVar6 != end;
  }
  local_2c = 0xff00ffff;
  if (*(void **)((int)this + 0x44) == (void *)0x0) {
    param_2 = 0xff00ffff;
    local_2c = 0xff00ffff;
  }
  else {
    FUN_00c04af0(*(void **)((int)this + 0x44),param_1,&local_2c);
  }
  uVar7 = Lot_TestCellSupportRegionType
                    (*(void **)((int)this + 0xc),(char *)&local_2c,'\x01',(undefined1 *)0x0);
  iVar8 = *(int *)((int)this + 0xc);
  if (*(int *)(iVar8 + 0x2e8) != 0) {
    local_28 = uVar9 & 0xffff;
    FUN_00ae43c0((void *)((int)this + 0x174),local_20,(short *)&local_28);
    if (local_20[0] != *(int *)(*(int *)((int)this + 0x178) + *(int *)((int)this + 0x17c) * 4)) {
      iVar8 = FUN_00b04b60(iVar8);
      if ((char)uVar7 == '\0') {
        if (local_2c._2_1_ <= (char)iVar8) {
          return false;
        }
      }
      else if (local_2c._2_1_ + 1 <= (int)(char)iVar8) {
        return false;
      }
    }
  }
  local_24 = *(void **)(*(int *)((int)this + 0xc) + 0x2ac);
  if (((((*(int *)(*(int *)((int)this + 0xc) + 0x2e8) == 0) && ((char)uVar7 == '\0')) &&
       (uVar7 = FUN_00b945a0((int)local_24), (char)uVar7 != '\0')) ||
      ((*(int *)((int)this + 0x44) == 0 ||
       (this_00 = (char *)FUN_00c04ab0(*(int *)((int)this + 0x44)), this_00 == (char *)0x0)))) ||
     (local_20[0] = FUN_00c32220(this_00), local_20[0] == 0)) {
    return false;
  }
  bVar3 = false;
  local_28 = 0;
  local_18.x = -1.0;
  local_18.z = -1.0;
  local_18.level = 0;
  param_2 = 0xff00ffff;
  bVar4 = SpanShape_BeginLocationEnumeration(this_00,(char *)&param_2);
  uVar7 = param_2;
  do {
    if (bVar4 == 0) {
      fVar1 = (float)(int)local_28;
      if ((int)local_28 < 0) {
        fVar1 = fVar1 + 4.2949673e+09;
      }
      fVar2 = (float)local_20[0];
      if (local_20[0] < 0) {
        fVar2 = fVar2 + 4.2949673e+09;
      }
      if (fVar2 * 0.5 <= fVar1) {
        return false;
      }
      return true;
    }
    if (!bVar3) {
      param_2._2_1_ = (char)((uint)uVar7 >> 0x10);
      if (param_2._2_1_ < -1) {
        return false;
      }
      bVar3 = true;
    }
    param_2 = uVar7;
    TilePart_GetLocalSamplePoint((char *)&param_2,&local_18);
    uVar7 = RoofManager_TestPointCoverage(local_24,&local_18.x,(LPCRITICAL_SECTION)0x1,'\x01');
    if ((char)uVar7 == '\0') {
      param_1 = CONCAT13(param_2._3_1_,CONCAT12(param_2._2_1_ + '\x01',(undefined2)param_2));
      if ((int)(char)(param_2._2_1_ + '\x01') <= *(int *)((int)this + 0x20)) {
        do {
          local_c.x = -1.0;
          local_c.z = -1.0;
          local_c.level = 0;
          TilePart_GetLocalSamplePoint((char *)&param_1,&local_c);
          uVar9 = Lot_TestSelectedFloorAtPosition
                            (*(void **)((int)this + 0xc),&local_c.x,'\0','\0','\0');
          if (((char)uVar9 != '\0') &&
             (cVar5 = FUN_00acfa20(*(void **)((int)this + 0xc),(undefined2 *)&param_1,1,
                                   (undefined1 *)0x0), cVar5 == '\0')) goto LAB_00b4c67b;
          cVar5 = param_1._2_1_ + '\x01';
          param_1._0_3_ = CONCAT12(cVar5,(undefined2)param_1);
        } while ((int)cVar5 <= *(int *)((int)this + 0x20));
      }
    }
    else {
LAB_00b4c67b:
      local_28 = local_28 + 1;
    }
    bVar4 = SpanShape_NextLocation(this_00,(char *)&param_2);
    uVar7 = param_2;
  } while( true );
}

