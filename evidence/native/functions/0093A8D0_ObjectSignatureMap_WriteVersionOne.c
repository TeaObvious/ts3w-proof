/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst PC1.67 object signature-map instruction contract. Complete273-byte envelope; ECX resource
   owner plus one stream stackword,RET4, no meaningful return status. Constructs local stream
   context with endianword1. Writes UInt32 literal1, owner+48 key-type word, owner+34 map-count
   word, then each UInt64 instance and LOW32 value from node+8. Owner+2C bucket array,+30 bucket
   count; begin scans upward to first nonnull slot and end is sentinel at bucketArray[bucketCount].
   Node+10 is next; serialize chain order then increasing bucket slots until end. Generic map source
   at owner+28 matches existing reviewed U64PairMap layout. No sorted-by-instance requirement.
   Primitive result bytes accumulate in local status, but this body does not branch on final failure
   or return it; releases local auxiliary state. Valid bucket/sentinel/stream owners are caller
   preconditions. Whole matching resource reader, load precedence and growth/rehash order remain
   separate. */

void __thiscall ObjectSignatureMap_WriteVersionOne(void *this,void *stream)

{
  int *piVar1;
  int iVar2;
  undefined8 *puVar3;
  uint value;
  byte bVar4;
  int *piVar5;
  undefined8 *puVar6;
  undefined1 local_18 [8];
  int *local_10;
  uint local_8;
  
  StreamReader_Construct(local_18,stream,1);
  bVar4 = Stream_WriteUInt32(local_10,1,local_8);
  StreamReader_AccumulateStatus(local_18,bVar4);
  bVar4 = Stream_WriteUInt32(local_10,*(uint *)((int)this + 0x48),local_8);
  StreamReader_AccumulateStatus(local_18,bVar4);
  bVar4 = Stream_WriteUInt32(local_10,*(uint *)((int)this + 0x34),local_8);
  StreamReader_AccumulateStatus(local_18,bVar4);
  piVar5 = *(int **)((int)this + 0x2c);
  puVar6 = (undefined8 *)*piVar5;
  if (puVar6 == (undefined8 *)0x0) {
    piVar5 = piVar5 + 1;
    iVar2 = *piVar5;
    while (iVar2 == 0) {
      piVar5 = piVar5 + 1;
      iVar2 = *piVar5;
    }
    puVar6 = (undefined8 *)*piVar5;
  }
  puVar3 = *(undefined8 **)(*(int *)((int)this + 0x2c) + *(int *)((int)this + 0x30) * 4);
  while (puVar6 != puVar3) {
    value = *(uint *)(puVar6 + 1);
    bVar4 = FUN_004de0c0(local_10,*puVar6,local_8);
    StreamReader_AccumulateStatus(local_18,bVar4);
    bVar4 = Stream_WriteUInt32(local_10,value,local_8);
    StreamReader_AccumulateStatus(local_18,bVar4);
    puVar6 = *(undefined8 **)(puVar6 + 2);
    while (puVar6 == (undefined8 *)0x0) {
      piVar1 = piVar5 + 1;
      piVar5 = piVar5 + 1;
      puVar6 = (undefined8 *)*piVar1;
    }
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return;
}

