/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst-assigned role. Physical ECX product receiver and
   one opaque reader pointer, RET4; AL outer-reader accumulated status. Reads UInt32 outer version,
   calls base C93470 and does not test its AL directly. Then reads full16-byte brush key to+C0.
   Unsigned CMP version3/JB atC9AF06: version<3 writes terrain+D0=0, version>=3 consumes UInt32
   terrain. Unsigned CMP version4/JB atC9AF40: version>=4 consumes UInt32 category+D4, earlier
   retains constructor zero. Thus version3 DOES contain terrain, unlike the current wrapper/index
   treatment that groups both fields at version4. Captures outer status atC9AF76 and returnsAL
   atC9AF85. No enum/range/finite check appears; base-reader returned status is not directly
   combined by this body. Distinguish outer stream status from inferred shared-reader behavior. */

undefined1 __thiscall TerrainPaintProduct_ReadCatalog(void *this,void *reader)

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
  bVar1 = Stream_ReadUInt32(local_10,(uint *)&reader,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  TerrainBrushProduct_ReadFields(this,reader_00);
  bVar1 = Stream_ReadResourceKeyTGI(local_10,(void *)((int)this + 0xc0),local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  if (reader < (void *)0x3) {
    *(undefined4 *)((int)this + 0xd0) = 0;
  }
  else {
    bVar1 = Stream_ReadUInt32(local_10,&local_1c,local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    *(uint *)((int)this + 0xd0) = local_1c;
  }
  if ((void *)0x3 < reader) {
    local_1c = 0;
    bVar1 = Stream_ReadUInt32(local_10,&local_1c,local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    *(uint *)((int)this + 0xd4) = local_1c;
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return local_4;
}

