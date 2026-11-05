/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX reader,three words RET0C. XOR5149A9DF; same
   stored-count/query/min-capacity protocol as UInt32 array, raw32-bit words read without numeric
   unsigned-to-signed conversion. Native output pointer/status protocol is distinct from allocating
   nullable managed int[]. */

undefined1 __thiscall
NativePropertyStream_ReadInt32Array(void *this,undefined4 param_1,uint *param_2,uint *param_3)

{
  void *this_00;
  bool readSucceeded;
  uint uVar1;
  undefined4 uVar2;
  
  uVar1 = NativePropertyStream_SeekEncodedEntry((int)this);
  if ((char)uVar1 == '\0') {
    return 0;
  }
  this_00 = *(void **)((int)this + 8);
  uVar1 = *param_3;
  readSucceeded =
       Stream_ReadUInt32(*(void **)((int)this_00 + 8),param_3,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,readSucceeded);
  if (param_2 == (uint *)0x0) {
    return 1;
  }
  if (uVar1 < *param_3) {
    *param_3 = uVar1;
  }
  uVar2 = Stream_ReadUInt32ArrayByByteOrder
                    (*(int **)((int)this_00 + 8),param_2,*param_3,*(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,(byte)uVar2);
  return *(undefined1 *)((int)this_00 + 0x14);
}

