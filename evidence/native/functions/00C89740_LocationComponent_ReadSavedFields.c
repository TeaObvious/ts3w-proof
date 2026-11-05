/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 saved Location reader. Physical ECX component, stack4 reader, stack8 descriptor;
   RET8, raw reader status byte in AL. Unsigned descriptor WORD+6 below10 returns1 before reads or
   component mutation. Admitted descriptor WORD+4 version0 reads64bits then clears component+8/+C;
   version1 reads no scalar payload; versions>=2 read rawDWORD flags+2C and fields+10/+14/+18/+24,
   with+28 additionally for version2 or>=4. Primitive results accumulate without rollback or early
   exit. After admitted path ORs flags2, and ORs10 when low-byte bit7 is clear. Complete existing
   Listing111instructions297bytes; exact owned range excludes neighboring tail/padding. Raw32 fields
   do not establish signedness, physical writer, parser/provider, or live placement equivalence. No
   original bytes, disassembly or child metadata changed. */

byte __thiscall LocationComponent_ReadSavedFields(void *this,void *reader,void *descriptor)

{
  ushort uVar1;
  bool bVar2;
  
  if (*(ushort *)((int)descriptor + 6) < 10) {
    return 1;
  }
  uVar1 = *(ushort *)((int)descriptor + 4);
  if (uVar1 == 0) {
    bVar2 = Stream_ReadUInt64(*(void **)((int)reader + 8),(ulonglong *)((int)this + 8),
                              *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar2);
    *(undefined4 *)((int)this + 8) = 0;
    *(undefined4 *)((int)this + 0xc) = 0;
  }
  else if (1 < uVar1) {
    bVar2 = Stream_ReadUInt32(*(void **)((int)reader + 8),(uint *)((int)this + 0x2c),
                              *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar2);
    bVar2 = Stream_ReadUInt32(*(void **)((int)reader + 8),(uint *)((int)this + 0x10),
                              *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar2);
    bVar2 = Stream_ReadUInt32(*(void **)((int)reader + 8),(uint *)((int)this + 0x14),
                              *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar2);
    bVar2 = Stream_ReadUInt32(*(void **)((int)reader + 8),(uint *)((int)this + 0x18),
                              *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar2);
    bVar2 = Stream_ReadUInt32(*(void **)((int)reader + 8),(uint *)((int)this + 0x24),
                              *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar2);
    if ((uVar1 == 2) || (3 < uVar1)) {
      bVar2 = Stream_ReadUInt32(*(void **)((int)reader + 8),(uint *)((int)this + 0x28),
                                *(uint *)((int)reader + 0x10));
      StreamReader_AccumulateStatus(reader,bVar2);
    }
  }
  *(uint *)((int)this + 0x2c) = *(uint *)((int)this + 0x2c) | 2;
  if (-1 < (char)*(uint *)((int)this + 0x2c)) {
    *(uint *)((int)this + 0x2c) = *(uint *)((int)this + 0x2c) | 0x10;
  }
  return *(byte *)((int)reader + 0x14);
}

