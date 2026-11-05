/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst PC1.67 object signature-map instruction contract. Complete78-byte helper. __stdcall THREE
   physical stackwords mapVector,instanceLow,instanceHigh,RET0C,UInt32EAX result. mapVector begins
   with begin/end pointers; each map record stride20h. Calls already-reviewed U64PairMap_Find using
   pointer to BOTH adjacent stackkey DWORDs, compares returnednode against permap end sentinel.
   Missing advances32bytes; firstfound returns node+8LOW32 immediately, EVENZERO. Exhaustion
   returns0. Thus zero mapping hides later nonzero values and is indistinguishable from absence by
   result alone. No sorting, fallbackafterzero, nullvector or structural validation here.
   Provider/load ordering behind vector and concurrentlifetime remain separate. */

uint ObjectSignatureMaps_FindFirstValue(void *mapVector,uint instanceLow,uint instanceHigh)

{
  void *pvVar1;
  void *this;
  int local_8 [2];
  
  this = *(void **)mapVector;
  pvVar1 = *(void **)((int)mapVector + 4);
  while( true ) {
    if (this == pvVar1) {
      return 0;
    }
                    /* Pointer is entryESP+8: two adjacent stack DWORDs form full64bit key.
                       FunctionRET0C requires3physicalstackwords. */
    U64PairMap_Find(this,local_8,(ulonglong *)&instanceLow);
    if (local_8[0] != *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) break;
    this = (void *)((int)this + 0x20);
  }
                    /* Return first found node+8LOW32 immediately; zero does not continue to later
                       maps. */
  return *(uint *)(local_8[0] + 8);
}

