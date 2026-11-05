/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX record,1stack context/RET4. Reads four raw
   bytes+18..+1B, UInt16+1E and bytes+20/+21, accumulating status after each. No owner validity,
   duplicate, version or range predicate in this leaf. Current host interprets +20 as signed level;
   native selected removal tests its raw byte for equality. */

void __thiscall RugRecord_ReadCompactFields(void *this,void *param_1)

{
  bool bVar1;
  
  bVar1 = Stream_ReadByte(*(void **)((int)param_1 + 8),(byte *)((int)this + 0x18));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_ReadByte(*(void **)((int)param_1 + 8),(byte *)((int)this + 0x19));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_ReadByte(*(void **)((int)param_1 + 8),(byte *)((int)this + 0x1a));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_ReadByte(*(void **)((int)param_1 + 8),(byte *)((int)this + 0x1b));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_ReadUInt16(*(void **)((int)param_1 + 8),(ushort *)((int)this + 0x1e),
                            *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_ReadByte(*(void **)((int)param_1 + 8),(byte *)((int)this + 0x20));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_ReadByte(*(void **)((int)param_1 + 8),(byte *)((int)this + 0x21));
  StreamReader_AccumulateStatus(param_1,bVar1);
  return;
}

