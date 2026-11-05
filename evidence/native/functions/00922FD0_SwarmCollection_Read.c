/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Swarm collection contract. ECX collection+ONEstream stackword RET4, ALBoolean;
   corrected missing receiver/falseDWORD result. The saved ECX local is NOT uninitialized collection
   state. UInt16 header must equal2. All direct16/32/64 reads here pass fullDWORD endianFlag0, hence
   big-endian per original primitive helpers; their ALfailures are ignored by this parser. No
   rollback or truncation acceptance guarantee. Two FFFF-terminatedUInt16 kind groups: factory
   pointer at11DC0A4+kind*28 then11DC7A8+kind*32; nonnull factory admits UInt16version checked
   signedagainst registeredDWORDmin/max at+8/+12 relativefactoryslot. FailureAL0 leaves prior
   mutations. No local kind-table bounds guard. NULLfactory does NOT read version/count or skip
   generic payload: immediately reads nextkind. Registrations/type meanings remain unexpanded. Each
   admitted group readsUInt32count,resizes16-byte per-kind pointer vector atcollection+24/+34,
   THENsignedcount>0 iterates cdeclfactory(stream,version),retainnew+4/store/releaseold; zero
   refcount resets1andcallsECXdestructor(1). Large unsignedcounts may allocate before
   signedloopskip; not safe countadmission. NextUInt16descriptionVersion,UInt32count
   resizecollection+44, actualend-begin/72signedpositive drives92F760. Clears IDmap+68,
   resetscount+74, reads signednonnegativeDWORD IDs withBEUInt64keys; ANYnegativeIDs terminate, not
   justFFFFFFFF. Existing U64PairMap_InsertUnique supplies first-key retention; its unused thirdword
   only lowbyteinitialized. Clears/free20byte-name entries at+54; nextsignednonnegativeIDs
   pairwithzero-terminatedbytestring via8CA2E0 andsorted20-byte insert. Lowerboundcaseflag
   comesfromvector+10; comparison/duplicate policy not fully reviewed here. AL1 after negative name
   sentinel/temporary cleanup; this is NOT proof complete IOsuccess. Partial collection mutations
   persist onexplicitversionfailure. Static selected grammar; full concrete factories/name
   comparison/limits/resources/consumer lifetime remainopen. Factory null return is stored without
   an explicit parser failure; primitive failures and factory result are not propagated. ID map
   value has only its lowDWORD explicitly supplied here; the other valueDWORD is not established by
   this caller. */

bool __thiscall SwarmCollection_Read(void *this,void *stream)

{
  undefined4 *puVar1;
  void *pvVar2;
  undefined1 *allocation;
  undefined *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  byte **ppbVar6;
  uint uVar7;
  byte *pbVar8;
  byte *pbVar9;
  int iVar10;
  int iVar11;
  size_t _Size;
  byte *pbVar12;
  byte *pbVar13;
  ushort local_4c [2];
  ushort local_48 [2];
  uint local_44;
  byte *pbStack_40;
  byte *local_3c;
  byte *local_38;
  byte *pbStack_34;
  uint uStack_30;
  byte *pbStack_2c;
  byte *pbStack_28;
  undefined1 *puStack_24;
  undefined1 *puStack_20;
  undefined *puStack_1c;
  char *pcStack_18;
  byte *pbStack_14;
  byte *pbStack_10;
  byte *pbStack_c;
  char *pcStack_8;
  byte *pbStack_4;
  
  local_3c = this;
  Stream_ReadUInt16(stream,(ushort *)&local_44,0);
  if ((short)local_44 != 2) {
    return false;
  }
  Stream_ReadUInt16(stream,local_4c,0);
  while (local_4c[0] != 0xffff) {
    if ((&DAT_011dc0a4)[(uint)local_4c[0] * 7] != 0) {
      Stream_ReadUInt16(stream,(ushort *)&local_44,0);
      if ((int)(local_44 & 0xffff) < (int)(&DAT_011dc0ac)[(uint)local_4c[0] * 7]) {
        return false;
      }
      if ((int)(&DAT_011dc0b0)[(uint)local_4c[0] * 7] < (int)(local_44 & 0xffff)) {
        return false;
      }
      Stream_ReadUInt32(stream,(uint *)&local_38,0);
      SwarmRefVector_Resize
                ((void *)((uint)local_4c[0] * 0x10 + *(int *)(local_3c + 0x24)),(uint)local_38);
      pbVar9 = local_38;
      iVar10 = 0;
                    /* Countwas already passed to vector resize; JLE uses SIGNED32 for factory
                       iteration. Do not treat high-bit counts as admitted empty allocations. */
      if (0 < (int)local_38) {
        do {
          puVar1 = (undefined4 *)
                   (*(int *)((uint)local_4c[0] * 0x10 + *(int *)(local_3c + 0x24)) + iVar10 * 4);
          puVar4 = (*(code *)(&DAT_011dc0a4)[(uint)local_4c[0] * 7])(stream,local_44 & 0xffff);
          puVar5 = (undefined4 *)*puVar1;
          if (puVar4 != puVar5) {
            if (puVar4 != (undefined4 *)0x0) {
              puVar4[1] = puVar4[1] + 1;
            }
            *puVar1 = puVar4;
            if ((puVar5 != (undefined4 *)0x0) &&
               (iVar11 = puVar5[1], puVar5[1] = iVar11 + -1, iVar11 + -1 == 0)) {
              puVar5[1] = 1;
              (**(code **)*puVar5)(puVar5,1);
            }
          }
          iVar10 = iVar10 + 1;
        } while (iVar10 < (int)pbVar9);
      }
    }
    Stream_ReadUInt16(stream,local_4c,0);
  }
  Stream_ReadUInt16(stream,local_48,0);
  while (local_48[0] != 0xffff) {
    if ((&DAT_011dc7a8)[(uint)local_48[0] * 8] != 0) {
      Stream_ReadUInt16(stream,(ushort *)&local_44,0);
      if (((int)(local_44 & 0xffff) < (int)(&DAT_011dc7b0)[(uint)local_48[0] * 8]) ||
         ((int)(&DAT_011dc7b4)[(uint)local_48[0] * 8] < (int)(local_44 & 0xffff))) {
        return false;
      }
      Stream_ReadUInt32(stream,(uint *)&local_38,0);
      SwarmRefVector_Resize
                ((void *)((uint)local_48[0] * 0x10 + *(int *)(local_3c + 0x34)),(uint)local_38);
      pbVar9 = local_38;
      iVar10 = 0;
      if (0 < (int)local_38) {
        do {
          puVar1 = (undefined4 *)
                   (*(int *)((uint)local_48[0] * 0x10 + *(int *)(local_3c + 0x34)) + iVar10 * 4);
          puVar4 = (*(code *)(&DAT_011dc7a8)[(uint)local_48[0] * 8])(stream,local_44 & 0xffff);
          puVar5 = (undefined4 *)*puVar1;
          if (puVar4 != puVar5) {
            if (puVar4 != (undefined4 *)0x0) {
              puVar4[1] = puVar4[1] + 1;
            }
            *puVar1 = puVar4;
            if ((puVar5 != (undefined4 *)0x0) &&
               (iVar11 = puVar5[1], puVar5[1] = iVar11 + -1, iVar11 + -1 == 0)) {
              puVar5[1] = 1;
              (**(code **)*puVar5)(puVar5,1);
            }
          }
          iVar10 = iVar10 + 1;
        } while (iVar10 < (int)pbVar9);
      }
    }
    Stream_ReadUInt16(stream,local_48,0);
  }
  Stream_ReadUInt16(stream,(ushort *)&local_44,0);
  Stream_ReadUInt32(stream,&uStack_30,0);
  pbVar9 = local_3c;
  pbVar13 = local_3c + 0x44;
  FUN_009137c0(pbVar13,uStack_30);
  iVar10 = (*(int *)(pbVar9 + 0x48) - *(int *)pbVar13) / 0x48;
  if (0 < iVar10) {
    iVar11 = 0;
    do {
      SwarmDescription_Read(stream,local_44 & 0xffff,(byte *)(*(int *)pbVar13 + iVar11));
      iVar11 = iVar11 + 0x48;
      iVar10 = iVar10 + -1;
    } while (iVar10 != 0);
  }
  pbVar13 = local_3c;
  pbVar9 = local_3c + 0x68;
  FUN_00b305a0(pbVar9,*(uint *)(local_3c + 0x6c),*(uint *)(local_3c + 0x70));
  pbVar13[0x74] = 0;
  pbVar13[0x75] = 0;
  pbVar13[0x76] = 0;
  pbVar13[0x77] = 0;
  Stream_ReadUInt32(stream,(uint *)&pbStack_40,0);
                    /* Signednegative DWORD ID terminates; ALL 80000000..FFFFFFFF values are
                       sentinels for this loop. */
  while (-1 < (int)pbStack_40) {
    Stream_ReadUInt64(stream,(ulonglong *)&pbStack_2c,0);
    pbStack_14 = pbStack_2c;
    pbStack_34 = (byte *)((uint)pbStack_34 & 0xffffff00);
    pbStack_10 = pbStack_28;
                    /* Map pair explicitly receives key64 plus ID lowDWORD. This caller does not
                       initialize the pair's fourth DWORD before the generic sixteen-byte copy; do
                       NOT infer zero-extended64-bit ID. The separate unused third CALL ARGUMENT has
                       only its low byte initialized and is not read by the generic map leaf. */
    pbStack_c = pbStack_40;
    U64PairMap_InsertUnique(pbVar9,&puStack_24,&pbStack_14,(uint)pbStack_34);
    Stream_ReadUInt32(stream,(uint *)&pbStack_40,0);
  }
  puVar1 = *(undefined4 **)(pbVar13 + 0x58);
  pbVar9 = pbVar13 + 0x54;
  pbStack_34 = pbVar9;
  for (puVar5 = *(undefined4 **)(pbVar13 + 0x54); puVar5 < puVar1; puVar5 = puVar5 + 5) {
    pvVar2 = (void *)*puVar5;
    if ((1 < puVar5[2] - (int)pvVar2) && (pvVar2 != (void *)0x0)) {
      Memory_FreeIfNonNull(pvVar2);
    }
  }
  *(undefined4 *)(pbVar13 + 0x58) = *(undefined4 *)pbVar9;
  pcStack_18 = "Debug/Swarm/EffectName";
  puStack_24 = &DAT_011c8e54;
  puStack_20 = &DAT_011c8e54;
  puStack_1c = &DAT_011c8e55;
  Stream_ReadUInt32(stream,(uint *)&pbStack_40,0);
  allocation = &DAT_011c8e54;
  puVar3 = &DAT_011c8e55;
  do {
    if ((int)pbStack_40 < 0) {
      if ((1 < (int)puVar3 - (int)allocation) && (allocation != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(allocation);
      }
      return true;
    }
    Stream_ReadZeroTerminatedByteString(stream,&puStack_24);
    _Size = (int)puStack_20 - (int)puStack_24;
    uVar7 = _Size + 1;
    pcStack_8 = pcStack_18;
    if (uVar7 < 2) {
      pbVar13 = &DAT_011c8e54;
      pbStack_c = &DAT_011c8e55;
    }
    else {
      pbVar13 = FUN_004e4500(uVar7,pcStack_18,0,0,
                             "c:\\BuildAgent\\slc1-build111\\CMBuild\\Core\\include\\EASTL/allocator.h"
                             ,0xe7);
      pbStack_c = pbVar13 + uVar7;
    }
    pbStack_14 = pbVar13;
    memmove(pbVar13,puStack_24,_Size);
    pbVar12 = pbVar13 + ((int)puStack_20 - (int)puStack_24);
    *pbVar12 = 0;
    puVar1 = *(undefined4 **)(pbVar9 + 4);
    pbStack_4 = pbStack_40;
    pbStack_10 = pbVar12;
    puVar5 = FUN_00911460(*(void **)pbVar9,puVar1,&pbStack_14,pbVar9[0x10]);
    if (puVar5 == puVar1) {
LAB_009234c4:
      if ((puVar1 == *(undefined4 **)(pbStack_34 + 8)) || (puVar5 != puVar1)) {
        FUN_00912620(pbStack_34,puVar5,&pbStack_14);
        pbVar13 = pbStack_14;
      }
      else {
        *(undefined4 **)(pbStack_34 + 4) = puVar1 + 5;
        if (puVar1 != (undefined4 *)0x0) {
          local_38 = pbVar12 + -(int)pbVar13;
          pbVar9 = local_38 + 1;
          *puVar1 = 0;
          puVar1[1] = 0;
          puVar1[2] = 0;
          puVar1[3] = pcStack_18;
          if (pbVar9 < (byte *)0x2) {
            *puVar1 = &DAT_011c8e54;
            puVar1[1] = &DAT_011c8e54;
            puVar1[2] = &DAT_011c8e55;
          }
          else {
            pbVar8 = FUN_004e4500((uint)pbVar9,pcStack_18,0,0,
                                  "c:\\BuildAgent\\slc1-build111\\CMBuild\\Core\\include\\EASTL/allocator.h"
                                  ,0xe7);
            *puVar1 = pbVar8;
            puVar1[1] = pbVar8;
            puVar1[2] = pbVar8 + (int)pbVar9;
          }
          pvVar2 = (void *)*puVar1;
          memmove(pvVar2,pbVar13,(size_t)local_38);
          puVar1[1] = pbVar12 + ((int)pvVar2 - (int)pbVar13);
          pbVar12[(int)pvVar2 - (int)pbVar13] = 0;
          puVar1[4] = pbStack_4;
        }
      }
    }
    else {
      local_3c = (byte *)(puVar5[1] - (int)*puVar5);
      local_38 = pbVar12 + -(int)pbVar13;
      ppbVar6 = &local_3c;
      if ((int)(pbVar12 + -(int)pbVar13) <= (int)local_3c) {
        ppbVar6 = &local_38;
      }
      uVar7 = FUN_0040a140(pbVar13,(byte *)*puVar5,(uint)*ppbVar6);
      if (uVar7 == 0) {
        if ((int)local_38 < (int)local_3c) goto LAB_009234c4;
        uVar7 = (uint)((int)local_3c < (int)local_38);
      }
      if ((int)uVar7 < 0) goto LAB_009234c4;
    }
    if ((1 < (int)pbStack_c - (int)pbVar13) && (pbVar13 != (byte *)0x0)) {
      Memory_FreeIfNonNull(pbVar13);
    }
    Stream_ReadUInt32(stream,(uint *)&pbStack_40,0);
    pbVar9 = pbStack_34;
    allocation = puStack_24;
    puVar3 = puStack_1c;
  } while( true );
}

