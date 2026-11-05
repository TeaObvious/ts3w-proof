/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX key vector,one stream-context word RET4. Read
   UInt32 count/status, check count*16 bytes through the original StreamReader_CheckArrayBytes
   child, resize vector then per-key00568510. That child reaches007D7760 T/G/instance-low/high
   stream order, storing native instance at+0/+4 and type/group at+8/+C. Current exact managed table
   length/UInt16 count cap are additional admission policy.
   
   PC1.67 original static instructions. OBJKreference closure: UInt32count, native
   remaining-byte/count*16 guard then resize/read eachkey through568510. Shared managed
   ResourceKeyVectorReader UInt16cap is a different consumer policy and is not applied to new
   membership-only keycount validation. */

undefined1 __thiscall StreamContext_ReadResourceKeyVector(void *this,void *param_1)

{
  byte *pbVar1;
  bool bVar2;
  int iVar3;
  uint uVar4;
  uint local_4;
  
  iVar3 = 0;
  local_4 = 0;
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_4,*(uint *)((int)param_1 + 0x10));
  pbVar1 = (byte *)((int)param_1 + 0x14);
  *pbVar1 = *pbVar1 & bVar2;
  if (*pbVar1 != 0) {
    bVar2 = StreamReader_CheckArrayBytes(param_1,local_4,0x10);
    if (bVar2) {
      FUN_007998a0(this,local_4);
      uVar4 = 0;
      if (local_4 != 0) {
        do {
          StreamContext_ReadResourceKey(param_1,(uint *)(*(int *)this + iVar3));
          uVar4 = uVar4 + 1;
          iVar3 = iVar3 + 0x10;
        } while (uVar4 < local_4);
      }
      return *(undefined1 *)((int)param_1 + 0x14);
    }
  }
  return 0;
}

