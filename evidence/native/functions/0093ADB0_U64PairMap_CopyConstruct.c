/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX destination32-byte map, RET4 source. Copies
   metadata. Nonempty map allocates bucket array plus sentinel and deep-copies24-byte chain nodes,
   including16-byte key/value pair and next+10, preserving chain order. Empty source uses static
   empty buckets. Allocation-failure behavior not made safe in this body. */

void * __thiscall U64PairMap_CopyConstruct(void *this,void *source)

{
  int *piVar1;
  size_t _Size;
  undefined4 *puVar2;
  undefined4 *puVar3;
  void *pvVar4;
  void *_Dst;
  undefined4 *puVar5;
  
  pvVar4 = source;
  *(undefined4 *)this = *(undefined4 *)source;
  *(undefined4 *)((int)this + 8) = *(undefined4 *)((int)source + 8);
  *(undefined4 *)((int)this + 0xc) = *(undefined4 *)((int)source + 0xc);
  *(undefined4 *)((int)this + 0x10) = *(undefined4 *)((int)source + 0x10);
  *(undefined4 *)((int)this + 0x14) = *(undefined4 *)((int)source + 0x14);
  *(undefined4 *)((int)this + 0x18) = *(undefined4 *)((int)source + 0x18);
  *(undefined4 *)((int)this + 0x1c) = *(undefined4 *)((int)source + 0x1c);
  if (*(int *)((int)this + 0xc) != 0) {
    _Size = *(int *)((int)this + 8) * 4;
    _Dst = (void *)FUN_004e4500(_Size + 4,*(undefined4 *)((int)this + 0x1c),0x400000);
    memset(_Dst,0,_Size);
    *(undefined4 *)(_Size + (int)_Dst) = 0xffffffff;
    *(void **)((int)this + 4) = _Dst;
    piVar1 = (int *)((int)source + 8);
    source = (void *)0x0;
    if (*piVar1 != 0) {
      do {
        puVar3 = (undefined4 *)(*(int *)((int)this + 4) + (int)source * 4);
        for (puVar2 = *(undefined4 **)((int)source * 4 + *(int *)((int)pvVar4 + 4));
            puVar2 != (undefined4 *)0x0; puVar2 = (undefined4 *)puVar2[4]) {
          puVar5 = (undefined4 *)FUN_004e4500(0x18,*(undefined4 *)((int)this + 0x1c),0);
          if (puVar5 != (undefined4 *)0x0) {
            *puVar5 = *puVar2;
            puVar5[1] = puVar2[1];
            puVar5[2] = puVar2[2];
            puVar5[3] = puVar2[3];
          }
          puVar5[4] = 0;
          *puVar3 = puVar5;
          puVar3 = puVar5 + 4;
        }
        source = (void *)((int)source + 1);
      } while (source < *(void **)((int)pvVar4 + 8));
    }
    return this;
  }
  *(undefined4 *)((int)this + 8) = 1;
  *(undefined4 **)((int)this + 4) = &DAT_0114d900;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  return this;
}

