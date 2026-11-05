/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  bool bVar1;
  float fVar2;
  float fVar3;
  char cVar4;
  short *psVar5;
  undefined4 uVar6;
  int iVar7;
  char *this_00;
  uint uVar8;
  short sVar9;
  undefined4 local_2c;
  uint local_28;
  void *local_24;
  int local_20 [2];
  float local_18;
  float local_14;
  undefined4 local_10;
  float local_c;
  float local_8;
  undefined4 local_4;
  
  uVar8 = param_1;
  sVar9 = (short)param_1;
  if (sVar9 == 0) {
    return true;
  }
  if ((char)param_2 != '\0') {
    end = *(short **)((int)this + 0xac);
    psVar5 = RoomIdRange_LowerBoundSigned16
                       (*(short **)((int)this + 0xa8),end,(short *)&param_1,
                        *(uchar *)((int)this + 0xb8));
    if (((psVar5 == end) || (sVar9 < *psVar5)) || (psVar5 == psVar5 + 1)) {
      psVar5 = end;
    }
    return psVar5 != end;
  }
  local_2c = 0xff00ffff;
  if (*(void **)((int)this + 0x44) == (void *)0x0) {
    param_2 = 0xff00ffff;
    local_2c = 0xff00ffff;
  }
  else {
    FUN_00c04af0(*(void **)((int)this + 0x44),param_1,&local_2c);
  }
  uVar6 = FUN_00acf820(*(void **)((int)this + 0xc),(char *)&local_2c,'\x01',(undefined1 *)0x0);
  iVar7 = *(int *)((int)this + 0xc);
  if (*(int *)(iVar7 + 0x2e8) != 0) {
    local_28 = uVar8 & 0xffff;
    FUN_00ae43c0((void *)((int)this + 0x174),local_20,(short *)&local_28);
    if (local_20[0] != *(int *)(*(int *)((int)this + 0x178) + *(int *)((int)this + 0x17c) * 4)) {
      iVar7 = FUN_00b04b60(iVar7);
      if ((char)uVar6 == '\0') {
        if (local_2c._2_1_ <= (char)iVar7) {
          return false;
        }
      }
      else if (local_2c._2_1_ + 1 <= (int)(char)iVar7) {
        return false;
      }
    }
  }
  local_24 = *(void **)(*(int *)((int)this + 0xc) + 0x2ac);
  if (((((*(int *)(*(int *)((int)this + 0xc) + 0x2e8) == 0) && ((char)uVar6 == '\0')) &&
       (uVar6 = FUN_00b945a0((int)local_24), (char)uVar6 != '\0')) ||
      ((*(int *)((int)this + 0x44) == 0 ||
       (this_00 = (char *)FUN_00c04ab0(*(int *)((int)this + 0x44)), this_00 == (char *)0x0)))) ||
     (local_20[0] = FUN_00c32220(this_00), local_20[0] == 0)) {
    return false;
  }
  bVar1 = false;
  local_28 = 0;
  local_18 = DAT_00fab218;
  local_14 = DAT_00fab218;
  local_10 = 0;
  param_2 = 0xff00ffff;
  uVar8 = FUN_00c32240(this_00,(undefined1 *)&param_2);
  cVar4 = (char)uVar8;
  uVar6 = param_2;
  do {
    if (cVar4 == '\0') {
      fVar2 = (float)(int)local_28;
      if ((int)local_28 < 0) {
        fVar2 = fVar2 + _DAT_00f99948;
      }
      fVar3 = (float)local_20[0];
      if (local_20[0] < 0) {
        fVar3 = fVar3 + _DAT_00f99948;
      }
      if (fVar3 * _DAT_00f9b5b4 <= fVar2) {
        return false;
      }
      return true;
    }
    if (!bVar1) {
      param_2._2_1_ = (char)((uint)uVar6 >> 0x10);
      if (param_2._2_1_ < -1) {
        return false;
      }
      bVar1 = true;
    }
    param_2 = uVar6;
    FUN_00af81a0((char *)&param_2,&local_18);
    uVar6 = FUN_00b94bb0(local_24,&local_18,(LPCRITICAL_SECTION)0x1,'\x01');
    if ((char)uVar6 == '\0') {
      param_1 = CONCAT13(param_2._3_1_,CONCAT12(param_2._2_1_ + '\x01',(undefined2)param_2));
      if ((int)(char)(param_2._2_1_ + '\x01') <= *(int *)((int)this + 0x20)) {
        do {
          local_c = DAT_00fab218;
          local_8 = DAT_00fab218;
          local_4 = 0;
          FUN_00af81a0((char *)&param_1,&local_c);
          uVar8 = FUN_00afdd10(*(void **)((int)this + 0xc),&local_c,'\0','\0','\0');
          if (((char)uVar8 != '\0') &&
             (cVar4 = FUN_00acfa20(*(void **)((int)this + 0xc),(undefined2 *)&param_1,1,
                                   (undefined1 *)0x0), cVar4 == '\0')) goto LAB_00b4c67b;
          cVar4 = param_1._2_1_ + '\x01';
          param_1._0_3_ = CONCAT12(cVar4,(undefined2)param_1);
        } while ((int)cVar4 <= *(int *)((int)this + 0x20));
      }
    }
    else {
LAB_00b4c67b:
      local_28 = local_28 + 1;
    }
    uVar6 = FUN_00c312e0(this_00,(char *)&param_2);
    cVar4 = (char)uVar6;
    uVar6 = param_2;
  } while( true );
}

