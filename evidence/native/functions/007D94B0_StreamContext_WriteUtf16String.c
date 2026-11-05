/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX stream context, one pointer RET4. u32
   count=(end-begin)>>1, then UTF16 units without terminator through004DDEA0 only if accumulated
   status+14 stays nonzero. Stored host byte order comes from stream mode. This is not .NET string
   scalar-count or transactional writing. */

void __thiscall StreamContext_WriteUtf16String(void *this,undefined4 *param_1)

{
  byte *pbVar1;
  ushort *puVar2;
  byte bVar3;
  undefined4 uVar4;
  uint value;
  
  puVar2 = (ushort *)*param_1;
  value = param_1[1] - (int)puVar2 >> 1;
  bVar3 = Stream_WriteUInt32(*(void **)((int)this + 8),value,*(uint *)((int)this + 0x10));
  pbVar1 = (byte *)((int)this + 0x14);
  *pbVar1 = *pbVar1 & bVar3;
  if (*pbVar1 != 0) {
    uVar4 = FUN_004ddea0(*(int **)((int)this + 8),puVar2,value,*(uint *)((int)this + 0x10));
    *(byte *)((int)this + 0x14) = *(byte *)((int)this + 0x14) & (byte)uVar4;
  }
  return;
}

