/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete92-instruction generic vector assignment: skip identical source/destination
   object; compare source element count with destination capacity and existing length; use grow/copy
   helperB79C30 plus old-storage free when capacity insufficient, otherwise one or two memmove
   calls, then set destination end. Source vector fields are not swapped with destination. In SACS
   manager7FD0C0, ECX=manager+2C and source=manager+1C, then caller clears source end. RET4. Generic
   POD dword copying is proven here; helper allocation/failure semantics and reference ownership of
   copied values are not. */

void * __thiscall DwordVector_CopyAssign_5D3680(void *this,int *param_1)

{
  void *_Dst;
  int iVar1;
  void *pvVar2;
  uint uVar3;
  uint uVar4;
  
  if (param_1 != this) {
    pvVar2 = (void *)*param_1;
    _Dst = *(void **)this;
    iVar1 = param_1[1];
    uVar4 = iVar1 - (int)pvVar2 >> 2;
    if ((uint)(*(int *)((int)this + 8) - (int)_Dst >> 2) < uVar4) {
      pvVar2 = FUN_00b79c30(this,uVar4,pvVar2,iVar1);
      if (*(void **)this != (void *)0x0) {
        Memory_FreeIfNonNull(*(void **)this);
      }
      *(void **)this = pvVar2;
      *(void **)((int)this + 8) = (void *)((int)pvVar2 + uVar4 * 4);
      *(void **)((int)this + 4) = (void *)((int)pvVar2 + uVar4 * 4);
      return this;
    }
    uVar3 = *(int *)((int)this + 4) - (int)_Dst >> 2;
    if (uVar3 < uVar4) {
      memmove(_Dst,pvVar2,uVar3 * 4);
      pvVar2 = (void *)(*param_1 + ((int)*(void **)((int)this + 4) - *(int *)this >> 2) * 4);
      memmove(*(void **)((int)this + 4),pvVar2,param_1[1] - (int)pvVar2);
      *(uint *)((int)this + 4) = *(int *)this + uVar4 * 4;
      return this;
    }
    memmove(_Dst,pvVar2,iVar1 - (int)pvVar2);
    *(uint *)((int)this + 4) = *(int *)this + uVar4 * 4;
  }
  return this;
}

