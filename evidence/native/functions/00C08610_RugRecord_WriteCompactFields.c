/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static instructions. ECX record,1stack context/RET4. Writes bytes+18/+19/+1A/+1B,
   UInt16layer+1E using context endian, byte+20, byte+21, accumulating every primitive status.
   Insertion serial+1C is NOT serialized. Owner GUID is written by C08B90 before these eight bytes.
    */

void __thiscall RugRecord_WriteCompactFields(void *this,void *param_1)

{
  byte bVar1;
  
  bVar1 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),*(byte *)((int)this + 0x18));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),*(byte *)((int)this + 0x19));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),*(byte *)((int)this + 0x1a));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),*(byte *)((int)this + 0x1b));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),*(ushort *)((int)this + 0x1e),
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),*(byte *)((int)this + 0x20));
  StreamReader_AccumulateStatus(param_1,bVar1);
  bVar1 = Stream_WriteByte(*(undefined **)((int)param_1 + 8),*(byte *)((int)this + 0x21));
  StreamReader_AccumulateStatus(param_1,bVar1);
  return;
}

