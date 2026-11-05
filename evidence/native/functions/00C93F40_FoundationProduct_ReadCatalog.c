/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECX product plus
   reader-pointer stackword; all exitsRET4, AL status only. Reads UInt32 version; versions>=2 read
   reference-key table and fail if table invalid. Versions>=4 read kind+88 BEFORE common fields;
   only exact kinds7/8/9 read stilted8-byte preset rows containing one-byte binary flag, UInt32
   buffer length/data, parser constant1 and fullUInt32 ID. Failure frees temporary buffers and
   releases failed preset; no guessed full history ownership. Common C93100 follows presets.
   Versions<4 read kind after common. Versions<2 read four inline16-byte keys to90/A0/C0/D0.
   Versions>=2 read wall/floor ordinals; version>=3 additionally reads optional proxy ordinal and,
   only when its type lane nonzero, resolves typed MODL01661233 via93B730 intoB0; failure rejects.
   Then C0/D0 keys; E0/E4/shapeE8 are rawUInt32. No maximum-version, enum-domain, finite-price,
   low32-shortID or package cache/sort gate. Final AL is this local reader accumulated status, not
   pointer or whole EAX. Native VPXY gate>=3 differs current s3pi>=4; exact stilt kinds7/8/9 differ
   wrapper>=7. */

bool __thiscall FoundationProduct_ReadCatalog(void *this,void *reader)

{
  undefined4 *puVar1;
  bool bVar2;
  char cVar3;
  byte bVar4;
  void *this_00;
  int *this_01;
  uint uVar5;
  undefined1 local_49;
  uint local_48;
  uint local_44;
  uint local_40;
  char *local_3c;
  void *local_38 [4];
  undefined *local_28;
  undefined4 local_24;
  int local_20;
  char *local_1c;
  char local_18 [8];
  void *local_10;
  uint local_8;
  undefined1 uStack_4;
  
  StreamReader_Construct(local_18,reader,1);
  local_3c = "World/Catalog/KeyTable";
  FUN_007d9500(local_38,&local_3c);
  bVar2 = Stream_ReadUInt32(local_10,&local_48,local_8);
  StreamReader_AccumulateStatus(local_18,bVar2);
  if ((1 < local_48) && (cVar3 = ReferenceTable_ReadResourceKeys(local_18,local_38), cVar3 == '\0'))
  {
    if (local_38[0] != (void *)0x0) {
      Memory_FreeIfNonNull(local_38[0]);
    }
    StreamReader_ReleaseAuxiliary(local_18);
    return false;
  }
  if (3 < local_48) {
    bVar2 = Stream_ReadUInt32(local_10,&local_44,local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    *(uint *)((int)this + 0x88) = local_44;
    if (((local_44 == 7) || (local_44 == 8)) || (local_44 == 9)) {
      *(undefined4 *)((int)this + 0xf0) = *(undefined4 *)((int)this + 0xec);
      local_28 = (undefined *)0x0;
      local_24 = 0;
      local_20 = 0;
      local_1c = "World/Catalog/TempBinPreset";
      local_40 = 0;
      bVar2 = Stream_ReadUInt32(local_10,&local_40,local_8);
      StreamReader_AccumulateStatus(local_18,bVar2);
      FUN_00af9f10((void *)((int)this + 0xec),local_40);
      uVar5 = 0;
      if (local_40 != 0) {
        do {
          puVar1 = (undefined4 *)(*(int *)((int)this + 0xec) + uVar5 * 8);
          local_49 = 0;
          bVar2 = Stream_ReadBoolean(local_10,&local_49);
          StreamReader_AccumulateStatus(local_18,bVar2);
          this_00 = (void *)FUN_004e4500(0x60,"World/Catalog/StiltedFoundationPreset",0);
          if ((this_00 == (void *)0x0) ||
             (this_01 = (int *)DesignPreset_InitializeEmpty(this_00), this_01 == (int *)0x0)) {
            if (local_28 != (undefined *)0x0) {
              Memory_FreeIfNonNull(local_28);
            }
            goto LAB_00c94434;
          }
          (**(code **)*this_01)();
          bVar2 = Stream_ReadUInt32(local_10,(uint *)&local_3c,local_8);
          StreamReader_AccumulateStatus(local_18,bVar2);
          ByteVector_ResizeZeroed(&local_28,(uint)local_3c);
          bVar2 = Stream_ReadExactBytes(local_10,local_28,(uint)local_3c);
          StreamReader_AccumulateStatus(local_18,bVar2);
          bVar4 = Preset_ReadBinaryOrTextBuffer(this_01,local_28,(uint)local_3c,1);
          if (bVar4 == 0) {
            (**(code **)(*this_01 + 4))();
            if (local_28 != (undefined *)0x0) {
              Memory_FreeIfNonNull(local_28);
            }
            goto LAB_00c94434;
          }
          bVar2 = Stream_ReadUInt32(local_10,puVar1 + 1,local_8);
          StreamReader_AccumulateStatus(local_18,bVar2);
          *puVar1 = this_01;
          uVar5 = uVar5 + 1;
        } while (uVar5 < local_40);
      }
      if (local_28 != (undefined *)0x0) {
        Memory_FreeIfNonNull(local_28);
      }
    }
  }
  CatalogProduct_ReadCommonFields(this,reader);
  if (local_48 < 4) {
    bVar2 = Stream_ReadUInt32(local_10,&local_44,local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    *(uint *)((int)this + 0x88) = local_44;
  }
  if (local_48 < 2) {
    bVar2 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0x90),local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    bVar2 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0xa0),local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    bVar2 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0xc0),local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    bVar2 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0xd0),local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
LAB_00c942a1:
    bVar2 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0xe0),local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    bVar2 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0xe4),local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    bVar2 = Stream_ReadUInt32(local_10,&local_44,local_8);
    StreamReader_AccumulateStatus(local_18,bVar2);
    *(uint *)((int)this + 0xe8) = local_44;
    FUN_00731be0(this,*(int *)((int)this + 0x20) +
                      (*(int *)((int)this + 0xf0) - *(int *)((int)this + 0xec) >> 3) * 8);
    if (local_38[0] != (void *)0x0) {
      Memory_FreeIfNonNull(local_38[0]);
    }
    StreamReader_ReleaseAuxiliary(local_18);
    return (bool)uStack_4;
  }
  uVar5 = ReferenceTable_ReadKeyByOrdinal(local_18,(int *)local_38,(undefined4 *)((int)this + 0x90))
  ;
  if (((char)uVar5 != '\0') &&
     (uVar5 = ReferenceTable_ReadKeyByOrdinal
                        (local_18,(int *)local_38,(undefined4 *)((int)this + 0xa0)),
     (char)uVar5 != '\0')) {
    if (2 < local_48) {
      local_28 = (undefined *)0x0;
      local_24 = 0;
      local_20 = 0;
      local_1c = (char *)0x0;
      uVar5 = ReferenceTable_ReadKeyByOrdinal(local_18,(int *)local_38,&local_28);
      if (((char)uVar5 == '\0') ||
         ((local_20 != 0 &&
          (bVar2 = VisualProxy_ResolveTypedResource(&local_28,0x1661233,(void *)((int)this + 0xb0)),
          !bVar2)))) goto LAB_00c94434;
    }
    uVar5 = ReferenceTable_ReadKeyByOrdinal
                      (local_18,(int *)local_38,(undefined4 *)((int)this + 0xc0));
    if (((char)uVar5 != '\0') &&
       (uVar5 = ReferenceTable_ReadKeyByOrdinal
                          (local_18,(int *)local_38,(undefined4 *)((int)this + 0xd0)),
       (char)uVar5 != '\0')) goto LAB_00c942a1;
  }
LAB_00c94434:
  if (local_38[0] != (void *)0x0) {
    Memory_FreeIfNonNull(local_38[0]);
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return false;
}

