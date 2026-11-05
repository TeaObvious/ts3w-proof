/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


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
  void *pvVar8;
  undefined3 extraout_var;
  float *pfVar9;
  int iVar10;
  int iVar11;
  int iVar12;
  void *pvVar13;
  dword mode;
  uint *puVar14;
  void *pvVar15;
  int iVar16;
  int iVar17;
  uint *puVar18;
  float10 fVar19;
  float fVar20;
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
  iVar17 = count;
  (**(code **)(**(int **)((int)this + 0x2c) + 4))(*(int **)((int)this + 0x2c),count,modeBits,0);
  (**(code **)(**(int **)((int)this + 0x30) + 4))(*(int **)((int)this + 0x30),iVar17,mode,0);
  (**(code **)(**(int **)((int)this + 0xd0) + 4))(*(int **)((int)this + 0xd0),iVar17,mode,0);
  (**(code **)(**(int **)((int)this + 0x24) + 4))(*(int **)((int)this + 0x24),iVar17,mode,0);
  (**(code **)(**(int **)((int)this + 0x28) + 4))(*(int **)((int)this + 0x28),iVar17,mode,0);
  piVar1 = *(int **)((int)this + 0xd4);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))(piVar1,iVar17,mode,0);
  }
  piVar1 = *(int **)((int)this + 0x48);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))(piVar1,iVar17,mode,0);
  }
  piVar1 = *(int **)((int)this + 0x4c);
  if (piVar1 != (int *)0x0) {
    (**(code **)(*piVar1 + 4))(piVar1,iVar17,mode,0);
  }
  if (0 < iVar17) {
    pvVar13 = (void *)(-(uint)((char)mode != '\0') &
                      (*(int *)((int)this + 0x14) - *(int *)((int)this + 0x10)) + 1U);
    iVar17 = (int)pvVar13 + iVar17 + -1;
    apvStack_48[0] = pvVar13;
    iStack_40 = iVar17;
    uVar5 = FloorKeyMap_FindStorageIdOrZero(*(void **)((int)this + 0xd8),(undefined *)&DAT_011ec8e0)
    ;
    uVar2 = (undefined2)uVar5;
    fStack_38 = (float)CONCAT22(uVar2,uVar2);
    piStack_34 = (int *)CONCAT22(uVar2,uVar2);
    FUN_00a974c0(*(void **)((int)this + 0x2c),(int)pvVar13,iVar17,&fStack_38);
    if (iVar17 < (int)pvVar13) {
      iVar6 = 0;
    }
    else {
      iVar6 = (iVar17 - (int)pvVar13) + 1;
    }
    pvStack_4c = *(void **)((int)this + 0xd8);
    uVar5 = (*(int *)((int)this + 0xc) + 1) * (*(int *)((int)this + 8) + 1) * iVar6 * 4;
    if ((uVar5 != 0) && (FloorKeyMap_AddReference(pvStack_4c,(undefined *)&DAT_011ec8e0), 1 < uVar5)
       ) {
      puVar7 = FloorKeyMap_GetOrCreateCounters(pvStack_4c,(undefined *)&DAT_011ec8e0);
      *(uint *)(puVar7 + 4) = *(int *)(puVar7 + 4) + (uVar5 - 1);
    }
    if (*(void **)((int)this + 0x48) != (void *)0x0) {
      FUN_00a974c0(*(void **)((int)this + 0x48),(int)pvVar13,iVar17,&fStack_38);
      pvStack_4c = *(void **)((int)this + 0xd8);
      if ((uVar5 != 0) &&
         (FloorKeyMap_AddReference(pvStack_4c,(undefined *)&DAT_011ec8e0), 1 < uVar5)) {
        puVar7 = FloorKeyMap_GetOrCreateCounters(pvStack_4c,(undefined *)&DAT_011ec8e0);
        *(uint *)(puVar7 + 4) = *(int *)(puVar7 + 4) + (uVar5 - 1);
      }
    }
    if (*(void **)((int)this + 0x4c) != (void *)0x0) {
      bStack_59 = 0;
      FUN_00a971a0(*(void **)((int)this + 0x4c),(int)pvVar13,iVar17,&bStack_59);
    }
    bStack_59 = 0;
    FUN_00a971a0(*(void **)((int)this + 0x30),(int)pvVar13,iVar17,&bStack_59);
    bStack_59 = 0;
    FUN_00a971a0(*(void **)((int)this + 0xd0),(int)pvVar13,iVar17,&bStack_59);
    iVar6 = *(int *)((int)this + 0x28);
    iVar12 = *(int *)(iVar6 + 8) * *(int *)(iVar6 + 4);
    pvVar8 = (void *)(iVar12 * (int)pvVar13 + *(int *)(iVar6 + 0x10));
    memset(pvVar8,0xf,((iVar17 + 1) * iVar12 - (int)pvVar8) + *(int *)(iVar6 + 0x10));
    if (*(void **)((int)this + 0xd4) != (void *)0x0) {
      bStack_59 = 0;
      FUN_00a971a0(*(void **)((int)this + 0xd4),(int)pvVar13,iVar17,&bStack_59);
    }
    fVar19 = Lot_GetLocalSeaLevel(*(int **)((int)this + 4));
    fStack_38 = (float)fVar19;
    bStack_59 = *(byte *)(*(int *)((int)this + 4) + 0x4b0);
    uVar4 = FUN_00ab0590(*(int *)((int)this + 4));
    fVar3 = fStack_38;
    pvStack_50 = (void *)CONCAT31(extraout_var,uVar4);
    iVar6 = 0;
    mode = modeBits;
    if (-1 < *(int *)((int)this + 8)) {
      do {
        iVar12 = 0;
        if (-1 < *(int *)((int)this + 0xc)) {
          fStack_38 = (float)((iVar17 - (int)pvVar13) + 1);
          pvVar8 = pvVar13;
          do {
            if ((char)modeBits == '\0') {
              iVar10 = iVar17;
              iVar16 = iVar17;
              if (3 < (int)fStack_38) {
                pvStack_4c = (void *)(iVar17 + -1);
                do {
                  iVar10 = *(int *)((int)this + 0x24);
                  *(float *)(*(int *)(iVar10 + 0x10) +
                            ((*(int *)(iVar10 + 4) * iVar17 + iVar6) * *(int *)(iVar10 + 8) + iVar12
                            ) * 4) =
                       *(float *)(*(int *)(iVar10 + 0x10) +
                                 ((((int)pvStack_4c + 2) * *(int *)(iVar10 + 4) + iVar6) *
                                  *(int *)(iVar10 + 8) + iVar12) * 4) - 3.0;
                  iVar10 = *(int *)((int)this + 0x24);
                  *(float *)(*(int *)(iVar10 + 0x10) +
                            ((*(int *)(iVar10 + 4) * (int)pvStack_4c + iVar6) * *(int *)(iVar10 + 8)
                            + iVar12) * 4) =
                       *(float *)(*(int *)(iVar10 + 0x10) +
                                 ((*(int *)(iVar10 + 4) * iVar17 + iVar6) * *(int *)(iVar10 + 8) +
                                 iVar12) * 4) - 3.0;
                  iVar10 = *(int *)((int)this + 0x24);
                  *(float *)(*(int *)(iVar10 + 0x10) +
                            ((*(int *)(iVar10 + 4) * ((int)pvStack_4c + -1) + iVar6) *
                             *(int *)(iVar10 + 8) + iVar12) * 4) =
                       *(float *)(*(int *)(iVar10 + 0x10) +
                                 ((*(int *)(iVar10 + 4) * (int)pvStack_4c + iVar6) *
                                  *(int *)(iVar10 + 8) + iVar12) * 4) - 3.0;
                  iVar10 = *(int *)((int)this + 0x24);
                  *(float *)(*(int *)(iVar10 + 0x10) +
                            ((((int)pvStack_4c + -2) * *(int *)(iVar10 + 4) + iVar6) *
                             *(int *)(iVar10 + 8) + iVar12) * 4) =
                       *(float *)(*(int *)(iVar10 + 0x10) +
                                 ((*(int *)(iVar10 + 4) * ((int)pvStack_4c + -1) + iVar6) *
                                  *(int *)(iVar10 + 8) + iVar12) * 4) - 3.0;
                  iVar17 = iVar17 + -4;
                  pvStack_4c = (void *)((int)pvStack_4c + -4);
                  pvVar8 = apvStack_48[0];
                  iVar10 = iStack_40;
                  iVar16 = iVar17;
                } while ((int)apvStack_48[0] + 3 <= iVar17);
              }
              pvVar13 = pvVar8;
              iVar17 = iVar10;
              if ((int)pvVar8 <= iVar16) {
                pvStack_4c = (void *)(iVar16 + 1);
                do {
                  iVar17 = *(int *)((int)this + 0x24);
                  iVar10 = *(int *)(iVar17 + 4) * (int)pvStack_4c;
                  pvStack_4c = (void *)((int)pvStack_4c + -1);
                  iVar11 = *(int *)(iVar17 + 4) * iVar16;
                  iVar16 = iVar16 + -1;
                  *(float *)(*(int *)(iVar17 + 0x10) +
                            ((iVar11 + iVar6) * *(int *)(iVar17 + 8) + iVar12) * 4) =
                       *(float *)(*(int *)(iVar17 + 0x10) +
                                 ((iVar10 + iVar6) * *(int *)(iVar17 + 8) + iVar12) * 4) - 3.0;
                  pvVar13 = apvStack_48[0];
                  iVar17 = iStack_40;
                } while ((int)apvStack_48[0] <= iVar16);
              }
            }
            else {
              pvVar13 = pvVar8;
              if (3 < (int)fStack_38) {
                pvVar15 = (void *)((int)pvVar8 + 1);
                pvStack_4c = pvVar8;
                do {
                  iVar17 = *(int *)((int)this + 0x24);
                  fVar20 = *(float *)(*(int *)(iVar17 + 0x10) +
                                     ((*(int *)(iVar17 + 4) * ((int)pvVar15 + -2) + iVar6) *
                                      *(int *)(iVar17 + 8) + iVar12) * 4);
                  if (((bStack_59 == 0) || ((void *)((int)pvVar15 + -2) != pvStack_50)) ||
                     (fVar3 <= fVar20)) {
                    fVar20 = fVar20 + 3.0;
                  }
                  else {
                    fStack_58 = fVar3 + 0.75;
                    fStack_54 = fVar20 + 3.0;
                    pfVar9 = &fStack_58;
                    if (fVar3 + 0.75 <= fVar20 + 3.0) {
                      pfVar9 = &fStack_54;
                    }
                    fVar20 = *pfVar9;
                  }
                  *(float *)(*(int *)(iVar17 + 0x10) +
                            ((*(int *)(iVar17 + 4) * (int)pvStack_4c + iVar6) * *(int *)(iVar17 + 8)
                            + iVar12) * 4) = fVar20;
                  iVar17 = *(int *)((int)this + 0x24);
                  fVar20 = *(float *)(*(int *)(iVar17 + 0x10) +
                                     ((*(int *)(iVar17 + 4) * (int)pvStack_4c + iVar6) *
                                      *(int *)(iVar17 + 8) + iVar12) * 4);
                  if (((bStack_59 == 0) || (pvStack_4c != pvStack_50)) || (fVar3 <= fVar20)) {
                    fVar20 = fVar20 + 3.0;
                  }
                  else {
                    fStack_58 = fVar3 + 0.75;
                    fStack_54 = fVar20 + 3.0;
                    pfVar9 = &fStack_58;
                    if (fVar3 + 0.75 <= fVar20 + 3.0) {
                      pfVar9 = &fStack_54;
                    }
                    fVar20 = *pfVar9;
                  }
                  *(float *)(*(int *)(iVar17 + 0x10) +
                            ((*(int *)(iVar17 + 4) * (int)pvVar15 + iVar6) * *(int *)(iVar17 + 8) +
                            iVar12) * 4) = fVar20;
                  iVar17 = *(int *)((int)this + 0x24);
                  fVar20 = *(float *)(*(int *)(iVar17 + 0x10) +
                                     ((*(int *)(iVar17 + 4) * (int)pvVar15 + iVar6) *
                                      *(int *)(iVar17 + 8) + iVar12) * 4);
                  if (((bStack_59 == 0) || (pvVar15 != pvStack_50)) || (fVar3 <= fVar20)) {
                    fVar20 = fVar20 + 3.0;
                  }
                  else {
                    fStack_58 = fVar3 + 0.75;
                    fStack_54 = fVar20 + 3.0;
                    pfVar9 = &fStack_58;
                    if (fVar3 + 0.75 <= fVar20 + 3.0) {
                      pfVar9 = &fStack_54;
                    }
                    fVar20 = *pfVar9;
                  }
                  *(float *)(*(int *)(iVar17 + 0x10) +
                            ((*(int *)(iVar17 + 4) * ((int)pvVar15 + 1) + iVar6) *
                             *(int *)(iVar17 + 8) + iVar12) * 4) = fVar20;
                  iVar17 = *(int *)((int)this + 0x24);
                  fVar20 = *(float *)(*(int *)(iVar17 + 0x10) +
                                     ((*(int *)(iVar17 + 4) * ((int)pvVar15 + 1) + iVar6) *
                                      *(int *)(iVar17 + 8) + iVar12) * 4);
                  if (((bStack_59 == 0) || ((void *)((int)pvVar15 + 1) != pvStack_50)) ||
                     (fVar3 <= fVar20)) {
                    fVar20 = fVar20 + 3.0;
                  }
                  else {
                    fStack_58 = fVar3 + 0.75;
                    fStack_54 = fVar20 + 3.0;
                    pfVar9 = &fStack_58;
                    if (fVar3 + 0.75 <= fVar20 + 3.0) {
                      pfVar9 = &fStack_54;
                    }
                    fVar20 = *pfVar9;
                  }
                  *(float *)(*(int *)(iVar17 + 0x10) +
                            ((((int)pvVar15 + 2) * *(int *)(iVar17 + 4) + iVar6) *
                             *(int *)(iVar17 + 8) + iVar12) * 4) = fVar20;
                  pvVar8 = (void *)((int)pvStack_4c + 4);
                  pvVar15 = (void *)((int)pvVar15 + 4);
                  pvVar13 = apvStack_48[0];
                  iVar17 = iStack_40;
                  pvStack_4c = pvVar8;
                } while ((int)pvVar8 <= iStack_40 + -3);
              }
              pvStack_4c = pvVar8;
              if ((int)pvVar8 <= iVar17) {
                pvStack_4c = (void *)((int)pvVar8 + -1);
                do {
                  iVar17 = *(int *)((int)this + 0x24);
                  fVar20 = *(float *)(*(int *)(iVar17 + 0x10) +
                                     ((*(int *)(iVar17 + 4) * (int)pvStack_4c + iVar6) *
                                      *(int *)(iVar17 + 8) + iVar12) * 4);
                  if (((bStack_59 == 0) || (pvStack_4c != pvStack_50)) || (fVar3 <= fVar20)) {
                    fVar20 = fVar20 + 3.0;
                  }
                  else {
                    fStack_58 = fVar3 + 0.75;
                    fStack_54 = fVar20 + 3.0;
                    pfVar9 = &fStack_58;
                    if (fVar3 + 0.75 <= fVar20 + 3.0) {
                      pfVar9 = &fStack_54;
                    }
                    fVar20 = *pfVar9;
                  }
                  pvStack_4c = (void *)((int)pvStack_4c + 1);
                  *(float *)(*(int *)(iVar17 + 0x10) +
                            ((*(int *)(iVar17 + 4) * (int)pvVar8 + iVar6) * *(int *)(iVar17 + 8) +
                            iVar12) * 4) = fVar20;
                  pvVar8 = (void *)((int)pvVar8 + 1);
                  pvVar13 = apvStack_48[0];
                  iVar17 = iStack_40;
                } while ((int)pvVar8 <= iStack_40);
              }
            }
            iVar12 = iVar12 + 1;
            pvVar8 = pvVar13;
          } while (iVar12 <= *(int *)((int)this + 0xc));
        }
        iVar6 = iVar6 + 1;
      } while (iVar6 <= *(int *)((int)this + 8));
    }
  }
  *(undefined1 *)((int)this + 0x220) = 1;
  if (*(int *)((int)this + 0x160) != 0) {
    pvVar13 = (void *)((int)this + 0x154);
    if ((char)mode == '\0') {
      if (count < 1) {
        iVar17 = -count;
        iVar6 = 0;
        if (0 < iVar17) {
          do {
            modeBits = *(int *)((int)this + 0x10) + iVar6;
            FUN_00a668d0(pvVar13,&fStack_38,&modeBits);
            if (fStack_38 !=
                *(float *)(*(int *)((int)this + 0x158) + *(int *)((int)this + 0x15c) * 4)) {
              FUN_00a8b5d0(pvVar13,&iStack_40,(int)fStack_38,piStack_34);
            }
            iVar6 = iVar6 + 1;
          } while (iVar6 < iVar17);
        }
      }
      else {
        FUN_00a668d0(pvVar13,&fStack_38,(uint *)((int)this + 0x10));
        iVar17 = count;
        if (fStack_38 != *(float *)(*(int *)((int)this + 0x158) + *(int *)((int)this + 0x15c) * 4))
        {
          puVar14 = (uint *)((int)fStack_38 + 8);
          puVar18 = auStack_30;
          for (iVar6 = 0xc; iVar6 != 0; iVar6 = iVar6 + -1) {
            *puVar18 = *puVar14;
            puVar14 = puVar14 + 1;
            puVar18 = puVar18 + 1;
          }
          iVar6 = 1;
          if (0 < count) {
            do {
              FUN_00a91280(this,(char)*(uint *)((int)this + 0x10) - (char)iVar6,auStack_30,'\0');
              iVar6 = iVar6 + 1;
            } while (iVar6 <= iVar17);
          }
        }
      }
      goto LAB_00a99b5a;
    }
    if (count < 1) {
      fStack_38 = (float)-count;
      iVar17 = 0;
      if (0 < (int)fStack_38) {
        do {
          modeBits = *(int *)((int)this + 0x14) - iVar17;
          FUN_00a668d0(pvVar13,&iStack_40,&modeBits);
          if (iStack_40 != *(int *)(*(int *)((int)this + 0x158) + *(int *)((int)this + 0x15c) * 4))
          {
            FUN_00a8b5d0(pvVar13,(int *)apvStack_48,iStack_40,piStack_3c);
          }
          iVar17 = iVar17 + 1;
        } while (iVar17 < (int)fStack_38);
      }
    }
    else {
      FUN_00a668d0(pvVar13,&fStack_38,(uint *)((int)this + 0x14));
      iVar17 = count;
      if (fStack_38 != *(float *)(*(int *)((int)this + 0x158) + *(int *)((int)this + 0x15c) * 4)) {
        puVar14 = (uint *)((int)fStack_38 + 8);
        puVar18 = auStack_30;
        for (iVar6 = 0xc; iVar6 != 0; iVar6 = iVar6 + -1) {
          *puVar18 = *puVar14;
          puVar14 = puVar14 + 1;
          puVar18 = puVar18 + 1;
        }
        iVar6 = 1;
        if (0 < count) {
          do {
            FUN_00a91280(this,(char)*(undefined4 *)((int)this + 0x14) + (char)iVar6,auStack_30,'\0')
            ;
            iVar6 = iVar6 + 1;
          } while (iVar6 <= iVar17);
        }
      }
    }
  }
  iVar17 = count;
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
    } while (iVar6 < iVar17);
    return;
  }
LAB_00a99b5a:
  iVar17 = count;
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
    } while (iVar6 < iVar17);
  }
  return;
}

