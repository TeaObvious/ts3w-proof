/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX stream context,one output pointer RET4. UInt32
   byte count read and accumulated in stream status+14; resize byte string then read exact raw bytes
   and AND status. Byte count is not UTF16 unit count. Allocation/invalid-count contracts remain
   child dependencies. */

void __thiscall StreamContext_ReadCountedByteString(void *this,undefined4 *param_1)

{
  byte *pbVar1;
  bool bVar2;
  void *local_4;
  
  local_4 = this;
  bVar2 = Stream_ReadUInt32(*(void **)((int)this + 8),(uint *)&local_4,*(uint *)((int)this + 0x10));
  pbVar1 = (byte *)((int)this + 0x14);
  *pbVar1 = *pbVar1 & bVar2;
  if (*pbVar1 != 0) {
    FUN_00409e00(param_1,(uint)local_4);
    bVar2 = Stream_ReadExactBytes(*(void **)((int)this + 8),(void *)*param_1,(uint)local_4);
    *(byte *)((int)this + 0x14) = *(byte *)((int)this + 0x14) & bVar2;
  }
  return;
}

