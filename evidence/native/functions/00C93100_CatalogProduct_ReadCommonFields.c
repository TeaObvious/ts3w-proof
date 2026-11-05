/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Analyst-assigned name. ECX product,
   one reader stack argument RET4, returns AL1 after common reads. Common version gates
   hashes/strings/icon/status and other presentation fields. Raw32-bit price bits are read at+58
   with no finite/nonnegative validation here. Status byte+64: versions<5 add10 whenbit2 set,
   otherwise20. Hash defaults are FNV64 offset basis; version>=A reads hashes before text;
   versions4..9 read hashes later. Reader/helper decompiler types are inferred; field widths and
   version branches are instruction checked. */

bool __thiscall CatalogProduct_ReadCommonFields(void *this,void *reader)

{
  byte *outByte;
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  void *stream;
  byte bVar5;
  uint local_14;
  undefined1 *local_10;
  undefined1 *local_c;
  undefined2 *local_8;
  char *local_4;
  
  stream = reader;
  Stream_ReadUInt32(reader,&local_14,1);
  *(undefined4 *)((int)this + 0x28) = 0x84222325;
  *(undefined4 *)((int)this + 0x2c) = 0xcbf29ce4;
  *(undefined4 *)((int)this + 0x30) = 0x84222325;
  *(undefined4 *)((int)this + 0x34) = 0xcbf29ce4;
  if (9 < local_14) {
    Stream_ReadUInt64(stream,(ulonglong *)((int)this + 0x28),1);
    Stream_ReadUInt64(stream,(ulonglong *)((int)this + 0x30),1);
  }
  CatalogWire_ReadWideString(stream,(int *)((int)this + 0x38));
  iVar1 = *(int *)((int)this + 0x3c);
  iVar2 = *(int *)((int)this + 0x38);
  CatalogWire_ReadWideString(stream,(int *)((int)this + 0x48));
  iVar3 = *(int *)((int)this + 0x4c);
  iVar4 = *(int *)((int)this + 0x48);
  Stream_ReadUInt32(stream,(uint *)((int)this + 0x58),1);
  Stream_ReadUInt32(stream,(uint *)((int)this + 0x5c),1);
  Stream_ReadUInt32(stream,(uint *)((int)this + 0x60),1);
  outByte = (byte *)((int)this + 100);
  Stream_ReadByte(stream,outByte);
  if (local_14 < 5) {
    bVar5 = *outByte;
    if ((bVar5 & 2) == 0) {
      bVar5 = bVar5 | 0x20;
    }
    else {
      bVar5 = bVar5 | 0x10;
    }
    *outByte = bVar5;
  }
  if (local_14 < 6) {
    local_4 = "World/CTProduct/Load/subSortStr";
    local_10 = &DAT_011c8e54;
    local_c = &DAT_011c8e54;
    local_8 = &DAT_011c8e56;
    CatalogWire_ReadWideString(stream,&local_10);
    if ((2 < (int)((int)local_8 - (int)local_10 & 0xfffffffeU)) && (local_10 != (undefined1 *)0x0))
    {
      Memory_FreeIfNonNull(local_10);
    }
  }
  if (local_14 < 9) {
    local_10 = (undefined1 *)0x0;
    local_c = (undefined1 *)0x0;
    local_8 = (undefined2 *)0x0;
    local_4 = (char *)0x0;
    Stream_ReadResourceKeyTGI(stream,&local_10,1);
    *(undefined1 **)((int)this + 0x68) = local_10;
    *(undefined1 **)((int)this + 0x6c) = local_c;
  }
  else {
    Stream_ReadUInt64(stream,(ulonglong *)((int)this + 0x68),1);
  }
  Stream_ReadByte(stream,(byte *)&reader);
  if (2 < local_14) {
    Stream_ReadUInt32(stream,(uint *)((int)this + 0x70),1);
  }
  if (6 < local_14) {
    Stream_ReadUInt32(stream,(uint *)((int)this + 0x78),1);
  }
  if (7 < local_14) {
    Stream_ReadBoolean(stream,(void *)((int)this + 0x84));
  }
  if (10 < local_14) {
    Stream_ReadBoolean(stream,(void *)((int)this + 0x85));
  }
  if (0xb < local_14) {
    Stream_ReadUInt32(stream,(uint *)((int)this + 0x7c),1);
  }
  if (local_14 - 4 < 6) {
    Stream_ReadUInt64(stream,(ulonglong *)((int)this + 0x28),1);
    Stream_ReadUInt64(stream,(ulonglong *)((int)this + 0x30),1);
  }
  *(undefined1 *)((int)this + 0x86) = 0;
  if (0xc < local_14) {
    Stream_ReadBoolean(stream,(undefined1 *)((int)this + 0x86));
  }
  *(undefined1 *)((int)this + 0x87) = 0;
  if (0xd < local_14) {
    Stream_ReadBoolean(stream,(undefined1 *)((int)this + 0x87));
  }
  if (0xe < local_14) {
    Stream_ReadUInt32(stream,(uint *)((int)this + 0x80),1);
  }
  *(undefined1 *)((int)this + 0x74) = 0;
  FUN_00731be0(this,(iVar1 - iVar2 >> 1) * 2 + 0x8c + (iVar3 - iVar4 >> 1) * 2);
  return true;
}

