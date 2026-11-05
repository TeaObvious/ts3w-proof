/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECXgrid+context/group/GUID64 fourDWORDslots RET10hex, lowALcontextstatus. Opens B125533A
   keyed resource only when context+4 has no stream. Consumes version DWORD WITHOUT comparing; reads
   raw width/depth/levels DWORDs. Physical virtual8 atC6DA31 is ECXgrid+ONE element-count word,
   callee cleans4; local override closes prior stack drift/unaff_ESI artifact. Low32 product of
   three dimensions selects allocation count, then stores raw width+4/depth+8/levels+C. No
   comparison with enclosing lot dimensions and no EOF read. Failing accumulated context closes
   stream; caller owns body ingest and owner failure. Keep unsupported allocation/overflow behavior
   distinct from portable guards.
   
   Flags-layer reader callerA98CD0 establishes same shared header contract: consume UInt32 version
   WITHOUT value test, raw width/depth/levels independent of lotdescriptor; low32dimensionproduct
   drives allocation, caller thenreads exactbytecount. No equality to LDES, no rejectv!=1, no
   exactEOF. Native wrap/unsafeallocation is separate from portable nonnegativeInt32 and
   representable elementcount profile; zero product is not forbidden by this header. Existing local
   virtualcall override remains needed for correct one-wordresize ABI. */

bool __thiscall LotGrid_ReadHeaderResource(void *this,undefined *context,uint group,ulonglong lotId)

{
  undefined *this_00;
  undefined *puVar1;
  uint uVar2;
  int iVar3;
  bool bVar4;
  uint local_14;
  ulonglong local_10;
  undefined4 local_8;
  uint local_4;
  
  this_00 = context;
  local_8 = 0xb125533a;
  local_4 = group;
  local_10 = lotId;
  if (*(int *)(context + 4) == 0) {
    bVar4 = ResourceStreamContext_OpenWrite(context,&local_10,0);
    if (!bVar4) goto LAB_00c6da4f;
  }
  bVar4 = Stream_ReadUInt32(*(void **)(this_00 + 8),&local_14,*(uint *)(this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar4);
  bVar4 = Stream_ReadUInt32(*(void **)(this_00 + 8),&group,*(uint *)(this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar4);
  bVar4 = Stream_ReadUInt32(*(void **)(this_00 + 8),(uint *)&lotId,*(uint *)(this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar4);
  bVar4 = Stream_ReadUInt32(*(void **)(this_00 + 8),(uint *)&context,*(uint *)(this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar4);
  uVar2 = group;
  puVar1 = context;
  iVar3 = (int)lotId;
  (**(code **)(*(int *)this + 8))(this,(int)context * (int)lotId * group);
  *(int *)((int)this + 8) = iVar3;
  *(undefined **)((int)this + 0xc) = puVar1;
  *(uint *)((int)this + 4) = uVar2;
  if (this_00[0x14] == '\0') {
    ResourceStreamContext_Close(this_00);
  }
LAB_00c6da4f:
  return (bool)this_00[0x14];
}

