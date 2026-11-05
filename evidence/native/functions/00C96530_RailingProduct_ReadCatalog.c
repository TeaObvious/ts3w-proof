/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, original PC1.67 static; analyst-assigned name. Physical ECX product receiver plus
   reader pointer, RET4; AL status. UInt32 version uses unsigned thresholds: key table from2,
   presets from3; older inputs read three inline16-byte keys. Preset Boolean is consumed but the
   buffer parser receives constant1; count, buffer length and IDs are full UInt32. Common C93100
   reader runs before three typed model resolutions93B730 with exact type01661233 into+88,+98,+A8.
   ALL THREE must succeed, including post; there is no optional-post fallback in this body.
   Bounds93B800 from first source key into+C0 must also succeed. Failure returns AL0. Success
   preserves reader status byte atC96977 then returns it throughAL atC969A4, not literal1. No
   maximum version guard is present. Temporary buffer/key table are released on exits. Field names
   rail4/rail1/post are analyst alignment with catalog schema; slot order and offsets are
   instruction verified. */

bool __thiscall RailingProduct_ReadCatalog(void *this,void *reader)

{
  undefined *_Dst;
  bool bVar1;
  char cVar2;
  byte bVar3;
  void *this_00;
  int *this_01;
  uint uVar4;
  undefined *_Src;
  char *pcVar5;
  undefined *arg0;
  byte abStack_82 [10];
  void *pvStack_78;
  uint uStack_70;
  byte bStack_6c;
  char *pcStack_68;
  char *pcStack_64;
  void *apvStack_60 [4];
  uint uStack_50;
  uint uStack_4c;
  void *pvStack_48;
  undefined4 *puStack_44;
  undefined *puStack_40;
  undefined *puStack_3c;
  undefined4 uStack_38;
  char *pcStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  pvStack_48 = this;
  StreamReader_Construct(abStack_82 + 2,reader,1);
  pcStack_68 = "World/Catalog/KeyTable";
  FUN_007d9500(apvStack_60,&pcStack_68);
  bVar1 = Stream_ReadUInt32(pvStack_78,&uStack_50,uStack_70);
  StreamReader_AccumulateStatus(abStack_82 + 2,bVar1);
  if ((1 < uStack_50) &&
     (cVar2 = ReferenceTable_ReadResourceKeys((char *)(abStack_82 + 2),apvStack_60), cVar2 == '\0'))
  {
    if (apvStack_60[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_60[0]);
    }
    StreamReader_ReleaseAuxiliary(abStack_82 + 2);
    return false;
  }
  _Src = (undefined *)0x0;
  arg0 = (undefined *)0x0;
  *(undefined4 *)((int)this + 0xe4) = *(undefined4 *)((int)this + 0xe0);
  puStack_40 = (undefined *)0x0;
  puStack_3c = (undefined *)0x0;
  uStack_38 = 0;
  pcStack_34 = "World/Catalog/TempBinPreset";
  if (2 < uStack_50) {
    pcStack_64 = (char *)0x0;
    bVar1 = Stream_ReadUInt32(pvStack_78,(uint *)&pcStack_64,uStack_70);
    StreamReader_AccumulateStatus(abStack_82 + 2,bVar1);
    FUN_00af9f10((void *)((int)this + 0xe0),(uint)pcStack_64);
    pcStack_68 = (char *)0x0;
    if (pcStack_64 != (char *)0x0) {
      do {
        pcVar5 = pcStack_68;
        puStack_44 = (undefined4 *)(*(int *)((int)pvStack_48 + 0xe0) + (int)pcStack_68 * 8);
        abStack_82[1] = 0;
        bVar1 = Stream_ReadBoolean(pvStack_78,abStack_82 + 1);
        StreamReader_AccumulateStatus(abStack_82 + 2,bVar1);
        this_00 = (void *)FUN_004e4500(0x60,"World/Catalog/FencePreset",0);
        if ((this_00 == (void *)0x0) ||
           (this_01 = (int *)DesignPreset_InitializeEmpty(this_00), this_01 == (int *)0x0)) {
LAB_00c96859:
          if (arg0 != (undefined *)0x0) {
            Memory_FreeIfNonNull(arg0);
          }
          goto LAB_00c96952;
        }
        (**(code **)*this_01)();
        bVar1 = Stream_ReadUInt32(pvStack_78,&uStack_4c,uStack_70);
        StreamReader_AccumulateStatus(abStack_82 + 2,bVar1);
        if ((uint)((int)_Src - (int)arg0) < uStack_4c) {
          abStack_82[0] = 0;
          FUN_00b6f4c0(&puStack_40,_Src,arg0 + (uStack_4c - (int)_Src),abStack_82);
          arg0 = puStack_40;
        }
        else {
          _Dst = arg0 + uStack_4c;
          memmove(_Dst,_Src,0);
          pcVar5 = pcStack_68;
          puStack_3c = _Dst;
        }
        _Src = puStack_3c;
        bVar1 = Stream_ReadExactBytes(pvStack_78,arg0,uStack_4c);
        StreamReader_AccumulateStatus(abStack_82 + 2,bVar1);
        bVar3 = Preset_ReadBinaryOrTextBuffer(this_01,arg0,uStack_4c,1);
        if (bVar3 == 0) {
          (**(code **)(*this_01 + 4))();
          goto LAB_00c96859;
        }
        bVar1 = Stream_ReadUInt32(pvStack_78,puStack_44 + 1,uStack_70);
        StreamReader_AccumulateStatus(abStack_82 + 2,bVar1);
        pcStack_68 = pcVar5 + 1;
        *puStack_44 = this_01;
      } while (pcStack_68 < pcStack_64);
    }
    this = pvStack_48;
  }
  CatalogProduct_ReadCommonFields(this,reader);
  uStack_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  uStack_10 = 0;
  uStack_c = 0;
  uStack_8 = 0;
  uStack_4 = 0;
  uStack_20 = 0;
  uStack_1c = 0;
  uStack_18 = 0;
  uStack_14 = 0;
  if (uStack_50 < 2) {
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_78,&uStack_30,uStack_70);
    StreamReader_AccumulateStatus(abStack_82 + 2,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_78,&uStack_10,uStack_70);
    StreamReader_AccumulateStatus(abStack_82 + 2,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_78,&uStack_20,uStack_70);
    StreamReader_AccumulateStatus(abStack_82 + 2,bVar1);
  }
  else {
    uVar4 = ReferenceTable_ReadKeyByOrdinal(abStack_82 + 2,(int *)apvStack_60,&uStack_30);
    if ((((char)uVar4 == '\0') ||
        (uVar4 = ReferenceTable_ReadKeyByOrdinal(abStack_82 + 2,(int *)apvStack_60,&uStack_10),
        (char)uVar4 == '\0')) ||
       (uVar4 = ReferenceTable_ReadKeyByOrdinal(abStack_82 + 2,(int *)apvStack_60,&uStack_20),
       (char)uVar4 == '\0')) goto LAB_00c9693f;
  }
  bVar1 = VisualProxy_ResolveTypedResource(&uStack_30,0x1661233,(void *)((int)this + 0x88));
  if (((bVar1) &&
      (bVar1 = VisualProxy_ResolveTypedResource(&uStack_10,0x1661233,(void *)((int)this + 0x98)),
      bVar1)) &&
     ((bVar1 = VisualProxy_ResolveTypedResource(&uStack_20,0x1661233,(void *)((int)this + 0xa8)),
      bVar1 && (bVar1 = VisualProxy_ReadAlignedBounds(&uStack_30,(void *)((int)this + 0xc0)), bVar1)
      ))) {
    abStack_82[0] = bStack_6c;
    if (arg0 != (undefined *)0x0) {
      Memory_FreeIfNonNull(arg0);
    }
    if (apvStack_60[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_60[0]);
    }
    StreamReader_ReleaseAuxiliary(abStack_82 + 2);
    return (bool)abStack_82[0];
  }
LAB_00c9693f:
  if (arg0 != (undefined *)0x0) {
    Memory_FreeIfNonNull(arg0);
  }
LAB_00c96952:
  if (apvStack_60[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_60[0]);
  }
  StreamReader_ReleaseAuxiliary(abStack_82 + 2);
  return false;
}

