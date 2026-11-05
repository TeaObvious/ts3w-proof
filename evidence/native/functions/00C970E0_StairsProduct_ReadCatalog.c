/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, original PC1.67 static; analyst-assigned name. Physical ECX product receiver plus
   reader pointer, RET4; AL status. Unsigned UInt32 version: key table from2 and presets from3;
   older inputs use inline16-byte keys. Preset Boolean is consumed but parser receives constant1;
   buffer lengths/counts/IDs are UInt32. Common C93100 reader precedes first three model keys.93B730
   resolves first two to exact MODL01661233 at+88/+98. Third key is compared word-for-word
   against16bytes at011EC8D0; exact sentinel copies to+A8, otherwise typed resolution must succeed.
   Thus a nonzero invalid wall-cap is rejected; do not call every wall-cap failure optional. Four
   further catalog keys are read into+B8,+D8,+C8,+E8, in that wire order, with ordinal failure
   checked. Success copies accumulated reader byte atC97634 and returns it inAL atC9765F; explicit
   failure returnsAL0. Preset retained-byte accounting uses8-byte rows plus accumulated payload
   accounting. No explicit maximum version guard, gameplay stair instantiation or routing behavior
   is established here. */

bool __thiscall StairsProduct_ReadCatalog(void *this,void *reader)

{
  undefined *_Dst;
  bool bVar1;
  char cVar2;
  byte bVar3;
  void *this_00;
  int *this_01;
  uint uVar4;
  undefined *_Src;
  undefined *arg0;
  char acStack_98 [8];
  void *pvStack_90;
  uint uStack_88;
  undefined1 uStack_84;
  byte abStack_7e [2];
  void *apvStack_7c [4];
  char *pcStack_6c;
  uint uStack_68;
  uint uStack_64;
  uint uStack_60;
  int iStack_5c;
  uint uStack_58;
  int iStack_54;
  int iStack_50;
  int iStack_4c;
  int iStack_48;
  void *pvStack_44;
  undefined *puStack_40;
  undefined *puStack_3c;
  undefined4 uStack_38;
  char *pcStack_34;
  undefined4 uStack_30;
  undefined4 uStack_2c;
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined1 *puStack_20;
  undefined1 *puStack_1c;
  undefined2 *puStack_18;
  char *pcStack_14;
  int aiStack_10 [4];
  
  pvStack_44 = this;
  StreamReader_Construct(acStack_98,reader,1);
  pcStack_6c = "World/Catalog/KeyTable";
  FUN_007d9500(apvStack_7c,&pcStack_6c);
  bVar1 = Stream_ReadUInt32(pvStack_90,&uStack_64,uStack_88);
  StreamReader_AccumulateStatus(acStack_98,bVar1);
  if ((1 < uStack_64) &&
     (cVar2 = ReferenceTable_ReadResourceKeys(acStack_98,apvStack_7c), cVar2 == '\0')) {
    if (apvStack_7c[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_7c[0]);
    }
    StreamReader_ReleaseAuxiliary(acStack_98);
    return false;
  }
  arg0 = (undefined *)0x0;
  *(undefined4 *)((int)this + 0xfc) = *(undefined4 *)((int)this + 0xf8);
  _Src = (undefined *)0x0;
  puStack_40 = (undefined *)0x0;
  puStack_3c = (undefined *)0x0;
  uStack_38 = 0;
  pcStack_34 = "World/Catalog/TempBinPreset";
  pcStack_14 = "World/Catalog/TempXmlPreset";
  puStack_20 = &DAT_011c8e54;
  puStack_1c = &DAT_011c8e54;
  puStack_18 = &DAT_011c8e56;
  iStack_5c = 0;
  if (2 < uStack_64) {
    uStack_68 = 0;
    bVar1 = Stream_ReadUInt32(pvStack_90,&uStack_68,uStack_88);
    StreamReader_AccumulateStatus(acStack_98,bVar1);
    FUN_00af9f10((void *)((int)this + 0xf8),uStack_68);
    uStack_58 = 0;
    if (uStack_68 != 0) {
      do {
        pcStack_6c = (char *)(*(int *)((int)this + 0xf8) + uStack_58 * 8);
        abStack_7e[1] = 0;
        bVar1 = Stream_ReadBoolean(pvStack_90,abStack_7e + 1);
        StreamReader_AccumulateStatus(acStack_98,bVar1);
        this_00 = (void *)FUN_004e4500(0x60,"World/Catalog/FencePreset",0);
        if ((this_00 == (void *)0x0) ||
           (this_01 = (int *)DesignPreset_InitializeEmpty(this_00), this_01 == (int *)0x0)) {
LAB_00c97444:
          if (arg0 != (undefined *)0x0) {
            Memory_FreeIfNonNull(arg0);
          }
          goto LAB_00c97703;
        }
        (**(code **)*this_01)();
        bVar1 = Stream_ReadUInt32(pvStack_90,&uStack_60,uStack_88);
        StreamReader_AccumulateStatus(acStack_98,bVar1);
        if ((uint)((int)_Src - (int)arg0) < uStack_60) {
          abStack_7e[0] = 0;
          FUN_00b6f4c0(&puStack_40,_Src,arg0 + (uStack_60 - (int)_Src),abStack_7e);
          arg0 = puStack_40;
        }
        else {
          _Dst = arg0 + uStack_60;
          memmove(_Dst,_Src,0);
          this = pvStack_44;
          puStack_3c = _Dst;
        }
        _Src = puStack_3c;
        bVar1 = Stream_ReadExactBytes(pvStack_90,arg0,uStack_60);
        StreamReader_AccumulateStatus(acStack_98,bVar1);
        bVar3 = Preset_ReadBinaryOrTextBuffer(this_01,arg0,uStack_60,1);
        if (bVar3 == 0) {
          (**(code **)(*this_01 + 4))();
          goto LAB_00c97444;
        }
        bVar1 = Stream_ReadUInt32(pvStack_90,(uint *)(pcStack_6c + 4),uStack_88);
        StreamReader_AccumulateStatus(acStack_98,bVar1);
        *(int **)pcStack_6c = this_01;
        iStack_5c = iStack_5c + this_01[8];
        uStack_58 = uStack_58 + 1;
      } while (uStack_58 < uStack_68);
    }
  }
  CatalogProduct_ReadCommonFields(this,reader);
  aiStack_10[0] = 0;
  aiStack_10[1] = 0;
  aiStack_10[2] = 0;
  aiStack_10[3] = 0;
  uStack_30 = 0;
  uStack_2c = 0;
  uStack_28 = 0;
  uStack_24 = 0;
  iStack_54 = 0;
  iStack_50 = 0;
  iStack_4c = 0;
  iStack_48 = 0;
  if (uStack_64 < 2) {
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_90,aiStack_10,uStack_88);
    StreamReader_AccumulateStatus(acStack_98,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_90,&uStack_30,uStack_88);
    StreamReader_AccumulateStatus(acStack_98,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_90,&iStack_54,uStack_88);
    StreamReader_AccumulateStatus(acStack_98,bVar1);
  }
  else {
    uVar4 = ReferenceTable_ReadKeyByOrdinal(acStack_98,(int *)apvStack_7c,aiStack_10);
    if ((((char)uVar4 == '\0') ||
        (uVar4 = ReferenceTable_ReadKeyByOrdinal(acStack_98,(int *)apvStack_7c,&uStack_30),
        (char)uVar4 == '\0')) ||
       (uVar4 = ReferenceTable_ReadKeyByOrdinal(acStack_98,(int *)apvStack_7c,&iStack_54),
       (char)uVar4 == '\0')) goto LAB_00c976f0;
  }
  bVar1 = VisualProxy_ResolveTypedResource(aiStack_10,0x1661233,(void *)((int)this + 0x88));
  if ((bVar1) &&
     (bVar1 = VisualProxy_ResolveTypedResource(&uStack_30,0x1661233,(void *)((int)this + 0x98)),
     bVar1)) {
    if (((iStack_54 == DAT_011ec8d0) && ((iStack_4c == DAT_011ec8d8 && (iStack_48 == DAT_011ec8dc)))
        ) && (iStack_50 == DAT_011ec8d4)) {
      *(int *)((int)this + 0xa8) = DAT_011ec8d0;
      *(int *)((int)this + 0xac) = DAT_011ec8d4;
      *(int *)((int)this + 0xb0) = DAT_011ec8d8;
      *(int *)((int)this + 0xb4) = DAT_011ec8dc;
    }
    else {
      bVar1 = VisualProxy_ResolveTypedResource(&iStack_54,0x1661233,(void *)((int)this + 0xa8));
      if (!bVar1) goto LAB_00c976f0;
    }
    if (uStack_64 < 2) {
      bVar1 = Stream_ReadResourceKeyTGI(pvStack_90,(void *)((int)this + 0xb8),uStack_88);
      StreamReader_AccumulateStatus(acStack_98,bVar1);
      bVar1 = Stream_ReadResourceKeyTGI(pvStack_90,(void *)((int)this + 0xd8),uStack_88);
      StreamReader_AccumulateStatus(acStack_98,bVar1);
      bVar1 = Stream_ReadResourceKeyTGI(pvStack_90,(void *)((int)this + 200),uStack_88);
      StreamReader_AccumulateStatus(acStack_98,bVar1);
      bVar1 = Stream_ReadResourceKeyTGI(pvStack_90,(void *)((int)this + 0xe8),uStack_88);
      StreamReader_AccumulateStatus(acStack_98,bVar1);
LAB_00c97611:
      FUN_00731be0(this,*(int *)((int)this + 0x20) +
                        (*(int *)((int)this + 0xfc) - *(int *)((int)this + 0xf8) >> 3) * 8 +
                        iStack_5c);
      if (arg0 != (undefined *)0x0) {
        Memory_FreeIfNonNull(arg0);
      }
      if (apvStack_7c[0] != (void *)0x0) {
        Memory_FreeIfNonNull(apvStack_7c[0]);
      }
      StreamReader_ReleaseAuxiliary(acStack_98);
      return (bool)uStack_84;
    }
    uVar4 = ReferenceTable_ReadKeyByOrdinal
                      (acStack_98,(int *)apvStack_7c,(undefined4 *)((int)this + 0xb8));
    if ((char)uVar4 != '\0') {
      uVar4 = ReferenceTable_ReadKeyByOrdinal
                        (acStack_98,(int *)apvStack_7c,(undefined4 *)((int)this + 0xd8));
      if ((((char)uVar4 != '\0') &&
          (uVar4 = ReferenceTable_ReadKeyByOrdinal
                             (acStack_98,(int *)apvStack_7c,(undefined4 *)((int)this + 200)),
          (char)uVar4 != '\0')) &&
         (uVar4 = ReferenceTable_ReadKeyByOrdinal
                            (acStack_98,(int *)apvStack_7c,(undefined4 *)((int)this + 0xe8)),
         (char)uVar4 != '\0')) goto LAB_00c97611;
      FUN_004ef8f0((int *)&puStack_20);
    }
  }
LAB_00c976f0:
  if (arg0 != (undefined *)0x0) {
    Memory_FreeIfNonNull(arg0);
  }
LAB_00c97703:
  if (apvStack_7c[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_7c[0]);
  }
  StreamReader_ReleaseAuxiliary(acStack_98);
  return false;
}

