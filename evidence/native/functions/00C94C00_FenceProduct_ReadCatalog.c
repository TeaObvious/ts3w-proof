/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical ECX product receiver plus
   one reader pointer on stack, RET4; only AL is status. UInt32 version uses unsigned JB/SETAE
   thresholds: reference table from5, presets from7; lower versions read three inline full16-byte
   resource keys. Preset rows contain a Boolean, UInt32 byte count, byte buffer and full UInt32 ID;
   the Boolean is read but this body calls Preset_ReadBinaryOrTextBuffer with constant1, without
   selecting a parser from that Boolean. Common-field reader C93100 precedes three typed model
   lookups through93B730 with exact requested type01661233 (MODL), writing+A8,+B8,+C8. Regular and
   diagonal resolution failures reject; post resolution failure instead selects regular-source
   bounds. UInt32 tile spacing writes+E8; byte150 is false beforeversion6, otherwise normalized from
   byte!=0. Version>=9 reads normalized byte152, four raw UInt32 words+154/+158/+15C/+160 and an
   extra-section byte gate; version>=10 additionally reads normalized byte153. Version8 always reads
   that extra section; version>=9 only when the gate is nonzero. Extra section writes normalized
   byte151 and a table ordinal key at+D8. Byte150 true clears base flags+90 bit100. Bounds
   helper93B800 must succeed for post-or-regular into+F0, regular into+110, diagonal into+130.
   Success returns literal AL1 atC95312 after cleanup, unlike CRAL/CSTR accumulated status. Explicit
   lookup/preset/table failures return AL0. No explicit maximum supported version is checked. The
   loop alignment bytes C94D48..C94D4F are outside the reachable function body and are exported
   explicitly, never invented as owned instructions. This is a native catalog product reader, not
   gameplay object instantiation. */

bool __thiscall FenceProduct_ReadCatalog(void *this,void *reader)

{
  undefined *_Dst;
  bool bVar1;
  char cVar2;
  byte bVar3;
  bool bVar4;
  undefined4 *puVar5;
  int *this_00;
  uint uVar6;
  undefined *_Src;
  undefined *arg0;
  byte bStack_97;
  byte bStack_96;
  byte bStack_95;
  char acStack_94 [8];
  void *pvStack_8c;
  uint uStack_84;
  uint uStack_7c;
  char *pcStack_78;
  uint uStack_74;
  void *apvStack_70 [4];
  uint uStack_60;
  int iStack_5c;
  uint uStack_58;
  undefined4 uStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  undefined4 uStack_40;
  undefined4 uStack_3c;
  undefined4 uStack_38;
  undefined *puStack_34;
  undefined *puStack_30;
  undefined4 uStack_2c;
  char *pcStack_28;
  void *pvStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined1 *puStack_10;
  undefined1 *puStack_c;
  undefined2 *puStack_8;
  char *pcStack_4;
  
  pvStack_24 = this;
  StreamReader_Construct(acStack_94,reader,1);
  bVar1 = Stream_ReadUInt32(pvStack_8c,&uStack_7c,uStack_84);
  StreamReader_AccumulateStatus(acStack_94,bVar1);
  pcStack_78 = "World/Catalog/Fence/KeyTable";
  FUN_007d9500(apvStack_70,&pcStack_78);
  if ((4 < uStack_7c) &&
     (cVar2 = ReferenceTable_ReadResourceKeys(acStack_94,apvStack_70), cVar2 == '\0')) {
    if (apvStack_70[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_70[0]);
    }
    StreamReader_ReleaseAuxiliary(acStack_94);
    return false;
  }
  arg0 = (undefined *)0x0;
  *(undefined4 *)((int)this + 0x168) = *(undefined4 *)((int)this + 0x164);
  _Src = (undefined *)0x0;
  puStack_34 = (undefined *)0x0;
  puStack_30 = (undefined *)0x0;
  uStack_2c = 0;
  pcStack_28 = "World/Catalog/TempBinPreset";
  pcStack_4 = "World/Catalog/TempXmlPreset";
  puStack_10 = &DAT_011c8e54;
  puStack_c = &DAT_011c8e54;
  puStack_8 = &DAT_011c8e56;
  iStack_5c = 0;
  if (6 < uStack_7c) {
    uStack_74 = 0;
    bVar1 = Stream_ReadUInt32(pvStack_8c,&uStack_74,uStack_84);
    StreamReader_AccumulateStatus(acStack_94,bVar1);
    FUN_00af9f10((void *)((int)this + 0x164),uStack_74);
    uStack_58 = 0;
    if (uStack_74 != 0) {
      do {
        pcStack_78 = (char *)(*(int *)((int)this + 0x164) + uStack_58 * 8);
        bStack_95 = 0;
        bVar1 = Stream_ReadBoolean(pvStack_8c,&bStack_95);
        StreamReader_AccumulateStatus(acStack_94,bVar1);
        puVar5 = (undefined4 *)FUN_004e4500(0x60,"World/Catalog/FencePreset",0);
        if ((puVar5 == (undefined4 *)0x0) ||
           (this_00 = (int *)FUN_005bfac0(puVar5), this_00 == (int *)0x0)) {
LAB_00c94f6c:
          if (arg0 != (undefined *)0x0) {
            Memory_FreeIfNonNull(arg0);
          }
          goto LAB_00c95298;
        }
        (**(code **)*this_00)();
        bVar1 = Stream_ReadUInt32(pvStack_8c,&uStack_60,uStack_84);
        StreamReader_AccumulateStatus(acStack_94,bVar1);
        if ((uint)((int)_Src - (int)arg0) < uStack_60) {
          bStack_97 = 0;
          FUN_00b6f4c0(&puStack_34,_Src,arg0 + (uStack_60 - (int)_Src),&bStack_97);
          arg0 = puStack_34;
        }
        else {
          _Dst = arg0 + uStack_60;
          memmove(_Dst,_Src,0);
          this = pvStack_24;
          puStack_30 = _Dst;
        }
        _Src = puStack_30;
        bVar1 = Stream_ReadExactBytes(pvStack_8c,arg0,uStack_60);
        StreamReader_AccumulateStatus(acStack_94,bVar1);
        bVar3 = Preset_ReadBinaryOrTextBuffer(this_00,arg0,uStack_60,1);
        if (bVar3 == 0) {
          (**(code **)(*this_00 + 4))();
          goto LAB_00c94f6c;
        }
        bVar1 = Stream_ReadUInt32(pvStack_8c,(uint *)(pcStack_78 + 4),uStack_84);
        StreamReader_AccumulateStatus(acStack_94,bVar1);
        *(int **)pcStack_78 = this_00;
        iStack_5c = iStack_5c + this_00[8];
        uStack_58 = uStack_58 + 1;
      } while (uStack_58 < uStack_74);
    }
  }
  CatalogProduct_ReadCommonFields(this,reader);
  uStack_54 = 0;
  uStack_50 = 0;
  uStack_4c = 0;
  uStack_48 = 0;
  uStack_44 = 0;
  uStack_40 = 0;
  uStack_3c = 0;
  uStack_38 = 0;
  uStack_20 = 0;
  uStack_1c = 0;
  uStack_18 = 0;
  uStack_14 = 0;
  if (uStack_7c < 5) {
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_8c,&uStack_54,uStack_84);
    StreamReader_AccumulateStatus(acStack_94,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_8c,&uStack_44,uStack_84);
    StreamReader_AccumulateStatus(acStack_94,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_8c,&uStack_20,uStack_84);
    StreamReader_AccumulateStatus(acStack_94,bVar1);
  }
  else {
    uVar6 = ReferenceTable_ReadKeyByOrdinal(acStack_94,(int *)apvStack_70,&uStack_54);
    if ((((char)uVar6 == '\0') ||
        (uVar6 = ReferenceTable_ReadKeyByOrdinal(acStack_94,(int *)apvStack_70,&uStack_44),
        (char)uVar6 == '\0')) ||
       (uVar6 = ReferenceTable_ReadKeyByOrdinal(acStack_94,(int *)apvStack_70,&uStack_20),
       (char)uVar6 == '\0')) goto LAB_00c95285;
  }
  bVar1 = VisualProxy_ResolveTypedResource(&uStack_54,0x1661233,(void *)((int)this + 0xa8));
  if ((!bVar1) ||
     (bVar1 = VisualProxy_ResolveTypedResource(&uStack_44,0x1661233,(void *)((int)this + 0xb8)),
     !bVar1)) goto LAB_00c95285;
  bVar1 = VisualProxy_ResolveTypedResource(&uStack_20,0x1661233,(void *)((int)this + 200));
  bVar4 = Stream_ReadUInt32(pvStack_8c,(uint *)((int)this + 0xe8),uStack_84);
  StreamReader_AccumulateStatus(acStack_94,bVar4);
  if (uStack_7c < 6) {
    *(undefined1 *)((int)this + 0x150) = 0;
  }
  else {
    bVar4 = Stream_ReadByte(pvStack_8c,&bStack_97);
    StreamReader_AccumulateStatus(acStack_94,bVar4);
    *(bool *)((int)this + 0x150) = bStack_97 != 0;
  }
  if (uStack_7c < 9) {
LAB_00c951c5:
    if (uStack_7c == 8) goto LAB_00c951cc;
  }
  else {
    bVar4 = Stream_ReadByte(pvStack_8c,&bStack_97);
    StreamReader_AccumulateStatus(acStack_94,bVar4);
    *(bool *)((int)this + 0x152) = bStack_97 != 0;
    if (9 < uStack_7c) {
      bVar4 = Stream_ReadByte(pvStack_8c,&bStack_95);
      StreamReader_AccumulateStatus(acStack_94,bVar4);
      *(bool *)((int)this + 0x153) = bStack_95 != 0;
    }
    bVar4 = Stream_ReadUInt32(pvStack_8c,(uint *)((int)this + 0x154),uStack_84);
    StreamReader_AccumulateStatus(acStack_94,bVar4);
    bVar4 = Stream_ReadUInt32(pvStack_8c,(uint *)((int)this + 0x158),uStack_84);
    StreamReader_AccumulateStatus(acStack_94,bVar4);
    bVar4 = Stream_ReadUInt32(pvStack_8c,(uint *)((int)this + 0x15c),uStack_84);
    StreamReader_AccumulateStatus(acStack_94,bVar4);
    bVar4 = Stream_ReadUInt32(pvStack_8c,(uint *)((int)this + 0x160),uStack_84);
    StreamReader_AccumulateStatus(acStack_94,bVar4);
    bVar4 = Stream_ReadByte(pvStack_8c,&bStack_96);
    StreamReader_AccumulateStatus(acStack_94,bVar4);
    if (bStack_96 == 0) goto LAB_00c951c5;
LAB_00c951cc:
    bVar4 = Stream_ReadByte(pvStack_8c,&bStack_96);
    StreamReader_AccumulateStatus(acStack_94,bVar4);
    *(bool *)((int)this + 0x151) = bStack_96 != 0;
    uVar6 = ReferenceTable_ReadKeyByOrdinal
                      (acStack_94,(int *)apvStack_70,(undefined4 *)((int)this + 0xd8));
    if ((char)uVar6 == '\0') goto LAB_00c95285;
  }
  if (*(char *)((int)this + 0x150) != '\0') {
    *(uint *)((int)this + 0x90) = *(uint *)((int)this + 0x90) & 0xfffffeff;
  }
  puVar5 = &uStack_20;
  if (!bVar1) {
    puVar5 = &uStack_54;
  }
  bVar1 = VisualProxy_ReadAlignedBounds(puVar5,(void *)((int)this + 0xf0));
  if (bVar1) {
    bVar1 = VisualProxy_ReadAlignedBounds(&uStack_54,(void *)((int)this + 0x110));
    if ((bVar1) &&
       (bVar1 = VisualProxy_ReadAlignedBounds(&uStack_44,(void *)((int)this + 0x130)), bVar1)) {
      FUN_00731be0(this,*(int *)((int)this + 0x20) +
                        (*(int *)((int)this + 0x168) - *(int *)((int)this + 0x164) >> 3) * 8 +
                        iStack_5c);
      FUN_004ef8f0((int *)&puStack_10);
      if (arg0 != (undefined *)0x0) {
        Memory_FreeIfNonNull(arg0);
      }
      if (apvStack_70[0] != (void *)0x0) {
        Memory_FreeIfNonNull(apvStack_70[0]);
      }
      StreamReader_ReleaseAuxiliary(acStack_94);
      return true;
    }
    FUN_004ef8f0((int *)&puStack_10);
  }
LAB_00c95285:
  if (arg0 != (undefined *)0x0) {
    Memory_FreeIfNonNull(arg0);
  }
LAB_00c95298:
  if (apvStack_70[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_70[0]);
  }
  StreamReader_ReleaseAuxiliary(acStack_94);
  return false;
}

