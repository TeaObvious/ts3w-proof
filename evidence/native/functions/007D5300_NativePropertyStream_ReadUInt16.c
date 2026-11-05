/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX reader,name/output RET8. Original XOR F328896C
   at entry, seek encoded field, read16-bit output and accumulate stream status; AL success only,
   missing leaves caller output policy to caller. Current UInt16 nullable value is an API
   projection. */

undefined1 __thiscall NativePropertyStream_ReadUInt16(void *this,undefined4 param_1,ushort *param_2)

{
  void *this_00;
  bool readSucceeded;
  uint uVar1;
  
  uVar1 = NativePropertyStream_SeekEncodedEntry((int)this);
  if ((char)uVar1 != '\0') {
    this_00 = *(void **)((int)this + 8);
    readSucceeded =
         Stream_ReadUInt16(*(void **)((int)this_00 + 8),param_2,*(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,readSucceeded);
    return *(undefined1 *)(*(int *)((int)this + 8) + 0x14);
  }
  return 0;
}

