/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX component; writer/context two words, RET8, AL
   writer sticky status+14. Narrow resource handle, variationDWORD, UInt32 primitivecount;
   each0x50-byte live primitive becomes matrix16float plus scaleDWORD,0x44wirebytes. No
   groundnormal/worldAABB/variationfloat serialized per primitive; readers reconstruct those. */

undefined1 __thiscall TreeComponent_WriteBinaryPrimitives(void *this,void *param_1,int param_2)

{
  void *pvVar1;
  byte bVar2;
  uint uVar3;
  uint *puVar4;
  void *this_00;
  undefined4 local_50 [19];
  
  uVar3 = ResourceReferences_RegisterKey(*(void **)(param_2 + 0x10),(uint *)((int)this + 0x10),0);
  bVar2 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar3,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),*(uint *)((int)this + 0x20),
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  bVar2 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),
                             (*(int *)(*(int *)((int)this + 8) + 0xc) -
                             *(int *)(*(int *)((int)this + 8) + 8)) / 0x50,
                             *(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar2);
  pvVar1 = *(void **)(*(int *)((int)this + 8) + 0xc);
  for (this_00 = *(void **)(*(int *)((int)this + 8) + 8); this_00 != pvVar1;
      this_00 = (void *)((int)this_00 + 0x50)) {
    puVar4 = (uint *)TreePrimitive_WriteYawMatrix(this_00,local_50);
    FUN_007d7bf0(param_1,puVar4);
    bVar2 = FUN_004de390(*(int **)((int)param_1 + 8),*(undefined4 *)((int)this_00 + 0x48),
                         *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar2);
  }
  return *(undefined1 *)((int)param_1 + 0x14);
}

