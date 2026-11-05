/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 fence resource/renderer and resolved virtual contract): ECX design map; five
   physical slots RET14: resource-stream context, key-reference context, group32, instanceLow32,
   instanceHigh32. Clear retained triple-to-ID/refcount and ID-to-triple maps before opening089132E8
   with supplied group/instance. Read version word but no version comparison in this body, then
   count; for each read three context keys, UInt32ID,UInt32referenceCount. Insert into existing
   maps, copy48bytes per triple, then pass existing default triple at+40 to B14910 for retained-list
   registration; this does not update default triple storage. Close and return AL sticky status;
   missing open returns0. Current detached parser version==1/exact size/nonzero unique-ID rejection
   is additional project policy. No reset rollback on failure is established.
   
   Analyst note (PC1.67 fence default-triple consumption contract): Default triple consumer
   clarification: the original final call passes this+40 into B14910. B14910 reads that
   supplied48-byte triple and registers it in a list when its existing match helper finds no entry.
   It does not refresh or overwrite the supplied triple at+40. The reconstructed ID maps, stream ABI
   and AL sticky status remain as previously established. */

byte __thiscall
FenceDesignMap_ReadResource
          (void *this,void *streamContext,void *keyContext,uint group,uint instanceLow,
          uint instanceHigh)

{
  bool bVar1;
  uint *puVar2;
  undefined4 *puVar3;
  int iVar4;
  byte *pbVar5;
  uint local_60;
  uint local_5c;
  void *local_58;
  uint local_54;
  uint local_50;
  uint local_4c;
  uint local_48;
  uint local_44;
  undefined4 local_40;
  uint local_3c;
  byte local_38 [16];
  undefined4 local_28 [4];
  undefined4 local_18 [5];
  
  local_58 = this;
  FUN_00a66600(*(int *)((int)this + 4),*(uint *)((int)this + 8));
  *(undefined4 *)((int)this + 0xc) = 0;
  FUN_00a66600(*(int *)((int)this + 0x24),*(uint *)((int)this + 0x28));
  local_48 = instanceLow;
  *(undefined4 *)((int)this + 0x2c) = 0;
  local_44 = instanceHigh;
  local_40 = 0x89132e8;
  local_3c = group;
  bVar1 = ResourceStreamContext_OpenRead(streamContext,&local_48,0);
  if (bVar1) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)streamContext + 8),&local_54,
                              *(uint *)((int)streamContext + 0x10));
    StreamReader_AccumulateStatus(streamContext,bVar1);
    bVar1 = Stream_ReadUInt32(*(void **)((int)streamContext + 8),&local_5c,
                              *(uint *)((int)streamContext + 0x10));
    StreamReader_AccumulateStatus(streamContext,bVar1);
    FUN_00afbba0((undefined4 *)local_38);
    local_60 = 0;
    if (local_5c != 0) {
      do {
        ResourceReferences_ReadContextKey(keyContext,streamContext,(undefined4 *)local_38);
        ResourceReferences_ReadContextKey(keyContext,streamContext,local_28);
        ResourceReferences_ReadContextKey(keyContext,streamContext,local_18);
        bVar1 = Stream_ReadUInt32(*(void **)((int)streamContext + 8),&local_50,
                                  *(uint *)((int)streamContext + 0x10));
        StreamReader_AccumulateStatus(streamContext,bVar1);
        bVar1 = Stream_ReadUInt32(*(void **)((int)streamContext + 8),&local_4c,
                                  *(uint *)((int)streamContext + 0x10));
        StreamReader_AccumulateStatus(streamContext,bVar1);
        puVar2 = (uint *)FUN_00a67300(this,local_38);
        *puVar2 = local_50;
        puVar2[1] = local_4c;
        puVar3 = (undefined4 *)FUN_00a66f20((void *)((int)this + 0x20),&local_50);
        local_60 = local_60 + 1;
        pbVar5 = local_38;
        for (iVar4 = 0xc; iVar4 != 0; iVar4 = iVar4 + -1) {
          *puVar3 = *(undefined4 *)pbVar5;
          pbVar5 = pbVar5 + 4;
          puVar3 = puVar3 + 1;
        }
        this = local_58;
      } while (local_60 < local_5c);
    }
    FenceDesignMap_RegisterUniqueTriple(this,(uint *)((int)this + 0x40));
    ResourceStreamContext_Close(streamContext);
    return *(byte *)((int)streamContext + 0x14);
  }
  return 0;
}

