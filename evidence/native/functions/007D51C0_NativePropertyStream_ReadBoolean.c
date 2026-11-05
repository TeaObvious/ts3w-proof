/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX reader,name/output RET8. Original XOR68FE5F59;
   seek then original Boolean stream helper and accumulate status. Input property key, returnedAL
   status and output Boolean storage are separate values. Current missing=>nullable and
   any-nonzero-byte interpretation are explicit project API policy. */

uint __fastcall NativePropertyStream_ReadBoolean(int param_1)

{
  void *this;
  bool readSucceeded;
  uint uVar1;
  void *in_stack_00000008;
  
  uVar1 = NativePropertyStream_SeekEncodedEntry(param_1);
  if ((char)uVar1 != '\0') {
    this = *(void **)(param_1 + 8);
    readSucceeded = Stream_ReadBoolean(*(void **)((int)this + 8),in_stack_00000008);
    StreamReader_AccumulateStatus(this,readSucceeded);
    return CONCAT31((int3)((uint)*(int *)(param_1 + 8) >> 8),
                    *(undefined1 *)(*(int *)(param_1 + 8) + 0x14));
  }
  return uVar1 & 0xffffff00;
}

