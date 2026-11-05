/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=map storage, pointer to allocation-name pointer RET4,
   returns SAME this in EAX. bucketCount8=1,buckets4=114D900 static empty bucket; nodeCountC=0; load
   factor10=float1,growth14=float2,threshold18=0; allocation label dereferenced at1C. First bucket
   is borrowed static storage; no allocation here. word0 not initialized in this body. */

void * __thiscall PickCandidateMap_Construct(void *this,void **allocationNamePointer)

{
  float fVar1;
  
  fVar1 = FLOAT_00f998f8;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(float *)((int)this + 0x10) = fVar1;
  *(undefined4 *)((int)this + 0x14) = DAT_0103fd88;
  *(undefined4 *)((int)this + 0x18) = 0;
  *(void **)((int)this + 0x1c) = *allocationNamePointer;
  *(undefined4 *)((int)this + 8) = 1;
  *(undefined4 **)((int)this + 4) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  return this;
}

