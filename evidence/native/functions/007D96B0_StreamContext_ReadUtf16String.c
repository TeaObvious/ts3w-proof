/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX stream context, one output string pointer
   RET4. Read u32 unit count, AND stream status+14, resize via0040C640, read ushort units
   through004DD920 and accumulate status. No claim of .NET checked-int conversion or permissive
   short ReadBytes replacement behavior. Allocation/invalid-count limits are child contracts. */

void __thiscall StreamContext_ReadUtf16String(void *this,undefined4 *param_1)

{
  byte *pbVar1;
  bool bVar2;
  uint uVar3;
  void *local_4;
  
  local_4 = this;
  bVar2 = Stream_ReadUInt32(*(void **)((int)this + 8),(uint *)&local_4,*(uint *)((int)this + 0x10));
  pbVar1 = (byte *)((int)this + 0x14);
  *pbVar1 = *pbVar1 & bVar2;
  if (*pbVar1 != 0) {
    FUN_0040c640(param_1,(uint)local_4);
    uVar3 = Stream_ReadUtf16UnitsEndian
                      (*(int **)((int)this + 8),(ushort *)*param_1,(uint)local_4,
                       *(uint *)((int)this + 0x10));
    *(byte *)((int)this + 0x14) = *(byte *)((int)this + 0x14) & (byte)uVar3;
  }
  return;
}

