/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX owner,new bucketcount RET4. Allocate
   zeroed bucket array plus sentinelFFFFFFFF; walk old buckets ascending, repeatedly removehead via
   node+80 and head-insert at UInt32ID%newcount. Free old bucket storage only when oldcount>1, then
   publish new pointer/count. This reverses chains when keys remain colliding. */

void __thiscall ModularStairMap_Rehash(void *this,uint param_1)

{
  size_t _Size;
  uint *puVar1;
  uint uVar2;
  void *_Dst;
  uint uVar3;
  
  _Size = param_1 * 4;
  _Dst = (void *)FUN_004e4500(_Size + 4,*(undefined4 *)((int)this + 0x1c),0x400000);
  memset(_Dst,0,_Size);
  *(undefined4 *)(_Size + (int)_Dst) = 0xffffffff;
  uVar3 = 0;
  if (*(int *)((int)this + 8) != 0) {
    do {
      puVar1 = *(uint **)(*(int *)((int)this + 4) + uVar3 * 4);
      while (puVar1 != (uint *)0x0) {
        uVar2 = *puVar1;
        *(uint *)(*(int *)((int)this + 4) + uVar3 * 4) = puVar1[0x20];
        puVar1[0x20] = *(uint *)((int)_Dst + (uVar2 % param_1) * 4);
        *(uint **)((int)_Dst + (uVar2 % param_1) * 4) = puVar1;
        puVar1 = *(uint **)(*(int *)((int)this + 4) + uVar3 * 4);
      }
      uVar3 = uVar3 + 1;
    } while (uVar3 < *(uint *)((int)this + 8));
  }
  if (1 < *(uint *)((int)this + 8)) {
    Memory_FreeIfNonNull(*(void **)((int)this + 4));
  }
  *(void **)((int)this + 4) = _Dst;
  *(uint *)((int)this + 8) = param_1;
  return;
}

