/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physical thiscall same5stackDWORDidentity/context inputs RET14hex, ALstreamstatus ONLY.
   Open048A166D mode1; writesUInt32version2, calls key registration7D7460(tailJMP7D7070) with
   ownerkey20/localflag0, MOVZX AX then writesUInt16handle, closescontext. Does not emit a local
   standalone keytable. Reader distinguishes inlineversions<2 andcontextversions>=2; do not impose
   exactEOF merely because this producer emits a6byte narrow prefix. Actual writer alwaysnarrowsAX
   here even though contextreader supportswideflag82; wideconfiguration emission compatibility is
   not inferred as roundtripproof. */

bool __thiscall
CeilingManager_WriteMaterialKey
          (void *this,undefined *streamContext,undefined *keyContext,uint instanceLow,
          uint instanceHigh,uint groupId)

{
  bool bVar1;
  byte bVar2;
  uint uVar3;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  uint local_4;
  
  local_10 = instanceLow;
  local_c = instanceHigh;
  local_8 = 0x48a166d;
  local_4 = groupId;
  bVar1 = ResourceStreamContext_OpenWrite(streamContext,&local_10,1);
  if (bVar1) {
    bVar2 = Stream_WriteUInt32(*(void **)(streamContext + 8),2,*(uint *)(streamContext + 0x10));
    StreamReader_AccumulateStatus(streamContext,bVar2);
    uVar3 = ResourceReferences_RegisterKey(keyContext,(uint *)((int)this + 0x20),0);
    bVar2 = Stream_WriteUInt16(*(void **)(streamContext + 8),(ushort)uVar3,
                               *(uint *)(streamContext + 0x10));
    StreamReader_AccumulateStatus(streamContext,bVar2);
    ResourceStreamContext_Close(streamContext);
  }
  return (bool)streamContext[0x14];
}

