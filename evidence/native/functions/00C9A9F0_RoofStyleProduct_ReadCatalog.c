/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 roof catalog reader/lookup contract): ECX roof product plus one physical
   stream pointer, RET4; AL Boolean status only. Factory C8CD90 type91EDBD3E constructs C9A990,
   which installs vtable107D2C0; original word107D2D8 resolves this +18 reader. Full flow
   C9A9F0..C9ABB1 has450 original bytes. Read UInt32 resource version; unsigned version>=2 first
   reads reference-table offset/extent via99D570, then common fields C93100. Read rawUInt32 roof
   type to+88, then two keys to+90/+A0: version<2 inline TGI16 each; >=2 UInt32ordinals viaC92FD0
   with AL-false immediate cleanup. Finally read32-bit scalar bits+ B0 and flags+B4; return local
   sticky status after releasing vector/context. No type1..1E clamp, no1024-row cap, no
   filename-based fallback or current detached partial-report policy occurs here. Earlier common
   fields/first key can be mutated before later ordinal failure. Slope float interpretation is by
   constructor MOVSS and downstream usage; Stream_ReadUInt32 preserves raw bits. Physical version
   slot is reused input stack storage; decompiler pointer-looking comparisons are an artifact,
   actual CMP/JC unsigned version2 branches. */

byte __thiscall RoofStyleProduct_ReadCatalog(void *this,void *stream)

{
  void *reader;
  bool bVar1;
  char cVar2;
  uint uVar3;
  char *pcStack_30;
  uint uStack_2c;
  void *apvStack_28 [4];
  char acStack_18 [8];
  void *pvStack_10;
  uint uStack_8;
  byte bStack_4;
  
  reader = stream;
  StreamReader_Construct(acStack_18,stream,1);
  bVar1 = Stream_ReadUInt32(pvStack_10,(uint *)&stream,uStack_8);
  StreamReader_AccumulateStatus(acStack_18,bVar1);
  pcStack_30 = "World/Catalog/Roof/KeyTable";
  FUN_007d9500(apvStack_28,&pcStack_30);
  if (((void *)0x1 < stream) &&
     (cVar2 = ReferenceTable_ReadResourceKeys(acStack_18,apvStack_28), cVar2 == '\0')) {
LAB_00c9aa60:
    if (apvStack_28[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_28[0]);
    }
    StreamReader_ReleaseAuxiliary(acStack_18);
    return 0;
  }
  CatalogProduct_ReadCommonFields(this,reader);
  bVar1 = Stream_ReadUInt32(pvStack_10,&uStack_2c,uStack_8);
  StreamReader_AccumulateStatus(acStack_18,bVar1);
  *(uint *)((int)this + 0x88) = uStack_2c;
  if (stream < (void *)0x2) {
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_10,(void *)((int)this + 0x90),uStack_8);
    StreamReader_AccumulateStatus(acStack_18,bVar1);
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_10,(void *)((int)this + 0xa0),uStack_8);
    StreamReader_AccumulateStatus(acStack_18,bVar1);
  }
  else {
    uVar3 = ReferenceTable_ReadKeyByOrdinal
                      (acStack_18,(int *)apvStack_28,(undefined4 *)((int)this + 0x90));
    if (((char)uVar3 == '\0') ||
       (uVar3 = ReferenceTable_ReadKeyByOrdinal
                          (acStack_18,(int *)apvStack_28,(undefined4 *)((int)this + 0xa0)),
       (char)uVar3 == '\0')) goto LAB_00c9aa60;
  }
  bVar1 = Stream_ReadUInt32(pvStack_10,(uint *)((int)this + 0xb0),uStack_8);
  StreamReader_AccumulateStatus(acStack_18,bVar1);
  bVar1 = Stream_ReadUInt32(pvStack_10,(uint *)((int)this + 0xb4),uStack_8);
  StreamReader_AccumulateStatus(acStack_18,bVar1);
  if (apvStack_28[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_28[0]);
  }
  StreamReader_ReleaseAuxiliary(acStack_18);
  return bStack_4;
}

