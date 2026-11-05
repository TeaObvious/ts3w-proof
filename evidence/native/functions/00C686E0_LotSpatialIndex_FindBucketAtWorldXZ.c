/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: lazily rebuilds dirty lot buckets, subtracts index world-X/Z origins at +0xb4/+0xb8,
   divides by the stored spacing at +0x1d0, converts with x87 FISTP after setting control-word
   rounding bits 0x0c00 (truncate toward zero), packs Z in the high 16 bits and X in the low word,
   and looks up the bucket. Returns the bucket payload pointer or null in EAX. The decompiler's
   ROUND and float reuse obscure the x87 control-word and integer packing; see
   0x00c68709..0x00c68770. */

int __thiscall LotSpatialIndex_FindBucketAtWorldXZ(void *this,float param_1,float param_2)

{
  float fVar1;
  uint uVar2;
  longlong local_8;
  
  if (*(char *)((int)this + 0x1cc) != '\0') {
    LotSpatialIndex_RebuildBuckets((int)this);
  }
  fVar1 = 1.0 / *(float *)((int)this + 0x1d0);
  local_8._0_4_ = (uint)(longlong)ROUND((param_2 - *(float *)((int)this + 0xb8)) * fVar1);
  uVar2 = (uint)local_8 << 0x10;
  local_8 = (longlong)ROUND((param_1 - *(float *)((int)this + 0xb4)) * fVar1);
  param_2 = (float)(uVar2 | (uint)local_8);
  FUN_004b0f80((void *)((int)this + 0x1d4),(undefined4 *)&local_8,(uint *)&param_2);
  if ((uint)local_8 != *(int *)(*(int *)((int)this + 0x1d8) + *(int *)((int)this + 0x1dc) * 4)) {
    return (uint)local_8 + 4;
  }
  return 0;
}

