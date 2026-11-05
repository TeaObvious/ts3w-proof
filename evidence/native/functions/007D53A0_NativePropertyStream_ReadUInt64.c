/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX reader,name/output RET8. Original XOR
   EE28814F, seek then64-bit stream read under original byte-order mode. AL status, output is
   two32-bit words; inferred integer/pointer labels do not justify narrowing the original stored
   value. */

undefined1 __thiscall NativePropertyStream_ReadUInt64(void *this,undefined4 param_1,uint *param_2)

{
  void *this_00;
  bool readSucceeded;
  uint uVar1;
  
  uVar1 = NativePropertyStream_SeekEncodedEntry((int)this);
  if ((char)uVar1 != '\0') {
    this_00 = *(void **)((int)this + 8);
    readSucceeded =
         Stream_ReadUInt64(*(void **)((int)this_00 + 8),(ulonglong *)param_2,
                           *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,readSucceeded);
    return *(undefined1 *)(*(int *)((int)this + 8) + 0x14);
  }
  return 0;
}

