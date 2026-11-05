/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 static instructions/callers: thiscall ECX undo plus tile4 pointer and state WORD, RET8.
   Low byte state; loops four selected parts, records only changed bits, calls AC46B0 and appends
   exact changed mask. Price delta is cost*popcount(changed)*0.25 with stored float intermediate and
   negative clear; unchanged parts cost zero. */

void __thiscall
BasementUndo_ApplyRequestedPartsAndPrice(void *this,undefined *tileAndMask,uint stateWord)

{
  undefined4 *puVar1;
  undefined *puVar2;
  bool bVar3;
  uint uVar4;
  undefined1 *this_00;
  byte bVar5;
  float10 *unaff_EBX;
  int iVar6;
  float10 extraout_ST0;
  float10 fVar7;
  char cVar8;
  
  puVar2 = tileAndMask;
  if (*(int *)((int)this + 0x50) != 0) {
    tileAndMask = (undefined *)(uint)*(uint3 *)tileAndMask;
    iVar6 = 0;
    do {
      bVar5 = '\x01' << ((byte)iVar6 & 0x1f);
      if ((puVar2[3] & bVar5) != 0) {
        bVar3 = FUN_00ab6ca0(*(void **)((int)this + 0x50),puVar2,(byte)iVar6);
        if (bVar3 != (bool)(char)stateWord) {
          tileAndMask = (undefined *)CONCAT13(tileAndMask._3_1_ | bVar5,tileAndMask._0_3_);
        }
      }
      uVar4 = stateWord;
      iVar6 = iVar6 + 1;
    } while (iVar6 < 4);
    if (tileAndMask._3_1_ != '\0') {
      cVar8 = (char)stateWord;
      LotBasement_SetRequestedQuarterParts(*(void **)((int)this + 0x50),(char *)&tileAndMask,cVar8);
      puVar1 = *(undefined4 **)((int)this + 0x5c);
      if (puVar1 < *(undefined4 **)((int)this + 0x60)) {
        *(undefined4 **)((int)this + 0x5c) = puVar1 + 1;
        if (puVar1 != (undefined4 *)0x0) {
          *(undefined2 *)puVar1 = tileAndMask._0_2_;
          *(undefined1 *)((int)puVar1 + 2) = tileAndMask._2_1_;
          *(byte *)((int)puVar1 + 3) = tileAndMask._3_1_;
        }
      }
      else {
        FUN_00a4b4b0((void *)((int)this + 0x58),puVar1,&tileAndMask);
      }
      FUN_00d1c6d0(this,(undefined2 *)&tileAndMask,(char *)uVar4);
      uVar4 = (int)(char)tileAndMask._3_1_ - ((uint)(int)(char)tileAndMask._3_1_ >> 1 & 0x55555555);
      uVar4 = (uVar4 >> 2 & 0x33333333) + (uVar4 & 0x33333333);
      this_00 = FUN_00aafe30();
      LotSettings_GetBasementTileCost(this_00,unaff_EBX);
      stateWord = (uint)(float)(extraout_ST0 *
                                (float10)(((uVar4 >> 4) + uVar4 & 0xf0f0f0f) * 0x1010101 >> 0x18) *
                               (float10)0.25);
      if (cVar8 == '\0') {
        stateWord = (uint)(-0.0 - (float)stateWord);
      }
      iVar6 = *(int *)this;
      fVar7 = (float10)(**(code **)(iVar6 + 0x30))();
      (**(code **)(iVar6 + 0x2c))((float)(fVar7 + (float10)(float)stateWord));
    }
  }
  return;
}

