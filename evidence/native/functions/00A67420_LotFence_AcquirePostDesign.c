/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Uses the existing post-design lookup. A found record increments its reference count; a new
   registration assigns an ID, count 1, and copies 48 bytes (decimal). Subordinate comparator/hash
   and full retirement are not inferred. */

uint __thiscall LotFence_AcquirePostDesign(void *this,byte *param_1)

{
  uint uVar1;
  uint *puVar2;
  undefined4 *puVar3;
  int iVar4;
  uint local_8 [2];
  
  FUN_00a66bd0(this,local_8,param_1);
  if (local_8[0] == *(uint *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    local_8[1] = 1;
    uVar1 = FUN_00a66ae0((int)this);
    local_8[0] = uVar1;
    puVar2 = (uint *)FUN_00a67300(this,param_1);
    *puVar2 = uVar1;
    puVar2[1] = 1;
    puVar3 = (undefined4 *)FUN_00a66f20((void *)((int)this + 0x20),local_8);
    for (iVar4 = 0xc; iVar4 != 0; iVar4 = iVar4 + -1) {
      *puVar3 = *(undefined4 *)param_1;
      param_1 = param_1 + 4;
      puVar3 = puVar3 + 1;
    }
    return uVar1;
  }
  *(int *)(local_8[0] + 0x34) = *(int *)(local_8[0] + 0x34) + 1;
  return *(uint *)(local_8[0] + 0x30);
}

