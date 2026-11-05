/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECX product plus
   reader stackword, RET4, AL accumulated local reader status or literal0 on early table/ordinal
   failure. UInt32 outerversion unsigned>=2 reads reference-key table before common C93100, whose AL
   is not directly tested. Reads unsigned byte width and MOVZX widens intoDWORD88; no1..3 domain
   validation. Versions unsigned<2 read seven inline TGI keys90/A0/B0/C0/D0/E0/F0 in order. >=2 uses
   C92FD0 ordinal helper for each same destination and rejects immediately on first AL0. Helper
   copies all four authored keywords for validordinal, including zeros; no instance-nonzero or
   OBJD-type filter here. Releases table/reader auxiliary on all local exits. The external s3pi
   FireplaceCatalogResource wrapper uses an ordinal-only seven-key form; this is a property of that
   external wrapper, not a claim about the OpenTS3 shared CFIR decoder. Native valid zero keys are
   preserved and invalid ordinals fail; no wrapper-format equivalence is inferred. Role names are
   current wrapper roles tied to field/getter/consumer chain, not recovered native symbols. */

bool __thiscall FireplaceProduct_ReadCatalog(void *this,void *reader)

{
  void *reader_00;
  bool bVar1;
  char cVar2;
  uint uVar3;
  uint local_30;
  char *local_2c;
  void *local_28 [4];
  char local_18 [8];
  void *local_10;
  uint local_8;
  undefined1 local_4;
  
  reader_00 = reader;
  StreamReader_Construct(local_18,reader,1);
  bVar1 = Stream_ReadUInt32(local_10,&local_30,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  local_2c = "World/Catalog/Fireplace/KeyTable";
  FUN_007d9500(local_28,&local_2c);
  if ((1 < local_30) && (cVar2 = ReferenceTable_ReadResourceKeys(local_18,local_28), cVar2 == '\0'))
  {
LAB_00c95630:
    if (local_28[0] != (void *)0x0) {
      Memory_FreeIfNonNull(local_28[0]);
    }
    StreamReader_ReleaseAuxiliary(local_18);
    return false;
  }
  CatalogProduct_ReadCommonFields(this,reader_00);
  reader = (void *)((uint)reader & 0xffffff00);
  bVar1 = Stream_ReadByte(local_10,(byte *)&reader);
  StreamReader_AccumulateStatus(local_18,bVar1);
  *(uint *)((int)this + 0x88) = (uint)reader & 0xff;
  if (local_30 < 2) {
    bVar1 = Stream_ReadResourceKeyTGI(local_10,(undefined4 *)((int)this + 0x90),local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0xa0),local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0xb0),local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0xc0),local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0xd0),local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0xe0),local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0xf0),local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
  }
  else {
    uVar3 = ReferenceTable_ReadKeyByOrdinal
                      (local_18,(int *)local_28,(undefined4 *)((int)this + 0x90));
    if (((((char)uVar3 == '\0') ||
         (uVar3 = ReferenceTable_ReadKeyByOrdinal
                            (local_18,(int *)local_28,(undefined4 *)((int)this + 0xa0)),
         (char)uVar3 == '\0')) ||
        (uVar3 = ReferenceTable_ReadKeyByOrdinal
                           (local_18,(int *)local_28,(undefined4 *)((int)this + 0xb0)),
        (char)uVar3 == '\0')) ||
       (((uVar3 = ReferenceTable_ReadKeyByOrdinal
                            (local_18,(int *)local_28,(undefined4 *)((int)this + 0xc0)),
         (char)uVar3 == '\0' ||
         (uVar3 = ReferenceTable_ReadKeyByOrdinal
                            (local_18,(int *)local_28,(undefined4 *)((int)this + 0xd0)),
         (char)uVar3 == '\0')) ||
        ((uVar3 = ReferenceTable_ReadKeyByOrdinal
                            (local_18,(int *)local_28,(undefined4 *)((int)this + 0xe0)),
         (char)uVar3 == '\0' ||
         (uVar3 = ReferenceTable_ReadKeyByOrdinal
                            (local_18,(int *)local_28,(undefined4 *)((int)this + 0xf0)),
         (char)uVar3 == '\0')))))) goto LAB_00c95630;
  }
  if (local_28[0] != (void *)0x0) {
    Memory_FreeIfNonNull(local_28[0]);
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return (bool)local_4;
}

