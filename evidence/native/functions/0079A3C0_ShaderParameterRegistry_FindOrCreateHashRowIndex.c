/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 weather-resource static comparison. ECX registry, one UInt32 key word, RET4.
   Existing lookup at79A1E0 is compared with registry+120 end identity; an existing entry returns
   (entry-registryBase)>>3. On miss, use current registry+8 count as index, add the key/index
   relation via79A250, initialize the associated16-byte value row (+C=0,+0=0,+4=FFFF,+8=0,+6=0),
   then increment count and return index in EAX. No capacity/allocation bound or full table type is
   inferred. */

int __thiscall ShaderParameterRegistry_FindOrCreateHashRowIndex(void *this,uint param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int local_c [3];
  
  uVar1 = param_1;
  FUN_0079a1e0((void *)((int)this + 0x14),local_c,&param_1);
  if ((local_c[0] == *(int *)((int)this + 0x120)) ||
     (iVar2 = local_c[0] - *(int *)this >> 3, iVar2 == -1)) {
    iVar2 = *(int *)((int)this + 8);
    *(uint *)(iVar2 * 8 + 4 + *(int *)this) = uVar1;
    param_1 = param_1 & 0xffffff00;
    FUN_0079a250((void *)((int)this + 0x14),local_c,(undefined4 *)(*(int *)this + iVar2 * 8));
    iVar3 = iVar2 * 0x10;
    *(undefined4 *)(*(int *)((int)this + 4) + 0xc + iVar3) = 0;
    *(undefined4 *)(iVar3 + *(int *)((int)this + 4)) = 0;
    *(undefined2 *)(*(int *)((int)this + 4) + 4 + iVar3) = 0xffff;
    *(undefined4 *)(*(int *)((int)this + 4) + 8 + iVar3) = 0;
    *(undefined2 *)(*(int *)((int)this + 4) + 6 + iVar3) = 0;
    *(int *)((int)this + 8) = *(int *)((int)this + 8) + 1;
  }
  return iVar2;
}

