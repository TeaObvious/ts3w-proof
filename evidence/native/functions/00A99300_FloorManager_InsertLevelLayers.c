/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 selected added-level initialization contract: ECXmanager plus signedcount and lowbyte mode
   RET8, void. Eight initial virtual4 layer calls physically have ECXlayer plus count,mode,0
   stackwords (callee purges12). Count<=0 bypasses positive insertion initialization. Mode0 selected
   inserted row starts0; nonzero lowbyte starts oldspan(max-min+1); interval end=start+count-1.
   Owner layer +D0 zero-filled and FlagsLayer +28 newly inserted selected interval memset0F. Whole
   height/topology/room rebuild body retained; no claim all state/reentrancy semantics understood.
   Correct scalar argument and local virtual ABI overrides prevent fake pointer/count and stack
   drift in actual C.
   
   Added-level null-pattern closure from actual instructions: 00A9939B..B5 computes insert start0
   for lowbyte mode0, else OLD manager max-min+1; actual C pointer-typed start/casts remain
   artifacts. Loads64byte all-zero quad at011EC8E0 and callsA8FA00 BEFORE reference insertion. MOVZX
   EAX,AX atA993C8 then repeats LOW16 ID into all4quarter lanes; do not forceID0. Added physical
   pattern uses=(Width+1)*(Depth+1)*insertedCount*4 UInt32. A90E70 adds first reference; if count>1
   A90C00 counter+4 increases bycount-1. Matching null row is allFOUR16bytekeys, not only catalog
   key or assumed storage0. New rotations0, flags0F; height ordinary+/-3, specialwater-lot+4B0 uses
   sea level and AB0590 condition. This bounded contract does not certify every remaining
   topology/virtual/reentrancy expression in genuine C. */

void __thiscall FloorManager_InsertLevelLayers(void *this,int count,dword modeBits)

{
  int *piVar1;
  undefined2 uVar2;
  float fVar3;
  undefined1 uVar4;
  uint uVar5;
  int iVar6;
  undefined *puVar7;
  void *_Dst;
  undefined3 extraout_var;
  float *pfVar8;
  int iVar9;
  int iVar10;
  int iVar11;
  void *pvVar12;
  dword mode;
  uint *puVar13;
  int iVar14;
  int iVar15;
  uint *puVar16;
  float10 fVar17;
  float fVar18;
  byte bStack_59;
  float fStack_58;
  float fStack_54;
  void *pvStack_50;
  void *pvStack_4c;
  void *apvStack_48 [2];
  int iStack_40;
  int *piStack_3c;
  float fStack_38;
  int *piStack_34;
  uint auStack_30 [12];
  
  mode = modeBits;
  iVar15 = count;
  (**(code **)(**(int **)((int)this + 0x2c) + 4))(*(int **)((int)this + 0x2c),count,modeBits,0);
  (**(code **)(**(int **)((int)this + 0x30) + 4))(*(int **)((int)this + 0x30),iVar15,mode,0);
  (**(code **)(**(int **)((int)this + 0xd0) + 4))(*(int **)((int)this + 0xd0),iVar15,mode,0);
  (**(code **)(**(int **)((int)this + 0x24) + 4))(*(int **)((int)this + 0x24),iVar15,mode,0);
  (**(code **)(**(int **)((int)this + 0x28) + 4))(*(int **)((int)this + 0x28),iVar15,mode,0);
  piVar1 = *(int **)((int)this + 0xd4);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))(piVar1,iVar15,mode,0);
  }
  piVar1 = *(int **)((int)this + 0x48);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))(piVar1,iVar15,mode,0);
  }
  piVar1 = *(int **)((int)this + 0x4c);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))(piVar1,iVar15,mode,0);
  }
  if (0 < iVar15) {
    pvVar12 = (void *)(-(uint)((char)mode != '\0') &
                      (*(int *)((int)this + 0x14) - *(int *)((int)this + 0x10)) + 1U);
    iVar15 = (int)pvVar12 + iVar15 + -1;
    apvStack_48[0] = pvVar12;
    iStack_40 = iVar15;
    uVar5 = FloorKeyMap_FindStorageIdOrZero(*(void **)((int)this + 0xd8),(undefined *)&DAT_011ec8e0)
    ;
    uVar2 = (undefined2)uVar5;
    fStack_38 = (float)CONCAT22(uVar2,uVar2);
    piStack_34 = (int *)CONCAT22(uVar2,uVar2);
    FUN_00a974c0(*(void **)((int)this + 0x2c),(int)pvVar12,iVar15,&fStack_38);
    if (iVar15 < (int)pvVar12) {
      iVar6 = 0;
    }
    else {
      iVar6 = (iVar15 - (int)pvVar12) + 1;
    }
    pvStack_4c = *(void **)((int)this + 0xd8);
    uVar5 = (*(int *)((int)this + 0xc) + 1) * (*(int *)((int)this + 8) + 1) * iVar6 * 4;
    if ((uVar5 != 0) && (FloorKeyMap_AddReference(pvStack_4c,(undefined *)&DAT_011ec8e0), 1 < uVar5)
       ) {
      puVar7 = FloorKeyMap_GetOrCreateCounters(pvStack_4c,(undefined *)&DAT_011ec8e0);
      *(uint *)(puVar7 + 4) = *(int *)(puVar7 + 4) + (uVar5 - 1);
    }
    if (*(void **)((int)this + 0x48) != (void *)0x0) {
      FUN_00a974c0(*(void **)((int)this + 0x48),(int)pvVar12,iVar15,&fStack_38);
      pvStack_4c = *(void **)((int)this + 0xd8);
      if ((uVar5 != 0) &&
         (FloorKeyMap_AddReference(pvStack_4c,(undefined *)&DAT_011ec8e0), 1 < uVar5)) {
        puVar7 = FloorKeyMap_GetOrCreateCounters(pvStack_4c,(undefined *)&DAT_011ec8e0);
        *(uint *)(puVar7 + 4) = *(int *)(puVar7 + 4) + (uVar5 - 1);
      }
    }
    if (*(void **)((int)this + 0x4c) != (void *)0x0) {
      bStack_59 = 0;
      FUN_00a971a0(*(void **)((int)this + 0x4c),(int)pvVar12,iVar15,&bStack_59);
    }
    bStack_59 = 0;
    FUN_00a971a0(*(void **)((int)this + 0x30),(int)pvVar12,iVar15,&bStack_59);
    bStack_59 = 0;
    FUN_00a971a0(*(void **)((int)this + 0xd0),(int)pvVar12,iVar15,&bStack_59);
    iVar6 = *(int *)((int)this + 0x28);
    iVar11 = *(int *)(iVar6 + 8) * *(int *)(iVar6 + 4);
    _Dst = (void *)(iVar11 * (int)pvVar12 + *(int *)(iVar6 + 0x10));
    memset(_Dst,0xf,((iVar15 + 1) * iVar11 - (int)_Dst) + *(int *)(iVar6 + 0x10));
    if (*(void **)((int)this + 0xd4) != (void *)0x0) {
      bStack_59 = 0;
      FUN_00a971a0(*(void **)((int)this + 0xd4),(int)pvVar12,iVar15,&bStack_59);
    }
    fVar17 = Lot_GetLocalSeaLevel(*(int **)((int)this + 4));
    fStack_38 = (float)fVar17;
    bStack_59 = *(byte *)(*(int *)((int)this + 4) + 0x4b0);
    uVar4 = Lot_IsCommercialDivingLot(*(int *)((int)this + 4));
    fVar3 = fStack_38;
    pvStack_50 = (void *)CONCAT31(extraout_var,uVar4);
    iVar6 = 0;
    if (-1 < *(int *)((int)this + 8)) {
      do {
        iVar11 = 0;
        if (-1 < *(int *)((int)this + 0xc)) {
          fStack_38 = (float)((iVar15 - (int)pvVar12) + 1);
          do {
            if ((char)modeBits == '\0') {
              iVar9 = iVar15;
              iVar14 = iVar15;
              if (3 < (int)fStack_38) {
                pvStack_4c = (void *)(iVar15 + -1);
                do {
                  iVar9 = *(int *)((int)this + 0x24);
                  *(float *)(*(int *)(iVar9 + 0x10) +
                            ((*(int *)(iVar9 + 4) * iVar15 + iVar6) * *(int *)(iVar9 + 8) + iVar11)
                            * 4) =
                       *(float *)(*(int *)(iVar9 + 0x10) +
                                 ((((int)pvStack_4c + 2) * *(int *)(iVar9 + 4) + iVar6) *
                                  *(int *)(iVar9 + 8) + iVar11) * 4) - 3.0;
                  iVar9 = *(int *)((int)this + 0x24);
                  *(float *)(*(int *)(iVar9 + 0x10) +
                            ((*(int *)(iVar9 + 4) * (int)pvStack_4c + iVar6) * *(int *)(iVar9 + 8) +
                            iVar11) * 4) =
                       *(float *)(*(int *)(iVar9 + 0x10) +
                                 ((*(int *)(iVar9 + 4) * iVar15 + iVar6) * *(int *)(iVar9 + 8) +
                                 iVar11) * 4) - 3.0;
                  iVar9 = *(int *)((int)this + 0x24);
                  *(float *)(*(int *)(iVar9 + 0x10) +
                            ((*(int *)(iVar9 + 4) * ((int)pvStack_4c + -1) + iVar6) *
                             *(int *)(iVar9 + 8) + iVar11) * 4) =
                       *(float *)(*(int *)(iVar9 + 0x10) +
                                 ((*(int *)(iVar9 + 4) * (int)pvStack_4c + iVar6) *
                                  *(int *)(iVar9 + 8) + iVar11) * 4) - 3.0;
                  iVar9 = *(int *)((int)this + 0x24);
                  *(float *)(*(int *)(iVar9 + 0x10) +
                            ((((int)pvStack_4c + -2) * *(int *)(iVar9 + 4) + iVar6) *
                             *(int *)(iVar9 + 8) + iVar11) * 4) =
                       *(float *)(*(int *)(iVar9 + 0x10) +
                                 ((*(int *)(iVar9 + 4) * ((int)pvStack_4c + -1) + iVar6) *
                                  *(int *)(iVar9 + 8) + iVar11) * 4) - 3.0;
                  iVar15 = iVar15 + -4;
                  pvStack_4c = (void *)((int)pvStack_4c + -4);
                } while ((int)apvStack_48[0] + 3 <= iVar15);
                pvVar12 = apvStack_48[0];
                iVar9 = iStack_40;
                iVar14 = iVar15;
              }
              iVar15 = iVar9;
              if ((int)pvVar12 <= iVar14) {
                pvStack_4c = (void *)(iVar14 + 1);
                do {
                  iVar15 = *(int *)((int)this + 0x24);
                  iVar9 = *(int *)(iVar15 + 4) * (int)pvStack_4c;
                  pvStack_4c = (void *)((int)pvStack_4c + -1);
                  iVar10 = *(int *)(iVar15 + 4) * iVar14;
                  iVar14 = iVar14 + -1;
                  *(float *)(*(int *)(iVar15 + 0x10) +
                            ((iVar10 + iVar6) * *(int *)(iVar15 + 8) + iVar11) * 4) =
                       *(float *)(*(int *)(iVar15 + 0x10) +
                                 ((iVar9 + iVar6) * *(int *)(iVar15 + 8) + iVar11) * 4) - 3.0;
                } while ((int)apvStack_48[0] <= iVar14);
                pvVar12 = apvStack_48[0];
                iVar15 = iStack_40;
              }
            }
            else {
              pvStack_4c = pvVar12;
              if (3 < (int)fStack_38) {
                pvVar12 = (void *)((int)pvVar12 + 1);
                do {
                  iVar15 = *(int *)((int)this + 0x24);
                  fVar18 = *(float *)(*(int *)(iVar15 + 0x10) +
                                     ((*(int *)(iVar15 + 4) * ((int)pvVar12 + -2) + iVar6) *
                                      *(int *)(iVar15 + 8) + iVar11) * 4);
                  if (((bStack_59 == 0) || ((void *)((int)pvVar12 + -2) != pvStack_50)) ||
                     (fVar3 <= fVar18)) {
                    fVar18 = fVar18 + 3.0;
                  }
                  else {
                    fStack_58 = fVar3 + 0.75;
                    fStack_54 = fVar18 + 3.0;
                    pfVar8 = &fStack_58;
                    if (fVar3 + 0.75 <= fVar18 + 3.0) {
                      pfVar8 = &fStack_54;
                    }
                    fVar18 = *pfVar8;
                  }
                  *(float *)(*(int *)(iVar15 + 0x10) +
                            ((*(int *)(iVar15 + 4) * (int)pvStack_4c + iVar6) * *(int *)(iVar15 + 8)
                            + iVar11) * 4) = fVar18;
                  iVar15 = *(int *)((int)this + 0x24);
                  fVar18 = *(float *)(*(int *)(iVar15 + 0x10) +
                                     ((*(int *)(iVar15 + 4) * (int)pvStack_4c + iVar6) *
                                      *(int *)(iVar15 + 8) + iVar11) * 4);
                  if (((bStack_59 == 0) || (pvStack_4c != pvStack_50)) || (fVar3 <= fVar18)) {
                    fVar18 = fVar18 + 3.0;
                  }
                  else {
                    fStack_58 = fVar3 + 0.75;
                    fStack_54 = fVar18 + 3.0;
                    pfVar8 = &fStack_58;
                    if (fVar3 + 0.75 <= fVar18 + 3.0) {
                      pfVar8 = &fStack_54;
                    }
                    fVar18 = *pfVar8;
                  }
                  *(float *)(*(int *)(iVar15 + 0x10) +
                            ((*(int *)(iVar15 + 4) * (int)pvVar12 + iVar6) * *(int *)(iVar15 + 8) +
                            iVar11) * 4) = fVar18;
                  iVar15 = *(int *)((int)this + 0x24);
                  fVar18 = *(float *)(*(int *)(iVar15 + 0x10) +
                                     ((*(int *)(iVar15 + 4) * (int)pvVar12 + iVar6) *
                                      *(int *)(iVar15 + 8) + iVar11) * 4);
                  if (((bStack_59 == 0) || (pvVar12 != pvStack_50)) || (fVar3 <= fVar18)) {
                    fVar18 = fVar18 + 3.0;
                  }
                  else {
                    fStack_58 = fVar3 + 0.75;
                    fStack_54 = fVar18 + 3.0;
                    pfVar8 = &fStack_58;
                    if (fVar3 + 0.75 <= fVar18 + 3.0) {
                      pfVar8 = &fStack_54;
                    }
                    fVar18 = *pfVar8;
                  }
                  *(float *)(*(int *)(iVar15 + 0x10) +
                            ((*(int *)(iVar15 + 4) * ((int)pvVar12 + 1) + iVar6) *
                             *(int *)(iVar15 + 8) + iVar11) * 4) = fVar18;
                  iVar15 = *(int *)((int)this + 0x24);
                  fVar18 = *(float *)(*(int *)(iVar15 + 0x10) +
                                     ((*(int *)(iVar15 + 4) * ((int)pvVar12 + 1) + iVar6) *
                                      *(int *)(iVar15 + 8) + iVar11) * 4);
                  if (((bStack_59 == 0) || ((void *)((int)pvVar12 + 1) != pvStack_50)) ||
                     (fVar3 <= fVar18)) {
                    fVar18 = fVar18 + 3.0;
                  }
                  else {
                    fStack_58 = fVar3 + 0.75;
                    fStack_54 = fVar18 + 3.0;
                    pfVar8 = &fStack_58;
                    if (fVar3 + 0.75 <= fVar18 + 3.0) {
                      pfVar8 = &fStack_54;
                    }
                    fVar18 = *pfVar8;
                  }
                  *(float *)(*(int *)(iVar15 + 0x10) +
                            ((((int)pvVar12 + 2) * *(int *)(iVar15 + 4) + iVar6) *
                             *(int *)(iVar15 + 8) + iVar11) * 4) = fVar18;
                  pvStack_4c = (void *)((int)pvStack_4c + 4);
                  pvVar12 = (void *)((int)pvVar12 + 4);
                } while ((int)pvStack_4c <= iStack_40 + -3);
                pvVar12 = apvStack_48[0];
                iVar15 = iStack_40;
              }
              if ((int)pvStack_4c <= iVar15) {
                pvVar12 = pvStack_4c;
                pvStack_4c = (void *)((int)pvStack_4c + -1);
                do {
                  iVar15 = *(int *)((int)this + 0x24);
                  fVar18 = *(float *)(*(int *)(iVar15 + 0x10) +
                                     ((*(int *)(iVar15 + 4) * (int)pvStack_4c + iVar6) *
                                      *(int *)(iVar15 + 8) + iVar11) * 4);
                  if (((bStack_59 == 0) || (pvStack_4c != pvStack_50)) || (fVar3 <= fVar18)) {
                    fVar18 = fVar18 + 3.0;
                  }
                  else {
                    fStack_58 = fVar3 + 0.75;
                    fStack_54 = fVar18 + 3.0;
                    pfVar8 = &fStack_58;
                    if (fVar3 + 0.75 <= fVar18 + 3.0) {
                      pfVar8 = &fStack_54;
                    }
                    fVar18 = *pfVar8;
                  }
                  pvStack_4c = (void *)((int)pvStack_4c + 1);
                  *(float *)(*(int *)(iVar15 + 0x10) +
                            ((*(int *)(iVar15 + 4) * (int)pvVar12 + iVar6) * *(int *)(iVar15 + 8) +
                            iVar11) * 4) = fVar18;
                  pvVar12 = (void *)((int)pvVar12 + 1);
                } while ((int)pvVar12 <= iStack_40);
                pvVar12 = apvStack_48[0];
                iVar15 = iStack_40;
              }
            }
            iVar11 = iVar11 + 1;
          } while (iVar11 <= *(int *)((int)this + 0xc));
        }
        iVar6 = iVar6 + 1;
      } while (iVar6 <= *(int *)((int)this + 8));
    }
    mode = modeBits;
  }
  *(undefined1 *)((int)this + 0x220) = 1;
  if (*(int *)((int)this + 0x160) != 0) {
    pvVar12 = (void *)((int)this + 0x154);
    if ((char)mode == '\0') {
      if (count < 1) {
        iVar15 = -count;
        iVar6 = 0;
        if (0 < iVar15) {
          do {
            modeBits = *(int *)((int)this + 0x10) + iVar6;
            FUN_00a668d0(pvVar12,&fStack_38,&modeBits);
            if (fStack_38 !=
                *(float *)(*(int *)((int)this + 0x158) + *(int *)((int)this + 0x15c) * 4)) {
              FUN_00a8b5d0(pvVar12,&iStack_40,(int)fStack_38,piStack_34);
            }
            iVar6 = iVar6 + 1;
          } while (iVar6 < iVar15);
        }
      }
      else {
        FUN_00a668d0(pvVar12,&fStack_38,(uint *)((int)this + 0x10));
        iVar15 = count;
        if (fStack_38 != *(float *)(*(int *)((int)this + 0x158) + *(int *)((int)this + 0x15c) * 4))
        {
          puVar13 = (uint *)((int)fStack_38 + 8);
          puVar16 = auStack_30;
          for (iVar6 = 0xc; iVar6 != 0; iVar6 = iVar6 + -1) {
            *puVar16 = *puVar13;
            puVar13 = puVar13 + 1;
            puVar16 = puVar16 + 1;
          }
          iVar6 = 1;
          if (0 < count) {
            do {
              FUN_00a91280(this,(char)*(uint *)((int)this + 0x10) - (char)iVar6,auStack_30,'\0');
              iVar6 = iVar6 + 1;
            } while (iVar6 <= iVar15);
          }
        }
      }
      goto LAB_00a99b5a;
    }
    if (count < 1) {
      fStack_38 = (float)-count;
      iVar15 = 0;
      if (0 < (int)fStack_38) {
        do {
          modeBits = *(int *)((int)this + 0x14) - iVar15;
          FUN_00a668d0(pvVar12,&iStack_40,&modeBits);
          if (iStack_40 != *(int *)(*(int *)((int)this + 0x158) + *(int *)((int)this + 0x15c) * 4))
          {
            FUN_00a8b5d0(pvVar12,(int *)apvStack_48,iStack_40,piStack_3c);
          }
          iVar15 = iVar15 + 1;
        } while (iVar15 < (int)fStack_38);
      }
    }
    else {
      FUN_00a668d0(pvVar12,&fStack_38,(uint *)((int)this + 0x14));
      iVar15 = count;
      if (fStack_38 != *(float *)(*(int *)((int)this + 0x158) + *(int *)((int)this + 0x15c) * 4)) {
        puVar13 = (uint *)((int)fStack_38 + 8);
        puVar16 = auStack_30;
        for (iVar6 = 0xc; iVar6 != 0; iVar6 = iVar6 + -1) {
          *puVar16 = *puVar13;
          puVar13 = puVar13 + 1;
          puVar16 = puVar16 + 1;
        }
        iVar6 = 1;
        if (0 < count) {
          do {
            FUN_00a91280(this,(char)*(undefined4 *)((int)this + 0x14) + (char)iVar6,auStack_30,'\0')
            ;
            iVar6 = iVar6 + 1;
          } while (iVar6 <= iVar15);
        }
      }
    }
  }
  iVar15 = count;
  if ((char)mode != '\0') {
    *(int *)((int)this + 0x14) = *(int *)((int)this + 0x14) + count;
    if (count < 1) {
      return;
    }
    iVar6 = 0;
    if (count < 1) {
      return;
    }
    do {
      piVar1 = *(int **)((int)this + 0x108);
      count = *(int *)((int)this + 0x14) - iVar6;
      if (piVar1 < *(int **)((int)this + 0x10c)) {
        *(int **)((int)this + 0x108) = piVar1 + 1;
        if (piVar1 != (int *)0x0) {
          *piVar1 = count;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0x104),piVar1,&count);
      }
      iVar6 = iVar6 + 1;
    } while (iVar6 < iVar15);
    return;
  }
LAB_00a99b5a:
  iVar15 = count;
  *(int *)((int)this + 0x10) = *(int *)((int)this + 0x10) - count;
  if ((0 < count) && (iVar6 = 0, 0 < count)) {
    do {
      piVar1 = *(int **)((int)this + 0x108);
      count = *(int *)((int)this + 0x10) + iVar6;
      if (piVar1 < *(int **)((int)this + 0x10c)) {
        *(int **)((int)this + 0x108) = piVar1 + 1;
        if (piVar1 != (int *)0x0) {
          *piVar1 = count;
        }
      }
      else {
        FUN_00982420((void *)((int)this + 0x104),piVar1,&count);
      }
      iVar6 = iVar6 + 1;
    } while (iVar6 < iVar15);
  }
  return;
}

