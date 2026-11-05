/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): Original VTable0107D288 points to this entry. Full
   reachable body00C9A220..00C9A949 defined from pristine instructions without patching. ECX
   pattern, stream arg RET4. ReadUInt32 version and relative reference table, swatch count;
   version>10 reads binary/text Boolean, >9subsort, >11group/sort. Binary sized bytes or UTF16 text
   pass005BFE50; mId and record fields retained in order. Current modern42-only swatch extraction is
   a bounded format subset.
   
   Analyst note, original PC1.67 static; analyst-assigned role. Physical ECX product receiver and
   one opaque reader pointer on stack, RET4; AL accumulated status. Corrected database prototype
   reflects instructions, replacing an old void/no-parameters declaration. Reads UInt32 version and
   reference table without a version gate. Preset vector+C0 has20-byte rows: parsed object
   pointer+0, full UInt32 mId+4, subsort+8 from version10, group/sort+C/+10 from version12.
   Version11 adds Boolean binary/text choice; earlier defaults text. Text path reads UTF16 then
   passes byte-count twice character count to Preset_ReadBinaryOrTextBuffer with final flag1; binary
   path reads UInt32-sized bytes and passes same flag1. Common C93100 follows presets. UInt32
   pattern writes+88; next UInt32 ordinal must be unsigned-less-than reference-table count,
   otherwise failure. Full16-byte referenced key resolves through93B730 requesting exact
   type01D0E75D into+90; failure rejects. Reads UInt32 sort to+A0 and surface string through7D7AA0.
   Terrain word is consumed but discarded for version<13; version>=13 stores+B4. Color raw32
   writes+B8. Preset byte accounting uses row stride20, not8. Success captures accumulated reader
   byte atC9A879 and returnsAL atC9A8E0; explicit failures returnAL0. No DDS first-key/skip-three
   heuristic or low24-bit mId projection is established by this body. Temporary strings/buffers/key
   table are released on exits. Factory515CA4CD and vtable0107D270+18 establish type and reader
   dispatch. No maximum-version check or gameplay placement is claimed. */

undefined1 __thiscall CatalogPattern_ReadPresetRecords(void *this,void *reader)

{
  undefined *_Dst;
  int iVar1;
  int iVar2;
  int iVar3;
  bool bVar4;
  char cVar5;
  byte bVar6;
  void *this_00;
  int *piVar7;
  int *piVar8;
  undefined *_Src;
  undefined4 *puVar9;
  char cStack_a1;
  char acStack_a0 [8];
  void *pvStack_98;
  uint uStack_90;
  undefined1 uStack_8c;
  char *pcStack_88;
  byte bStack_81;
  char *pcStack_80;
  uint uStack_7c;
  undefined1 *puStack_78;
  undefined1 *puStack_74;
  undefined2 *puStack_70;
  char *pcStack_6c;
  int iStack_68;
  uint uStack_64;
  int iStack_60;
  undefined *puStack_5c;
  undefined *puStack_58;
  undefined4 uStack_54;
  char *pcStack_50;
  uint uStack_4c;
  void *pvStack_48;
  void *pvStack_44;
  int iStack_40;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  uint uStack_24;
  undefined1 *puStack_20;
  undefined1 *puStack_1c;
  undefined2 *puStack_18;
  char *pcStack_14;
  void *apvStack_10 [2];
  int iStack_8;
  
  pvStack_48 = this;
  StreamReader_Construct(acStack_a0,reader,1);
  pcStack_88 = "World/Catalog/KeyTable";
  FUN_007d9500(&pvStack_44,&pcStack_88);
  bVar4 = Stream_ReadUInt32(pvStack_98,&uStack_7c,uStack_90);
  StreamReader_AccumulateStatus(acStack_a0,bVar4);
  cVar5 = ReferenceTable_ReadResourceKeys(acStack_a0,&pvStack_44);
  if (cVar5 == '\0') {
    if (pvStack_44 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_44);
    }
    StreamReader_ReleaseAuxiliary(acStack_a0);
    return 0;
  }
  puStack_78 = &DAT_011c8e54;
  puStack_74 = &DAT_011c8e54;
  *(undefined4 *)((int)this + 0xc4) = *(undefined4 *)((int)this + 0xc0);
  _Src = (undefined *)0x0;
  puStack_5c = (undefined *)0x0;
  puStack_58 = (undefined *)0x0;
  uStack_54 = 0;
  pcStack_50 = "World/Catalog/TempBinPreset";
  pcStack_6c = "World/Catalog/TempXmlPreset";
  puStack_70 = &DAT_011c8e56;
  iStack_60 = 0;
  pcStack_80 = (char *)0x0;
  bVar4 = Stream_ReadUInt32(pvStack_98,(uint *)&pcStack_80,uStack_90);
  StreamReader_AccumulateStatus(acStack_a0,bVar4);
  FUN_00a514a0((void *)((int)this + 0xc0),(uint)pcStack_80);
  pcStack_88 = (char *)0x0;
  if (pcStack_80 != (char *)0x0) {
    iStack_68 = 0;
    do {
      piVar7 = (int *)0x0;
      puVar9 = (undefined4 *)(*(int *)((int)this + 0xc0) + iStack_68);
      cStack_a1 = '\0';
      if (10 < uStack_7c) {
        bVar4 = Stream_ReadBoolean(pvStack_98,&cStack_a1);
        StreamReader_AccumulateStatus(acStack_a0,bVar4);
      }
      this_00 = (void *)FUN_004e4500(0x60,"Debug",0);
      if ((this_00 != (void *)0x0) &&
         (piVar7 = (int *)DesignPreset_InitializeEmpty(this_00), piVar7 != (int *)0x0)) {
        (**(code **)*piVar7)();
      }
      if (cStack_a1 == '\0') {
        StreamContext_ReadUtf16String(acStack_a0,&puStack_78);
        bVar6 = Preset_ReadBinaryOrTextBuffer
                          (piVar7,puStack_78,((int)puStack_74 - (int)puStack_78 >> 1) * 2,1);
        if (bVar6 == 0) {
          if (piVar7 != (int *)0x0) {
            (**(code **)(*piVar7 + 4))();
          }
          if ((2 < (int)((int)puStack_70 - (int)puStack_78 & 0xfffffffeU)) &&
             (puStack_78 != (undefined1 *)0x0)) {
            Memory_FreeIfNonNull(puStack_78);
          }
          if (puStack_5c != (undefined *)0x0) {
            Memory_FreeIfNonNull(puStack_5c);
          }
          if (pvStack_44 != (void *)0x0) goto LAB_00c9a92a;
          goto LAB_00c9a932;
        }
      }
      else {
        bVar4 = Stream_ReadUInt32(pvStack_98,&uStack_64,uStack_90);
        StreamReader_AccumulateStatus(acStack_a0,bVar4);
        if ((uint)((int)_Src - (int)puStack_5c) < uStack_64) {
          bStack_81 = 0;
          FUN_00b6f4c0(&puStack_5c,_Src,puStack_5c + (uStack_64 - (int)_Src),&bStack_81);
        }
        else {
          _Dst = puStack_5c + uStack_64;
          memmove(_Dst,_Src,0);
          this = pvStack_48;
          puStack_58 = _Dst;
        }
        _Src = puStack_58;
        bVar4 = Stream_ReadExactBytes(pvStack_98,puStack_5c,uStack_64);
        StreamReader_AccumulateStatus(acStack_a0,bVar4);
        bVar6 = Preset_ReadBinaryOrTextBuffer(piVar7,puStack_5c,uStack_64,1);
        if (bVar6 == 0) {
          if (piVar7 != (int *)0x0) {
            (**(code **)(*piVar7 + 4))();
          }
          if ((2 < (int)((int)puStack_70 - (int)puStack_78 & 0xfffffffeU)) &&
             (puStack_78 != (undefined1 *)0x0)) {
            Memory_FreeIfNonNull(puStack_78);
          }
          if (puStack_5c != (undefined *)0x0) {
            Memory_FreeIfNonNull(puStack_5c);
          }
          if (pvStack_44 != (void *)0x0) goto LAB_00c9a92a;
          goto LAB_00c9a932;
        }
      }
      bVar4 = Stream_ReadUInt32(pvStack_98,puVar9 + 1,uStack_90);
      StreamReader_AccumulateStatus(acStack_a0,bVar4);
      if (9 < uStack_7c) {
        bVar4 = Stream_ReadUInt32(pvStack_98,puVar9 + 2,uStack_90);
        StreamReader_AccumulateStatus(acStack_a0,bVar4);
        FUN_008a5930(piVar7,puVar9[2]);
        this = pvStack_48;
      }
      if (0xb < uStack_7c) {
        bVar4 = Stream_ReadUInt32(pvStack_98,puVar9 + 3,uStack_90);
        StreamReader_AccumulateStatus(acStack_a0,bVar4);
        bVar4 = Stream_ReadUInt32(pvStack_98,puVar9 + 4,uStack_90);
        StreamReader_AccumulateStatus(acStack_a0,bVar4);
      }
      iStack_68 = iStack_68 + 0x14;
      *puVar9 = piVar7;
      iStack_60 = iStack_60 + piVar7[8];
      pcStack_88 = pcStack_88 + 1;
    } while (pcStack_88 < pcStack_80);
  }
  CatalogProduct_ReadCommonFields(this,reader);
  bVar4 = Stream_ReadUInt32(pvStack_98,&uStack_24,uStack_90);
  StreamReader_AccumulateStatus(acStack_a0,bVar4);
  *(uint *)((int)this + 0x88) = uStack_24;
  uStack_34 = 0;
  uStack_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_4c = 0;
  bVar4 = Stream_ReadUInt32(pvStack_98,&uStack_4c,uStack_90);
  StreamReader_AccumulateStatus(acStack_a0,bVar4);
  if (uStack_4c < (uint)(iStack_40 - (int)pvStack_44 >> 4)) {
    puVar9 = (undefined4 *)(uStack_4c * 0x10 + (int)pvStack_44);
    uStack_34 = *puVar9;
    uStack_30 = puVar9[1];
    uStack_2c = puVar9[2];
    uStack_28 = puVar9[3];
    bVar4 = VisualProxy_ResolveTypedResource(&uStack_34,0x1d0e75d,(void *)((int)this + 0x90));
    if (bVar4) {
      bVar4 = Stream_ReadUInt32(pvStack_98,(uint *)((int)this + 0xa0),uStack_90);
      StreamReader_AccumulateStatus(acStack_a0,bVar4);
      puStack_20 = &DAT_011c8e54;
      puStack_1c = &DAT_011c8e54;
      pcStack_14 = "Lot/CTCatalog/ProductPattern/SurfaceStr";
      puStack_18 = &DAT_011c8e56;
      FUN_007d7aa0(acStack_a0,(int *)&puStack_20);
      piVar8 = FUN_004f3df0(apvStack_10,&puStack_20);
      piVar7 = (int *)((int)this + 0xa4);
      if (piVar8 != piVar7) {
        FUN_00405910(piVar7,(void *)*piVar8,(undefined1 *)piVar8[1]);
      }
      if ((1 < iStack_8 - (int)apvStack_10[0]) && (apvStack_10[0] != (void *)0x0)) {
        Memory_FreeIfNonNull(apvStack_10[0]);
      }
      iVar2 = *(int *)((int)this + 0xa8);
      iVar3 = *piVar7;
      iVar1 = iStack_60 + 1;
      if (uStack_7c < 0xd) {
        bVar4 = Stream_ReadUInt32(pvStack_98,(uint *)&pcStack_88,uStack_90);
        StreamReader_AccumulateStatus(acStack_a0,bVar4);
      }
      else {
        bVar4 = Stream_ReadUInt32(pvStack_98,(uint *)&pcStack_88,uStack_90);
        StreamReader_AccumulateStatus(acStack_a0,bVar4);
        *(char **)((int)this + 0xb4) = pcStack_88;
      }
      bVar4 = Stream_ReadUInt32(pvStack_98,(uint *)((int)this + 0xb8),uStack_90);
      StreamReader_AccumulateStatus(acStack_a0,bVar4);
      FUN_00731be0(this,*(int *)((int)this + 0x20) +
                        ((*(int *)((int)this + 0xc4) - *(int *)((int)this + 0xc0)) / 0x14) * 0x14 +
                        iVar1 + (iVar2 - iVar3));
      if ((2 < (int)((int)puStack_18 - (int)puStack_20 & 0xfffffffeU)) &&
         (puStack_20 != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(puStack_20);
      }
      if ((2 < (int)((int)puStack_70 - (int)puStack_78 & 0xfffffffeU)) &&
         (puStack_78 != (undefined1 *)0x0)) {
        Memory_FreeIfNonNull(puStack_78);
      }
      if (puStack_5c != (undefined *)0x0) {
        Memory_FreeIfNonNull(puStack_5c);
      }
      if (pvStack_44 != (void *)0x0) {
        Memory_FreeIfNonNull(pvStack_44);
      }
      StreamReader_ReleaseAuxiliary(acStack_a0);
      return uStack_8c;
    }
    if ((2 < (int)((int)puStack_70 - (int)puStack_78 & 0xfffffffeU)) &&
       (puStack_78 != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(puStack_78);
    }
    if (puStack_5c != (undefined *)0x0) {
      Memory_FreeIfNonNull(puStack_5c);
    }
    if (pvStack_44 == (void *)0x0) goto LAB_00c9a932;
  }
  else {
    if ((2 < (int)((int)puStack_70 - (int)puStack_78 & 0xfffffffeU)) &&
       (puStack_78 != (undefined1 *)0x0)) {
      Memory_FreeIfNonNull(puStack_78);
    }
    if (puStack_5c != (undefined *)0x0) {
      Memory_FreeIfNonNull(puStack_5c);
    }
    if (pvStack_44 == (void *)0x0) goto LAB_00c9a932;
  }
LAB_00c9a92a:
  Memory_FreeIfNonNull(pvStack_44);
LAB_00c9a932:
  StreamReader_ReleaseAuxiliary(acStack_a0);
  return 0;
}

