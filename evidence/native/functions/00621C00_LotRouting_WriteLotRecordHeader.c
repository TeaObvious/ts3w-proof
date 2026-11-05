/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 LotLocation contract): Analyst name. ECX per-lot record; two physical stack
   slots RET8, AL status. Complete original body621C00..6221F6; former621C18 was only conditional
   continuation from621C0D, not independent function. Missing footprint+84 givesAL0. Writer
   emitsUInt32header version11, two length placeholders,
   identities/flags/transforms/footprints/connectivity/maps, then backpatches header and external
   key-table sizes while restoring stream position. C decompiler aliases/indirect calls do not
   establish additional arguments or signed numeric semantics. */

byte __thiscall LotRouting_WriteLotRecordHeader(void *this,void *stream,void *routingOwner)

{
  uint *puVar1;
  void *value;
  byte bVar2;
  bool bVar3;
  char cVar4;
  uint value_00;
  undefined4 uVar5;
  int iVar6;
  uint uVar7;
  int *piVar8;
  uint uVar9;
  int iVar10;
  uint *puVar11;
  uint unaff_ESI;
  undefined4 unaff_retaddr;
  uint uStack_10;
  void *pvStack_c;
  void *pvStack_8;
  undefined4 uStack_4;
  
                    /* Conditional continuation belongs to the same writer body; not a separate ABI
                       entry. */
  if (*(int *)((int)this + 0x84) == 0) {
    return 0;
  }
                    /* UInt32 header version11, not current geometry reader's supported7. */
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),0xb,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  (**(code **)(**(int **)((int)stream + 8) + 0x24))(0);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),0,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  (**(code **)(**(int **)((int)stream + 8) + 0x24))(0);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),0,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = FUN_004de0c0(*(int **)((int)stream + 8),*(undefined8 *)this,*(int *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 8),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 0xc),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 0x10),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 0x14),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 0x18),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 0x1c),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = FUN_004de060(*(int **)((int)stream + 8),*(uint *)((int)this + 0x40),
                       *(int *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  uStack_4._0_1_ = *(byte *)((int)this + 0x8c);
  bVar3 = Stream_WriteBoolean(*(void **)((int)stream + 8),*(byte *)((int)this + 0x8c));
  StreamReader_AccumulateStatus(stream,bVar3);
  uStack_4._0_1_ = *(byte *)((int)this + 0x8d);
  bVar3 = Stream_WriteBoolean(*(void **)((int)stream + 8),(byte)uStack_4);
  StreamReader_AccumulateStatus(stream,bVar3);
  uStack_4 = CONCAT31(uStack_4._1_3_,*(byte *)((int)this + 0x8e));
  bVar3 = Stream_WriteBoolean(*(void **)((int)stream + 8),*(byte *)((int)this + 0x8e));
  StreamReader_AccumulateStatus(stream,bVar3);
  FUN_007d7bf0(stream,(uint *)((int)this + 0xa0));
  FUN_007d7bf0(stream,(uint *)((int)this + 0xe0));
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),0xb,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  (**(code **)(**(int **)((int)this + 0x84) + 0x9c))(stream,unaff_retaddr);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),(uint)(*(int *)((int)this + 0x88) != 0),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  if (*(int **)((int)this + 0x88) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x88) + 0x9c))(stream,unaff_retaddr);
  }
  uVar7 = *(int *)((int)this + 0x48) - *(int *)((int)this + 0x44) >> 2;
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),uVar7,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  uVar9 = 0;
  if (uVar7 != 0) {
    do {
      value_00 = FUN_0062b330(pvStack_8,*(int **)(*(int *)((int)this + 0x44) + uVar9 * 4));
      bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),value_00,*(uint *)((int)stream + 0x10))
      ;
      StreamReader_AccumulateStatus(stream,bVar2);
      uVar9 = uVar9 + 1;
    } while (uVar9 < uVar7);
  }
  value = (void *)((*(int *)((int)this + 0x94) - *(int *)((int)this + 0x90)) / 0x44);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),(uint)value,*(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  iVar10 = 0;
  pvStack_c = (void *)0x0;
  do {
    if (value <= pvStack_c) break;
    if ((char)(unaff_ESI >> 0x18) == '\0') {
LAB_00621f29:
      unaff_ESI = unaff_ESI & 0xffffff;
    }
    else {
      uVar5 = FUN_00621490((void *)(*(int *)((int)this + 0x90) + iVar10),stream,pvStack_8);
      unaff_ESI = CONCAT13(1,(int3)unaff_ESI);
      if ((char)uVar5 == '\0') goto LAB_00621f29;
    }
    pvStack_c = (void *)((int)pvStack_c + 1);
    iVar10 = iVar10 + 0x44;
  } while ((char)(unaff_ESI >> 0x18) != '\0');
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 300),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  piVar8 = *(int **)((int)this + 0x124);
  puVar11 = (uint *)*piVar8;
  if (puVar11 == (uint *)0x0) {
    piVar8 = piVar8 + 1;
    iVar10 = *piVar8;
    while (iVar10 == 0) {
      piVar8 = piVar8 + 1;
      iVar10 = *piVar8;
    }
    puVar11 = (uint *)*piVar8;
  }
  puVar1 = *(uint **)(*(int *)((int)this + 0x124) + *(int *)((int)this + 0x128) * 4);
  while (puVar11 != puVar1) {
    bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*puVar11,*(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar2);
    pvStack_c = (void *)CONCAT31(pvStack_c._1_3_,(byte)puVar11[1]);
    bVar2 = Stream_WriteByte(*(undefined **)((int)stream + 8),(byte)puVar11[1]);
    StreamReader_AccumulateStatus(stream,bVar2);
    for (puVar11 = (uint *)puVar11[2]; puVar11 == (uint *)0x0; puVar11 = (uint *)*puVar11) {
      puVar11 = (uint *)(piVar8 + 1);
      piVar8 = piVar8 + 1;
    }
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 0x14c),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  piVar8 = *(int **)((int)this + 0x144);
  puVar11 = (uint *)*piVar8;
  if (puVar11 == (uint *)0x0) {
    piVar8 = piVar8 + 1;
    iVar10 = *piVar8;
    while (iVar10 == 0) {
      piVar8 = piVar8 + 1;
      iVar10 = *piVar8;
    }
    puVar11 = (uint *)*piVar8;
  }
  puVar1 = *(uint **)(*(int *)((int)this + 0x144) + *(int *)((int)this + 0x148) * 4);
  while (puVar11 != puVar1) {
    bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*puVar11,*(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar2);
    bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),puVar11[1],*(uint *)((int)stream + 0x10))
    ;
    StreamReader_AccumulateStatus(stream,bVar2);
    for (puVar11 = (uint *)puVar11[2]; puVar11 == (uint *)0x0; puVar11 = (uint *)*puVar11) {
      puVar11 = (uint *)(piVar8 + 1);
      piVar8 = piVar8 + 1;
    }
  }
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 0x160),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 0x164),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),*(uint *)((int)this + 0x168),
                             *(uint *)((int)stream + 0x10));
  StreamReader_AccumulateStatus(stream,bVar2);
  if ((char)(unaff_ESI >> 0x18) == '\0') {
    return 0;
  }
  iVar10 = (**(code **)(**(int **)((int)stream + 8) + 0x24))(0);
  if (((iVar10 == -1) || (iVar6 = (**(code **)(**(int **)((int)stream + 8) + 0x24))(0), iVar6 == -1)
      ) || (cVar4 = (**(code **)(**(int **)((int)stream + 8) + 0x28))(unaff_ESI,0), cVar4 == '\0'))
  {
LAB_00622158:
    *(undefined1 *)((int)stream + 0x14) = 0;
  }
  else {
    bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),(iVar10 - unaff_ESI) - 4,
                               *(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar2);
    cVar4 = (**(code **)(**(int **)((int)stream + 8) + 0x28))(iVar6,0);
    if (cVar4 == '\0') goto LAB_00622158;
  }
  uStack_10 = 0;
  uVar9 = FUN_0062b3f0(pvStack_c,stream,&uStack_10);
  uVar7 = uStack_10;
  iVar10 = (**(code **)(**(int **)((int)stream + 8) + 0x24))(0);
  if ((iVar10 != -1) &&
     (cVar4 = (**(code **)(**(int **)((int)stream + 8) + 0x28))(unaff_ESI,0), cVar4 != '\0')) {
    bVar2 = Stream_WriteUInt32(*(void **)((int)stream + 8),uVar7,*(uint *)((int)stream + 0x10));
    StreamReader_AccumulateStatus(stream,bVar2);
    cVar4 = (**(code **)(**(int **)((int)stream + 8) + 0x28))(iVar10,0);
    if (cVar4 != '\0') goto LAB_006221d2;
  }
  *(undefined1 *)((int)stream + 0x14) = 0;
LAB_006221d2:
  if (((char)uVar9 != '\0') && (*(char *)((int)stream + 0x14) != '\0')) {
    return 1;
  }
  return 0;
}

