/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=candidate map, THREE stack words
   output/keyDistancePacked/ignoredHint RET12, returns output EAX. Duplicate key returns existing
   node and inserted byte0 without replacing value/reordering. New node16bytes copies three DWORD
   payload words, may request growth, rehashes before insertion, prepends current new bucket,
   increments node count and sets inserted byte1. Allocator has six caller-cleaned words. NULL node
   allocation is followed by an unchecked store to node+C; no graceful allocation-failure contract.
   Generic analyst map name describes selected node layout. */

void * __thiscall
PickCandidateMap_InsertFirst
          (void *this,void *outputInsertResult,uint *keyDistancePacked,uint ignoredHint)

{
  undefined4 *puVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint *puVar5;
  uint uVar6;
  char local_8 [4];
  uint local_4;
  
  uVar3 = *keyDistancePacked;
  uVar6 = uVar3 % *(uint *)((int)this + 8);
  puVar1 = (undefined4 *)(*(int *)((int)this + 4) + uVar6 * 4);
  puVar5 = (uint *)*puVar1;
  while( true ) {
    if (puVar5 == (uint *)0x0) {
      HashGrowth_SelectPrimeCapacity
                ((void *)((int)this + 0x10),local_8,*(uint *)((int)this + 8),
                 *(uint *)((int)this + 0xc),1);
      puVar5 = FUN_004e4500(0x10,*(void **)((int)this + 0x1c),0,0,
                            "c:\\BuildAgent\\slc1-build111\\CMBuild\\Core\\include\\EASTL/allocator.h"
                            ,0xe7);
      if (puVar5 != (uint *)0x0) {
        *puVar5 = *keyDistancePacked;
        puVar5[1] = keyDistancePacked[1];
        puVar5[2] = keyDistancePacked[2];
      }
      puVar5[3] = 0;
      if (local_8[0] != '\0') {
        uVar6 = uVar3 % local_4;
        PickCandidateMap_RehashPrepend(this,local_4);
      }
      iVar2 = uVar6 * 4;
      puVar5[3] = *(uint *)(iVar2 + *(int *)((int)this + 4));
      *(uint **)(iVar2 + *(int *)((int)this + 4)) = puVar5;
      *(int *)((int)this + 0xc) = *(int *)((int)this + 0xc) + 1;
      iVar4 = *(int *)((int)this + 4);
      *(uint **)outputInsertResult = puVar5;
      *(undefined1 *)((int)outputInsertResult + 8) = 1;
      *(int *)((int)outputInsertResult + 4) = iVar4 + iVar2;
      return outputInsertResult;
    }
    if (uVar3 == *puVar5) break;
    puVar5 = (uint *)puVar5[3];
  }
  *(uint **)outputInsertResult = puVar5;
  *(undefined1 *)((int)outputInsertResult + 8) = 0;
  *(undefined4 **)((int)outputInsertResult + 4) = puVar1;
  return outputInsertResult;
}

