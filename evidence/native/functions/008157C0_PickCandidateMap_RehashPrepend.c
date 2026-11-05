/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 rendered-pick contract. ECX=candidate map, new UInt32 bucket count RET4 void.
   Allocates count*4+4 bytes with wrapping arithmetic, zeroes ordinary buckets and writes FFFFFFFF
   sentinel. Traverses OLD buckets ascending and each old chain from head; removes each head and
   prepends to its new unsigned-key-modulo bucket. This reverses/merges order deterministically;
   later equal-distance priority selection observes that order. Frees old bucket storage only if old
   count>1; publishes pointer/count. No zero-count/NULL allocation/overflow containment here. */

void __thiscall PickCandidateMap_RehashPrepend(void *this,uint newBucketCount)

{
  size_t _Size;
  uint *puVar1;
  uint uVar2;
  void *_Dst;
  uint uVar3;
  
  _Size = newBucketCount * 4;
  _Dst = FUN_004e4500(_Size + 4,*(void **)((int)this + 0x1c),0x400000,0,
                      "c:\\BuildAgent\\slc1-build111\\CMBuild\\Core\\include\\EASTL/allocator.h",
                      0xe7);
  memset(_Dst,0,_Size);
  *(undefined4 *)(_Size + (int)_Dst) = 0xffffffff;
  uVar3 = 0;
  if (*(int *)((int)this + 8) != 0) {
    do {
      puVar1 = *(uint **)(*(int *)((int)this + 4) + uVar3 * 4);
      while (puVar1 != (uint *)0x0) {
        uVar2 = *puVar1;
        *(uint *)(*(int *)((int)this + 4) + uVar3 * 4) = puVar1[3];
        puVar1[3] = *(uint *)((int)_Dst + (uVar2 % newBucketCount) * 4);
        *(uint **)((int)_Dst + (uVar2 % newBucketCount) * 4) = puVar1;
        puVar1 = *(uint **)(*(int *)((int)this + 4) + uVar3 * 4);
      }
      uVar3 = uVar3 + 1;
    } while (uVar3 < *(uint *)((int)this + 8));
  }
  if (1 < *(uint *)((int)this + 8)) {
    Memory_FreeIfNonNull(*(void **)((int)this + 4));
  }
  *(void **)((int)this + 4) = _Dst;
  *(uint *)((int)this + 8) = newBucketCount;
  return;
}

