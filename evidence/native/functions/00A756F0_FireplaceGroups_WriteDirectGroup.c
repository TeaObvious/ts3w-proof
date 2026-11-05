/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 stdcall callback two stackwords RET8, no this use. Writes groupID32, count byte (truncated
   from vector size), then full vector of uint64 through4DE100. No object liveness or nonempty gate
   in this callback; those are distinct higher-level/host decisions. */

void FireplaceGroups_WriteDirectGroup(undefined *group,undefined *context)

{
  byte bVar1;
  bool readSucceeded;
  uint count;
  
  bVar1 = Stream_WriteUInt32(*(void **)(context + 8),*(uint *)group,*(uint *)(context + 0x10));
  StreamReader_AccumulateStatus(context,bVar1);
  count = *(int *)(group + 8) - *(int *)(group + 4) >> 3;
  bVar1 = Stream_WriteByte(*(undefined **)(context + 8),(byte)count);
  StreamReader_AccumulateStatus(context,bVar1);
  readSucceeded =
       Stream_WriteUInt64ArrayByByteOrder
                 (*(undefined **)(context + 8),*(undefined **)(group + 4),count,
                  *(uint *)(context + 0x10));
  StreamReader_AccumulateStatus(context,readSucceeded);
  return;
}

