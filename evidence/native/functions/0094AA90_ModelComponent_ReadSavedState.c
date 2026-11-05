/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 saved Model reader. ECX component, stack4 reader, stack8 descriptor; RET8, status
   in AL. UnsignedUInt16 version at descriptor+4; rejects initial failed reader or version>16; null
   descriptor resource context is refused when descriptor context version<14. Versions<6 delegate
   legacy94A1A0. Current branch resolves UInt16 keys directly into component+8/+18/+28 without
   checking resolver Boolean; reads compositor/preset and material+4C. Version>=14 reads bit0
   separately into component+81; no product-model-equality refusal appears here. Constructor clears
   bit0; load retains authored false/true independently of key. Complete reachable
   Listing563instructions1727bytes, all existing Listing agree. Full child grammar, service loading
   and malformed-input lifecycle remain separate; no runtime execution claimed. */

byte __thiscall ModelComponent_ReadSavedState(void *this,void *reader,void *descriptor)

{
  uint *outUInt32;
  void *this_00;
  int *piVar1;
  byte bVar2;
  bool bVar3;
  char cVar4;
  undefined4 uVar5;
  int iVar6;
  void *this_01;
  ushort *puVar7;
  ushort uVar8;
  uint uVar9;
  byte bStack_665;
  ushort local_664 [3];
  char local_65d;
  int *local_65c;
  uint local_658;
  uint local_654;
  uint local_650;
  undefined4 local_64c;
  int local_648;
  undefined4 local_644;
  int local_640;
  int local_63c;
  int local_638;
  int local_634;
  undefined4 *local_630;
  uint local_62c;
  void *local_628;
  int *local_624;
  uint uStack_620;
  undefined4 uStack_61c;
  int iStack_618;
  undefined4 uStack_614;
  wchar_t awStack_610 [256];
  undefined2 auStack_410 [520];
  
  uVar8 = *(ushort *)((int)descriptor + 4);
  local_654 = (uint)uVar8;
  this_00 = *(void **)((int)descriptor + 0x10);
  if (((*(char *)((int)reader + 0x14) == '\0') || (0x10 < uVar8)) ||
     ((this_00 == (void *)0x0 && (*(ushort *)((int)descriptor + 6) < 0xe)))) {
    return 0;
  }
  if (uVar8 < 6) {
    bVar2 = FUN_0094a1a0(this,reader,(int)descriptor,(uint)*(ushort *)((int)descriptor + 6),uVar8);
    return bVar2;
  }
  local_640 = 0;
  local_63c = 0;
  local_638 = 0;
  local_634 = 0;
  bVar3 = Stream_ReadUInt16(*(void **)((int)reader + 8),local_664,*(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(reader,bVar3);
  ResourceReferences_ResolveNarrowHandle(this_00,local_664,(undefined4 *)((int)this + 8));
  bVar3 = Stream_ReadUInt16(*(void **)((int)reader + 8),local_664,*(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(reader,bVar3);
  ResourceReferences_ResolveNarrowHandle(this_00,local_664,(undefined4 *)((int)this + 0x18));
  bVar3 = Stream_ReadUInt16(*(void **)((int)reader + 8),local_664,*(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(reader,bVar3);
  ResourceReferences_ResolveNarrowHandle(this_00,local_664,(undefined4 *)((int)this + 0x28));
  FUN_00d4d2a0((uint *)((int)this + 0x38));
  local_630 = (undefined4 *)FUN_0072f140();
  local_658 = 0;
  bVar3 = Stream_ReadUInt32(*(void **)((int)reader + 8),&local_658,*(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(reader,bVar3);
  bVar3 = StreamReader_CheckArrayBytes(reader,local_658,2);
  if (!bVar3) {
    return 0;
  }
  FUN_00629770((void *)((int)this + 0x38),local_658);
  if ((ushort)local_654 < 8) {
    uVar9 = 0;
    if (local_658 != 0) {
      do {
        bVar3 = Stream_ReadUInt16(*(void **)((int)reader + 8),local_664,
                                  *(uint *)((int)reader + 0x10));
        StreamReader_AccumulateStatus(reader,bVar3);
        ResourceReferences_ResolveNarrowHandle(this_00,local_664,&local_640);
        local_65c = (int *)0x0;
        cVar4 = (**(code **)*local_630)(&local_640,0x3420bd6,&local_65c);
        if (cVar4 != '\0') {
          FUN_00b27450((void *)((int)this + 0x38),(int *)&local_65c);
        }
        if (local_65c != (int *)0x0) {
          (**(code **)(*local_65c + 4))();
        }
        uVar9 = uVar9 + 1;
      } while (uVar9 < local_658);
    }
  }
  else {
    local_624 = (int *)FUN_004afe80();
    local_65c = (int *)0x0;
    local_62c = 0;
    if (local_658 != 0) {
      local_628 = (void *)((int)descriptor + 0x18);
      do {
        bVar3 = Stream_ReadUInt16(*(void **)((int)reader + 8),local_664,
                                  *(uint *)((int)reader + 0x10));
        StreamReader_AccumulateStatus(reader,bVar3);
        ResourceReferences_ResolveNarrowHandle(this_00,local_664,&local_640);
        piVar1 = local_65c;
        if (local_65c != (int *)0x0) {
          local_65c = (int *)0x0;
          (**(code **)(*piVar1 + 4))();
        }
        uVar5 = TextureCompositor_CreateFromResourceStream
                          (*(int **)((int)reader + 8),local_628,local_638,(int)this_00,&local_65c);
        if ((char)uVar5 != '\0') {
          local_65c[2] = local_640;
          local_65c[3] = local_63c;
          local_65c[4] = local_638;
          local_65c[5] = local_634;
          FUN_00b27450((void *)((int)this + 0x38),(int *)&local_65c);
          piVar1 = local_624;
          iVar6 = (**(code **)(*local_624 + 0x58))(&local_640);
          if (iVar6 == 0) {
            (**(code **)(*piVar1 + 0x5c))(local_65c,1);
          }
        }
        local_62c = local_62c + 1;
      } while (local_62c < local_658);
      if (local_65c != (int *)0x0) {
        (**(code **)(*local_65c + 4))();
      }
    }
  }
  local_65d = '\0';
  local_650 = 0;
  local_64c = 0;
  local_648 = 0;
  local_644 = 0;
  if ((ushort)((short)local_654 - 10U) < 2) {
    FUN_00565b10(reader);
  }
  else {
    bVar3 = Stream_ReadUInt16(*(void **)((int)reader + 8),local_664,*(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar3);
    ResourceReferences_ResolveNarrowHandle(this_00,local_664,&local_650);
    local_65d = local_648 != 0;
  }
  if (local_65d == '\0') {
LAB_0094ae76:
    uVar8 = (ushort)local_654;
  }
  else {
    if (local_648 == 0) {
      this_01 = (void *)ProductPresets_GetGlobalOwner();
      CompositorKeys_ChooseUnusedRandomInstance(this_01,&uStack_620,0x44ae110);
      local_650 = uStack_620;
      local_64c = uStack_61c;
      local_648 = iStack_618;
      local_644 = uStack_614;
    }
    uVar8 = (ushort)local_654;
    if (8 < uVar8) {
      bVar2 = Preset_ReadContextEnvelope(reader,this_00,(int *)((int)this + 0x48));
      if (bVar2 != 0) {
        iVar6 = *(int *)((int)this + 0x48);
        *(uint *)(iVar6 + 8) = local_650;
        *(undefined4 *)(iVar6 + 0xc) = local_64c;
        *(int *)(iVar6 + 0x10) = local_648;
        *(undefined4 *)(iVar6 + 0x14) = local_644;
      }
      goto LAB_0094ae76;
    }
    (**(code **)*local_630)(&local_650,0x5de1935,(int)this + 0x48);
  }
  outUInt32 = (uint *)((int)this + 0x50);
  bVar3 = Stream_ReadUInt32(*(void **)((int)reader + 8),outUInt32,*(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(reader,bVar3);
  if ((((uVar8 < 0xf) && (DAT_011ee034 != (void *)0x0)) &&
      (iVar6 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)(*(int *)((int)this + 4) + 0x18)),
      iVar6 != 0)) && (uVar5 = FUN_00948cb0(iVar6), (char)uVar5 != '\0')) {
    *outUInt32 = *outUInt32 | 0x400;
  }
  FUN_00948b70((int)this);
  bVar3 = Stream_ReadUInt32(*(void **)((int)reader + 8),(uint *)((int)this + 0x4c),
                            *(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(reader,bVar3);
  if (uVar8 < 7) {
    *(undefined1 *)((int)this + 0x80) = 0xff;
  }
  else {
    bVar3 = Stream_ReadByte(*(void **)((int)reader + 8),(byte *)((int)this + 0x80));
    StreamReader_AccumulateStatus(reader,bVar3);
    FUN_007d7b60(reader,(uint *)((int)this + 0x60));
    FUN_007d7b60(reader,(uint *)((int)this + 0x70));
  }
  if (10 < uVar8) {
    bVar3 = Stream_ReadBoolean(*(void **)((int)reader + 8),&bStack_665);
    StreamReader_AccumulateStatus(reader,bVar3);
    *(byte *)((int)this + 0x81) =
         *(byte *)((int)this + 0x81) ^ (bStack_665 * '\x02' ^ *(byte *)((int)this + 0x81)) & 2;
  }
  if (0xc < uVar8) {
    bVar3 = Stream_ReadBoolean(*(void **)((int)reader + 8),&bStack_665);
    StreamReader_AccumulateStatus(reader,bVar3);
    *(byte *)((int)this + 0x81) =
         *(byte *)((int)this + 0x81) ^ (bStack_665 << 2 ^ *(byte *)((int)this + 0x81)) & 4;
  }
  if (0xd < uVar8) {
    bVar3 = Stream_ReadBoolean(*(void **)((int)reader + 8),&bStack_665);
    StreamReader_AccumulateStatus(reader,bVar3);
    *(byte *)((int)this + 0x81) =
         *(byte *)((int)this + 0x81) ^ (*(byte *)((int)this + 0x81) ^ bStack_665) & 1;
  }
  iVar6 = DAT_011edbc4;
  bStack_665 = 0xf < uVar8;
  if (uVar8 == 0xf) {
    FUN_004ec7e0(auStack_410);
    puVar7 = (ushort *)FUN_00a19140(iVar6);
    FUN_004edf60(auStack_410,puVar7);
    FUN_004eddc0(auStack_410,awStack_610,0x100);
    iVar6 = _wcsicmp(awStack_610,L"EP05_broadPass");
    if (iVar6 == 0) {
      bStack_665 = 1;
    }
  }
  if (DAT_011ee034 == (void *)0x0) {
    iVar6 = 0;
  }
  else {
    iVar6 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)(*(int *)((int)this + 4) + 0x18));
    if ((iVar6 != 0) && ((*(uint *)(iVar6 + 0x9c) >> 8 & 1) != 0)) {
      cVar4 = '\x01';
      goto LAB_0094b078;
    }
  }
  cVar4 = '\0';
LAB_0094b078:
  *(byte *)((int)this + 0x81) =
       *(byte *)((int)this + 0x81) ^ (cVar4 << 4 ^ *(byte *)((int)this + 0x81)) & 0x10;
  if ((iVar6 == 0) || ((*(uint *)(iVar6 + 0x9c) >> 9 & 1) == 0)) {
    cVar4 = '\0';
  }
  else {
    cVar4 = '\x01';
  }
  bVar2 = (cVar4 << 5 ^ *(byte *)((int)this + 0x81)) & 0x20 ^ *(byte *)((int)this + 0x81);
  *(byte *)((int)this + 0x81) = bVar2;
  if ((iVar6 == 0) || ((*(uint *)(iVar6 + 0x9c) >> 0xf & 1) == 0)) {
    cVar4 = '\0';
  }
  else {
    cVar4 = '\x01';
  }
  bVar2 = (cVar4 << 6 ^ bVar2) & 0x40 ^ bVar2;
  *(byte *)((int)this + 0x81) = bVar2;
  if (bStack_665 != 0) {
    bVar3 = Stream_ReadBoolean(*(void **)((int)reader + 8),&bStack_665);
    StreamReader_AccumulateStatus(reader,bVar3);
    *(byte *)((int)this + 0x81) =
         *(byte *)((int)this + 0x81) ^ (bStack_665 * '\b' ^ *(byte *)((int)this + 0x81)) & 8;
    return *(byte *)((int)reader + 0x14);
  }
  *(byte *)((int)this + 0x81) = bVar2 & 0xf7;
  return *(byte *)((int)reader + 0x14);
}

