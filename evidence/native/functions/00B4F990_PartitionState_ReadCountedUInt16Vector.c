/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 exact existing123B/48I. Two stack DWORD inputs, RET8, no incoming ECX receiver used; void
   result, stream context is first stack arg and vector second. Reads UInt32 count, accumulates
   reader status, only resizes/reads vector if context+14 status remains nonzero. Each element is
   read by UInt16 helper and stored with16bit MOV at base+2*unsignedIndex; unsigned loop bound.
   Existing saved and bundle PartitionManager readers call exactly twice for partition format>=7. No
   native input byte-count/EOF limit is introduced by this body; host span bounds are a separate
   safe admission policy. Do not infer a C++ generic vector ABI or change original bytes. */

void PartitionState_ReadCountedUInt16Vector(void *param_1,int *param_2)

{
  void *this;
  int *piVar1;
  bool bVar2;
  uint uVar3;
  uint local_4;
  
  this = param_1;
  bVar2 = Stream_ReadUInt32(*(void **)((int)param_1 + 8),&local_4,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(this,bVar2);
  piVar1 = param_2;
  if (*(char *)((int)this + 0x14) != '\0') {
    UInt16Vector_ResizeZeroed(param_2,local_4);
    uVar3 = 0;
    if (local_4 != 0) {
      do {
        bVar2 = Stream_ReadUInt16(*(void **)((int)this + 8),(ushort *)&param_1,
                                  *(uint *)((int)this + 0x10));
        StreamReader_AccumulateStatus(this,bVar2);
        *(undefined2 *)(*piVar1 + uVar3 * 2) = param_1._0_2_;
        uVar3 = uVar3 + 1;
      } while (uVar3 < local_4);
    }
  }
  return;
}

