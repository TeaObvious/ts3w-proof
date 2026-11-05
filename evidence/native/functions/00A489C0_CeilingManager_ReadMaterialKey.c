/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 physical ECXceiling manager plus5stackDWORDs(stream context,key context,instance
   low/high,group) RET14hex, ALsticky-stream-status. Opens type048A166D with supplied
   identity/mode0. UInt32 version comparesUNSIGNED<2:0/1 read inline16byte TGI via7D7760; ANY>=2
   uses supplied resource context7D7470. No exactresourceEOF/length20or6 check. Contextflag82
   independently selects handlewidth. Catalogbank3 lookup/default substitution runs AFTER reading
   ownerkey20; missingresource resetsstreamstatus1 and leaves existing owner key. Host raw decoder
   is only wire/key input, not complete bank/default behavior. Version stackword/local aliases in
   actual C are not a sixth independent input. */

bool __thiscall
CeilingManager_ReadMaterialKey
          (void *this,undefined *streamContext,undefined *keyContext,uint instanceLow,
          uint instanceHigh,uint groupId)

{
  bool bVar1;
  void *pvVar2;
  int iVar3;
  undefined4 *outKey;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  uint local_4;
  
  local_10 = instanceLow;
  local_c = instanceHigh;
  local_8 = 0x48a166d;
  local_4 = groupId;
  bVar1 = ResourceStreamContext_OpenWrite(streamContext,&local_10,0);
  if (bVar1) {
    bVar1 = Stream_ReadUInt32(*(void **)(streamContext + 8),&groupId,*(uint *)(streamContext + 0x10)
                             );
    StreamReader_AccumulateStatus(streamContext,bVar1);
    outKey = (undefined4 *)((int)this + 0x20);
    if (groupId < 2) {
      bVar1 = Stream_ReadResourceKeyTGI
                        (*(void **)(streamContext + 8),outKey,*(uint *)(streamContext + 0x10));
      StreamReader_AccumulateStatus(streamContext,bVar1);
    }
    else {
      ResourceReferences_ReadContextKey(keyContext,streamContext,outKey);
    }
    pvVar2 = PatternCatalog_LookupBankProduct(DAT_011ee034,3,outKey,'\x01');
    if (pvVar2 == (void *)0x0) {
      iVar3 = FUN_00c8b370(DAT_011ee034,3);
      if (iVar3 != 0) {
        *outKey = *(undefined4 *)(iVar3 + 8);
        *(undefined4 *)((int)this + 0x24) = *(undefined4 *)(iVar3 + 0xc);
        *(undefined4 *)((int)this + 0x28) = *(undefined4 *)(iVar3 + 0x10);
        *(undefined4 *)((int)this + 0x2c) = *(undefined4 *)(iVar3 + 0x14);
      }
    }
    ResourceStreamContext_Close(streamContext);
    return (bool)streamContext[0x14];
  }
  streamContext[0x14] = 1;
  return (bool)streamContext[0x14];
}

