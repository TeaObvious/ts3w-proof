/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned name. Physical thiscall ECX product plus
   reader-pointer stackword, RET4, final AL accumulated local status. Reads partition-layout UInt32
   version, calls C93100 common product, then rawUInt32 fields88 wallType,8C partition,90 flags,94
   span,98 blocked,9C adjacentBlocked,A0 toolMode,A4 toolUsage. If partition version unsigned<2, OR
   flags90 withE000; this is independent of outer CWST resource version. No enum checks, clamping,
   finite-price policy or inferred bool width. Current s3pi WallCatalogResource unknown2 is this
   partition version but wrapper exposes authored flags without this legacy OR. */

bool __thiscall PartitionProduct_ReadFields(void *this,void *reader)

{
  uint *outUInt32;
  void *reader_00;
  bool bVar1;
  uint local_1c;
  undefined1 local_18 [8];
  void *local_10;
  uint local_8;
  undefined1 local_4;
  
  reader_00 = reader;
  StreamReader_Construct(local_18,reader,1);
  bVar1 = Stream_ReadUInt32(local_10,&local_1c,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  CatalogProduct_ReadCommonFields(this,reader_00);
  bVar1 = Stream_ReadUInt32(local_10,(uint *)&reader,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  *(void **)((int)this + 0x88) = reader;
  bVar1 = Stream_ReadUInt32(local_10,(uint *)&reader,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  outUInt32 = (uint *)((int)this + 0x90);
  *(void **)((int)this + 0x8c) = reader;
  bVar1 = Stream_ReadUInt32(local_10,outUInt32,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  if (local_1c < 2) {
    *outUInt32 = *outUInt32 | 0xe000;
  }
  bVar1 = Stream_ReadUInt32(local_10,(uint *)&reader,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  *(void **)((int)this + 0x94) = reader;
  bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0x98),local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0x9c),local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  bVar1 = Stream_ReadUInt32(local_10,(uint *)&reader,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  *(void **)((int)this + 0xa0) = reader;
  bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0xa4),local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  StreamReader_ReleaseAuxiliary(local_18);
  return (bool)local_4;
}

