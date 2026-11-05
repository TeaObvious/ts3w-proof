/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst CAW 1.22.10 packed-world marker instruction contract. Complete body [1051FC60,1051FF3D),
   733 bytes. Physical ABI: ECX reader plus SIX stack words at entrySP+04 key16, +08 optional
   streamOut, +0C requestedMask, +10 modeWord, +14 optionsWord, +18 optional metadata16Out; all
   returns RET18h, boolean AL. Mode admits exactly3 or6. Under reader+40 critical-section calls,
   requires DWORD+14 nonzero and (state & requestedMask)==requestedMask. Virtual slot+28 of object
   at reader+70 receives borrowed key16; row!=NULL sets probe result. Optional metadata output
   copies row DWORD0/4/8 and zeroextended WORD+0C into four DWORDs. If streamOut==NULL, release
   critical section and return row-presence boolean immediately, without payload
   size/read/decompression/stream construction or sentinel checks. If streamOut!=NULL, subsequent
   missing-row/sentinel checks and cached/raw/decompressed paths may allocate a stream; nonzero row
   WORD+0C and options bit0 select the alternative record-read branch labelled
   DecompressedRecordData. Final streamOut write and return reflect stream creation. Marker
   caller10233BB4 uses NULL streamOut and NULL metadataOut; it never takes those read branches.
   Exact virtual key comparison, access state producers, allocator/stream/decompression children and
   complete synchronization/lifetime policy remain unexpanded static questions. Instruction-defined
   six-word ABI takes precedence over any residual decompiler stack alias artifact. */

bool __thiscall
CAW_PackedResourceFindOrRead
          (void *reader,uint *key16,void **streamOut,uint requestedMask,uint modeWord,
          uint optionsWord,uint *metadata16Out)

{
  LPCRITICAL_SECTION this;
  int iVar1;
  uint *puVar2;
  undefined1 uVar3;
  char cVar4;
  uint *puVar5;
  int *piVar6;
  void *pvVar7;
  undefined4 *puVar8;
  bool bVar9;
  uint auStack_18 [6];
  
                    /* entrySP+10 is fourth stack word modeWord. Only3 or6 admitted; all exits
                       RET18h establish SIX stack words, not five. */
  if ((modeWord != 6) && (modeWord != 3)) {
    return false;
  }
  this = (LPCRITICAL_SECTION)((int)reader + 0x40);
  FUN_109166c0(this,(uint *)&DAT_10b1834c);
                    /* At this frame point ESP+30 equals entrySP+0C requestedMask; requires reader
                       DWORD+14 nonzero and all requested bits present. */
  if ((*(uint *)((int)reader + 0x14) == 0) ||
     ((*(uint *)((int)reader + 0x14) & requestedMask) != requestedMask)) {
    FUN_10916780(this);
    return false;
  }
                    /* Virtual row lookup: ECX=reader[+70], vtable+28; ONE key16 pointer stack word.
                       Exact comparator implementation is not expanded here.
                       Local ABI override: ECX index, one key16 stack word, EAX row; callee
                       consumes4 stack bytes, established by the caller stack balance/no ADD after
                       CALL. No global virtual target prototype is assigned. */
  puVar5 = (**(code **)(**(int **)((int)reader + 0x70) + 0x28))(*(int **)((int)reader + 0x70),key16)
  ;
  puVar2 = key16;
  bVar9 = puVar5 != (uint *)0x0;
                    /* ESP+44 equals entrySP+18, optional metadata16Out. Row metadata output is
                       independent of streamOut and copies 3 DWORDs plus zeroextended WORD+0C. */
  if ((bVar9) && (metadata16Out != (uint *)0x0)) {
    *metadata16Out = *puVar5;
    metadata16Out[1] = puVar5[1];
    metadata16Out[2] = puVar5[2];
    metadata16Out[3] = (uint)(ushort)puVar5[3];
  }
                    /* ESP+34 equals entrySP+08 streamOut after frame/pushes, NOT key16. NULL
                       selects immediate row-presence return; no payload
                       length/read/decompression/sentinel check on this branch. */
  if (streamOut == (void **)0x0) {
    FUN_10916780(this);
    return bVar9;
  }
                    /* Only nonnull streamOut reaches missing-row/sentinel checks and subsequent
                       cached/raw/decompressed stream paths. */
  if ((!bVar9) || ((puVar5[2] == 0xffffffff && (puVar5[1] == 1)))) {
    FUN_10916780(this);
    return false;
  }
  requestedMask = (int)reader + 0x74;
  puVar8 = (undefined4 *)0x0;
  piVar6 = (int *)FUN_103f2ab0((void *)requestedMask,(int *)&modeWord,key16);
  if (*piVar6 == (int)reader + 0x78) {
    modeWord = CONCAT31(modeWord._1_3_,1);
    if (*(int *)((int)reader + 0x38) != 0) {
      uVar3 = (**(code **)(**(int **)((int)reader + 0x38) + 4))(puVar2);
      modeWord = CONCAT31(modeWord._1_3_,uVar3);
    }
                    /* ESP+40 equals entrySP+14 optionsWord; bit0 plus nonzero row WORD+0C selects
                       the alternative record-read branch labelled DecompressedRecordData. Marker
                       probe never reaches this path. */
    if (((short)puVar5[3] == 0) || ((optionsWord & 1) == 0)) {
      pvVar7 = (void *)(**(code **)(**(int **)((int)reader + 0x10) + 8))
                                 (puVar5[1],"ResourceLoad/PackedStream/RecordData",0);
      if (pvVar7 == (void *)0x0) goto LAB_1051fdb6;
      bVar9 = FUN_1051fac0(reader,(int)pvVar7,*puVar5,puVar5[1],modeWord);
      if (bVar9) {
        puVar8 = FUN_10918ce0(0x58,*(int **)((int)reader + 0x10),
                              "ResourceLoad/PackedStream/RecordRead");
        if (puVar8 == (undefined4 *)0x0) {
          puVar8 = (undefined4 *)0x0;
          (**(code **)(**(int **)((int)reader + 0x10) + 0xc))(pvVar7,0);
          goto LAB_1051fdb6;
        }
        puVar8 = FUN_1052ca50(puVar8,pvVar7,puVar5[1],'\x01',key16,reader);
        modeWord = (uint)puVar8;
        if (puVar8 != (undefined4 *)0x0) goto LAB_1051fd7c;
      }
      (**(code **)(**(int **)((int)reader + 0x10) + 0xc))(pvVar7,0);
      goto LAB_1051fdb6;
    }
    pvVar7 = (void *)(**(code **)(**(int **)((int)reader + 0x10) + 8))
                               (puVar5[2],"ResourceLoad/PackedStream/DecompressedRecordData",0);
    if (pvVar7 == (void *)0x0) goto LAB_1051fdb6;
                    /* Raw call has ECX reader and SIX stack words: zeroextended row WORD+0C,
                       rowDWORD0, rowDWORD4, rowDWORD8, allocated destination buffer, per-key flag.
                       The unreviewed child1051FB20 prototype makes actual C omit physical
                       arguments; do not infer its complete codec contract from that rendering. No
                       global child signature change. */
    cVar4 = FUN_1051fb20(reader,(uint)(ushort)puVar5[3],*puVar5,puVar5[1]);
    if (cVar4 != '\0') {
      puVar8 = FUN_10918ce0(0x58,*(int **)((int)reader + 0x10),
                            "ResourceLoad/PackedStream/RecordRead");
      if (puVar8 == (undefined4 *)0x0) {
        puVar8 = (undefined4 *)0x0;
        (**(code **)(**(int **)((int)reader + 0x10) + 0xc))(pvVar7,0);
        goto LAB_1051fdb6;
      }
      puVar8 = FUN_1052ca50(puVar8,pvVar7,puVar5[2],'\x01',key16,reader);
      modeWord = (uint)puVar8;
      if (puVar8 != (undefined4 *)0x0) goto LAB_1051fd7c;
    }
    (**(code **)(**(int **)((int)reader + 0x10) + 0xc))(pvVar7,0);
  }
  else {
    iVar1 = *(int *)(*piVar6 + 0x20);
    puVar8 = FUN_10918ce0(0x58,*(int **)((int)reader + 0x10),"ResourceLoad/PackedStream/RecordRead")
    ;
    if (puVar8 == (undefined4 *)0x0) {
      puVar8 = (undefined4 *)0x0;
      goto LAB_1051fdb6;
    }
    puVar8 = FUN_1052c990(puVar8,iVar1);
    modeWord = (uint)puVar8;
    if (puVar8 == (undefined4 *)0x0) goto LAB_1051fdb6;
LAB_1051fd7c:
    puVar8 = (undefined4 *)modeWord;
    (**(code **)(*(int *)modeWord + 4))();
    FUN_1051d550(auStack_18,key16,&modeWord);
    FUN_1051fc30((void *)requestedMask,(int)&key16,auStack_18);
    (**(code **)(*puVar8 + 4))();
  }
LAB_1051fdb6:
                    /* Non-probe branch writes *streamOut=constructed stream (or NULL), releases
                       critical section, returns AL=(stream!=NULL). Stream child lifetime semantics
                       remain separate. */
  *streamOut = puVar8;
  FUN_10916780(this);
  return puVar8 != (undefined4 *)0x0;
}

