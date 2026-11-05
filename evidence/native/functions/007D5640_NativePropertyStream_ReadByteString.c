/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX reader,name/output stack words. Encoded native
   string type differs from managed15196597. Seek through007D5160 then007D9660 reads a UInt32 byte
   count and raw bytes. This is not managed version1 UTF8 BinaryReader string or version2 UTF16-unit
   text. Current Encoding.ASCII replacement of high bytes is a project projection, not proven native
   text decoding. */

undefined1 __thiscall
NativePropertyStream_ReadByteString(void *this,undefined4 param_1,undefined4 *param_2)

{
  uint uVar1;
  
  uVar1 = NativePropertyStream_SeekEncodedEntry((int)this);
  if ((char)uVar1 != '\0') {
    StreamContext_ReadCountedByteString(*(void **)((int)this + 8),param_2);
    return *(undefined1 *)(*(int *)((int)this + 8) + 0x14);
  }
  return 0;
}

