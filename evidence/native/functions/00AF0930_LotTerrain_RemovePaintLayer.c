/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX terrain,index. If not last, copy
   last alpha values into removed slot via AEF910 then overwrite complete24-byte paint record and
   fix key-to-index map. Erase removed key, shrinkpaint and alpha vectors, dispose lastalpha.
   Recompute alpha dimensions/dirty render bounds. This function does not visibly rewrite
   cliffIndex+18; retain that fact rather than inventing a decrement/remap. */

void __thiscall LotTerrain_RemovePaintLayer(void *this,uint param_1)

{
  undefined4 *puVar1;
  uint uVar2;
  void *allocation;
  int iVar3;
  uint *puVar4;
  int iVar5;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  iVar5 = *(int *)((int)this + 0x30);
  if (iVar5 != *(int *)((int)this + 0x34)) {
    iVar3 = param_1 * 0x18;
    local_10 = *(uint *)(iVar5 + iVar3);
    local_c = *(undefined4 *)(iVar5 + 4 + iVar3);
    local_8 = *(undefined4 *)(iVar5 + iVar3 + 8);
    local_4 = *(undefined4 *)(iVar5 + iVar3 + 0xc);
    uVar2 = (*(int *)((int)this + 0x34) - *(int *)((int)this + 0x30)) / 0x18 - 1;
    if (param_1 < uVar2) {
      FUN_00aef910(this,uVar2,param_1);
      iVar5 = *(int *)((int)this + 0x30);
      puVar1 = (undefined4 *)(iVar5 + uVar2 * 0x18);
      *(undefined4 *)(iVar5 + iVar3) = *puVar1;
      iVar5 = iVar5 + iVar3;
      *(undefined4 *)(iVar5 + 4) = puVar1[1];
      *(undefined4 *)(iVar5 + 8) = puVar1[2];
      *(undefined4 *)(iVar5 + 0xc) = puVar1[3];
      *(undefined4 *)(iVar5 + 0x10) = puVar1[4];
      *(undefined4 *)(iVar5 + 0x14) = puVar1[5];
      puVar4 = (uint *)FUN_00aeb730((void *)((int)this + 0x40),
                                    (uint *)(*(int *)((int)this + 0x30) + iVar3));
      *puVar4 = param_1;
    }
    FUN_00aeb3a0((void *)((int)this + 0x40),&local_10);
    *(int *)((int)this + 0x34) = *(int *)((int)this + 0x34) + -0x18;
    allocation = *(void **)(*(int *)((int)this + 100) + -4);
    if (allocation != (void *)0x0) {
      if (*(void **)((int)allocation + 0x30) != (void *)0x0) {
        Memory_FreeIfNonNull(*(void **)((int)allocation + 0x30));
      }
      if (*(void **)((int)allocation + 0x20) != (void *)0x0) {
        Memory_FreeIfNonNull(*(void **)((int)allocation + 0x20));
      }
      if (*(void **)((int)allocation + 0x10) != (void *)0x0) {
        Memory_FreeIfNonNull(*(void **)((int)allocation + 0x10));
      }
      Memory_FreeIfNonNull(allocation);
    }
    *(int *)((int)this + 100) = *(int *)((int)this + 100) + -4;
    FUN_00aea080((int)this);
    local_4 = *(undefined4 *)((int)this + 0x28);
    local_8 = *(undefined4 *)((int)this + 0x24);
    local_10 = 0;
    local_c = 0;
    FUN_00af04d0(this,&local_10);
    *(undefined1 *)((int)this + 0xc4) = 1;
  }
  return;
}

