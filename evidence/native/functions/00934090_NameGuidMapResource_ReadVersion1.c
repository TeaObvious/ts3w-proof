/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX resource, RET4 stream, AL Boolean. Construct reader
   endianFlag1; readUInt32 version require1, countUInt32, validate unsigned count*16 available bytes
   before clearing map+28. Loop uses SIGNED JLE/JL count comparisons; each row reads UInt64 nameHash
   then GUID and inserts unique. Reader status accumulates read failures but final admitted path
   unconditionally returns true; no final row-status check or exactEOF check here. Failed
   initial/version/count/bounds returns false before clear. No1M-row cap in this body.
   Memory-accounting update=(uniqueCount+3)*24. */

bool __thiscall NameGuidMapResource_ReadVersion1(void *this,void *stream)

{
  bool bVar1;
  int iVar2;
  uint local_4c;
  uint local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined1 local_34 [12];
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined1 local_18 [8];
  void *local_10;
  uint local_8;
  char local_4;
  
  StreamReader_Construct(local_18,stream,1);
  bVar1 = Stream_ReadUInt32(local_10,&local_4c,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  if ((local_4 != '\0') && (local_4c == 1)) {
                    /* The incoming stream parameter's stack slot is reused for UInt32 row count.
                       Decompiled casts of stream to count reflect stack-slot reuse, not pointer
                       arithmetic or stream replacement. */
    bVar1 = Stream_ReadUInt32(local_10,(uint *)&stream,local_8);
    StreamReader_AccumulateStatus(local_18,bVar1);
    if ((local_4 != '\0') &&
       (bVar1 = StreamReader_CheckArrayBytes(local_18,(uint)stream,0x10), bVar1)) {
      FUN_0059d710((int)this + 0x28);
      iVar2 = 0;
                    /* Original signed JLE: count with high bit set does not enter row loop after
                       separate unsigned product/stream bound check. */
      if (0 < (int)stream) {
        do {
          bVar1 = Stream_ReadUInt64(local_10,(ulonglong *)&local_44,local_8);
          StreamReader_AccumulateStatus(local_18,bVar1);
          bVar1 = Stream_ReadUInt64(local_10,(ulonglong *)&local_3c,local_8);
          StreamReader_AccumulateStatus(local_18,bVar1);
          local_24 = local_40;
          local_28 = local_44;
          local_48 = local_48 & 0xffffff00;
          local_20 = local_3c;
          local_1c = local_38;
          U64PairMap_InsertUnique((void *)((int)this + 0x28),local_34,&local_28,local_48);
          iVar2 = iVar2 + 1;
        } while (iVar2 < (int)stream);
      }
      FUN_00731be0(this,(*(int *)((int)this + 0x34) + 3) * 0x18);
      StreamReader_ReleaseAuxiliary(local_18);
                    /* Original MOV AL,1 after reader destructor; no final status-byte check. Read
                       failures accumulated in row loop do not choose false branch here. */
      return true;
    }
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return false;
}

