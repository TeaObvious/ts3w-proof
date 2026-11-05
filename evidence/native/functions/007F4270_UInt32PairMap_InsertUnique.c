/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 audio callback instruction review. ECX map, RET0C THREE stack slots: output
   iterator+inserted byte, pointer to {uintKey,payload32}, unusedWord. Unsigned DIV hash modulo
   bucket count; node12bytes {key+0,payload+4,next+8}. Existing key returns existing node and
   inserted0 WITHOUT overwriting payload. New copies pair, links bucket, increments count and
   inserted1. Output node+0,bucketptr+4,inserted byte+8. Allocator/rehash failures not given
   graceful failure policy.
   
   Analyst note (PC1.67 construction persistence contract): Same map is consumed by modular-stair
   hidden-state reader B21750, in addition to audio registries. UInt32 key hashing modulo bucket
   count; duplicate key returns old payload unchanged. Native B21750 v4/5 supplies default true; v6
   reads Boolean. New insertion uses growth1/2 policy and head insertion, resize via865260. Static
   behavior, not an observed hidden-stair gameplay action. */

void * __thiscall
UInt32PairMap_InsertUnique(void *this,void *outIteratorAndInserted,uint *pair32,uint unusedWord)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint *puVar5;
  uint uVar6;
  char local_8 [4];
  uint local_4;
  
  uVar3 = *pair32;
  uVar6 = uVar3 % *(uint *)((int)this + 8);
  puVar1 = (undefined4 *)(*(int *)((int)this + 4) + uVar6 * 4);
  puVar5 = (uint *)*puVar1;
  while( true ) {
    if (puVar5 == (uint *)0x0) {
      HashGrowth_SelectPrimeCapacity
                ((void *)((int)this + 0x10),local_8,*(uint *)((int)this + 8),
                 *(uint *)((int)this + 0xc),1);
      puVar5 = (uint *)FUN_004e4500(0xc,*(undefined4 *)((int)this + 0x1c),0);
      if (puVar5 != (uint *)0x0) {
        *puVar5 = *pair32;
        puVar5[1] = pair32[1];
      }
      puVar5[2] = 0;
      if (local_8[0] != '\0') {
        uVar6 = uVar3 % local_4;
        UInt32PayloadMap_Rehash(this,local_4);
      }
      iVar2 = uVar6 * 4;
      puVar5[2] = *(uint *)(iVar2 + *(int *)((int)this + 4));
      *(uint **)(iVar2 + *(int *)((int)this + 4)) = puVar5;
      *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
      iVar4 = *(int *)((int)this + 4);
      *(uint **)outIteratorAndInserted = puVar5;
      *(undefined1 *)((int)outIteratorAndInserted + 8) = 1;
      *(int *)((int)outIteratorAndInserted + 4) = iVar4 + iVar2;
      return outIteratorAndInserted;
    }
    if (uVar3 == *puVar5) break;
    puVar5 = (uint *)puVar5[2];
  }
                    /* Duplicate key: return existing pair, inserted=false; do not replace delegate
                       payload. */
  *(uint **)outIteratorAndInserted = puVar5;
  *(undefined1 *)((int)outIteratorAndInserted + 8) = 0;
  *(undefined4 **)((int)outIteratorAndInserted + 4) = puVar1;
  return outIteratorAndInserted;
}

