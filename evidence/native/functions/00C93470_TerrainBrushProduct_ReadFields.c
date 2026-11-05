/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role. Physical ECX product receiver and
   one opaque reader pointer, RET4; AL accumulated reader status. If byte+88==0 consumes a UInt32
   brush version into a local; does not store it in product state. Calls C93100 common reader. Reads
   UInt32 normal/opposite operations into+90/+94; full16-byte profile key into+98; UInt32
   orientation into+A8; raw32 words into+AC/+B0; EXACT one byte baseTextureValue into+B4; raw32
   wiggle into+B8. Width/strength/wiggle binary32 interpretation is schema/consumer evidence, not
   inferred from decompiler integer locals. No clamp or normalization occurs. Captures status
   atC935E5 and returnsAL atC935F4. No maximum version check; byte+88 controls whether the leading
   brush-version word is read. Outer CTPT reader consumes its own version before invoking this
   reader. */

undefined1 __thiscall TerrainBrushProduct_ReadFields(void *this,void *reader)

{
  void *reader_00;
  bool bVar1;
  uint local_1c;
  undefined1 local_18 [8];
  void *local_10;
  uint local_8;
  undefined1 local_4;
  
  reader_00 = reader;
  StreamReader_Construct(local_18,reader,1);
  if (*(char *)((int)this + 0x88) == '\0') {
    bVar1 = Stream_ReadUInt32(local_10,&local_1c,local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
  }
  CatalogProduct_ReadCommonFields(this,reader_00);
  bVar1 = Stream_ReadUInt32(local_10,(uint *)&reader,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  *(void **)((int)this + 0x90) = reader;
  bVar1 = Stream_ReadUInt32(local_10,(uint *)&reader,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  *(void **)((int)this + 0x94) = reader;
  bVar1 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0x98),local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  bVar1 = Stream_ReadUInt32(local_10,(uint *)&reader,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  *(void **)((int)this + 0xa8) = reader;
  bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0xac),local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0xb0),local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  bVar1 = Stream_ReadByte(local_10,(byte *)((int)this + 0xb4));
  StreamReader_AccumulateStatus(local_18,bVar1);
  bVar1 = Stream_ReadUInt32(local_10,(uint *)((int)this + 0xb8),local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  StreamReader_ReleaseAuxiliary(local_18);
  return local_4;
}

