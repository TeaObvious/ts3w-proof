/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECX product plus
   reader-pointer stackword, both terminal pathsRET4; Boolean returned in AL. Flow startsC9B220 and
   endsC9B39C inclusive; three followingCC bytes belong to alignment before separate C9B3A0. Reads
   outer UInt32 version,>=2 reference-key table with failure path; invokes C99740 without testing
   its AL directly. Outer version<2 reads inline16-byte default-pattern key atA8. >=2 reads UInt32
   ordinal then unsigned bounds-checks against key-table count (16-byte rows); out-of-range
   returns0, otherwise copies all four authored key DWORDs toA8..B4. No nonzero type/instance filter
   or pattern-resource existence/type resolution here. Reads rawUInt32 thickness intoB8. Successful
   path returns literalAL1 atC9B374/375 rather than the local accumulated reader status; failure
   returnsAL0. Common/partition/status semantics therefore must not be conflated with exception
   handling in current wrapper. No package/name/group fallback or CLR snapshot/index policy appears.
    */

bool __thiscall WallStyleProduct_ReadCatalog(void *this,void *reader)

{
  void *reader_00;
  bool bVar1;
  char cVar2;
  undefined4 *puVar3;
  char *pcStack_30;
  uint uStack_2c;
  void *pvStack_28;
  int iStack_24;
  char acStack_18 [8];
  void *pvStack_10;
  uint uStack_8;
  
  reader_00 = reader;
  StreamReader_Construct(acStack_18,reader,1);
  pcStack_30 = "World/Catalog/KeyTable";
  FUN_007d9500(&pvStack_28,&pcStack_30);
  bVar1 = Stream_ReadUInt32(pvStack_10,(uint *)&reader,uStack_8);
  StreamReader_AccumulateStatus(acStack_18,bVar1);
  if (((void *)0x1 < reader) &&
     (cVar2 = ReferenceTable_ReadResourceKeys(acStack_18,&pvStack_28), cVar2 == '\0')) {
joined_r0x00c9b37f:
    if (pvStack_28 != (void *)0x0) {
      Memory_FreeIfNonNull(pvStack_28);
    }
    StreamReader_ReleaseAuxiliary(acStack_18);
    return false;
  }
  PartitionProduct_ReadFields(this,reader_00);
  if (reader < (void *)0x2) {
    bVar1 = Stream_ReadResourceKeyTGI(pvStack_10,(void *)((int)this + 0xa8),uStack_8);
    StreamReader_AccumulateStatus(acStack_18,bVar1);
  }
  else {
    pcStack_30 = (char *)0x0;
    bVar1 = Stream_ReadUInt32(pvStack_10,(uint *)&pcStack_30,uStack_8);
    StreamReader_AccumulateStatus(acStack_18,bVar1);
    if ((char *)(iStack_24 - (int)pvStack_28 >> 4) <= pcStack_30) goto joined_r0x00c9b37f;
    puVar3 = (undefined4 *)((int)pcStack_30 * 0x10 + (int)pvStack_28);
    *(undefined4 *)((int)this + 0xa8) = *puVar3;
    *(undefined4 *)((int)this + 0xac) = puVar3[1];
    *(undefined4 *)((int)this + 0xb0) = puVar3[2];
    *(undefined4 *)((int)this + 0xb4) = puVar3[3];
  }
  bVar1 = Stream_ReadUInt32(pvStack_10,&uStack_2c,uStack_8);
  StreamReader_AccumulateStatus(acStack_18,bVar1);
  *(uint *)((int)this + 0xb8) = uStack_2c;
  if (pvStack_28 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_28);
  }
  StreamReader_ReleaseAuxiliary(acStack_18);
  return true;
}

