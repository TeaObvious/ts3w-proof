/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 vector16 insertion closure: ECX vector, three physical words
   insertion/count/fill-value, RET0C. Existing-capacity paths update end at5CFD59 or5CFD96/5CFDB4
   after fill/copy returns. Reallocate selects max(oldCount+insertCount, doubled oldCount with
   minimum1), requests aligned16 storage, copies prefix/inserted/suffix, frees nonnull old begin and
   stores begin/end/capacity at5CFE95/97/9A. Copy helper5CA970 supplies actual end iterator,
   including empty ranges. No Boolean failure return or graceful null-allocation guard is
   established; native pointer/shift overflow and allocator internals remain boundaries. TREE
   subsequently overwrites all authored point lanes; local fill contents are not authored values. */

void __thiscall
Vector16_InsertRepeated(void *this,undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  uint uVar6;
  undefined4 *puVar7;
  int iVar8;
  uint local_28;
  undefined4 *local_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  iVar8 = *(int *)((int)this + 4);
  if ((undefined4 *)(*(int *)((int)this + 8) - iVar8 >> 4) < param_2) {
    iVar8 = iVar8 - *(int *)this >> 4;
    uVar6 = iVar8 * 2;
    if (iVar8 == 0) {
      uVar6 = 1;
    }
    local_28 = iVar8 + (int)param_2;
    if (local_28 < uVar6) {
      local_28 = uVar6;
    }
    if (local_28 == 0) {
      puVar4 = (undefined4 *)0x0;
    }
    else {
      puVar4 = (undefined4 *)FUN_004e4520(local_28 << 4,0x10,0,*(undefined4 *)((int)this + 0xc),0);
    }
    Vector16_CopyRangeAndReturnEnd(&local_24,*(undefined4 **)this,param_1,puVar4);
    puVar5 = local_24;
    for (puVar7 = param_2; puVar7 != (undefined4 *)0x0; puVar7 = (undefined4 *)((int)puVar7 + -1)) {
      if (puVar5 != (undefined4 *)0x0) {
        uVar1 = param_3[1];
        uVar2 = param_3[2];
        uVar3 = param_3[3];
        *puVar5 = *param_3;
        puVar5[1] = uVar1;
        puVar5[2] = uVar2;
        puVar5[3] = uVar3;
      }
      puVar5 = puVar5 + 4;
    }
    Vector16_CopyRangeAndReturnEnd
              (&local_24,param_1,*(undefined4 **)((int)this + 4),local_24 + (int)param_2 * 4);
    if (*(void **)this != (void *)0x0) {
      Memory_FreeIfNonNull(*(void **)this);
    }
    *(undefined4 **)this = puVar4;
    *(undefined4 **)((int)this + 4) = local_24;
    *(undefined4 **)((int)this + 8) = puVar4 + local_28 * 4;
  }
  else if (param_2 != (undefined4 *)0x0) {
    local_20 = *param_3;
    uStack_1c = param_3[1];
    uStack_18 = param_3[2];
    uStack_14 = param_3[3];
    puVar4 = *(undefined4 **)((int)this + 4);
    local_24 = (undefined4 *)(iVar8 - (int)param_1 >> 4);
    if (param_2 < local_24) {
      local_24 = puVar4 + (int)param_2 * -4;
      Vector16_CopyRangeAndReturnEnd(&local_28,local_24,puVar4,puVar4);
      *(int *)((int)this + 4) = *(int *)((int)this + 4) + (int)param_2 * 0x10;
      FUN_00693100((int)param_1,(int)local_24,puVar4);
      FUN_009e3d90(param_1,param_1 + (int)param_2 * 4,&local_20);
      return;
    }
    iVar8 = (int)param_2 - (int)local_24;
    FUN_005caa10(puVar4,iVar8,&local_20);
    *(int *)((int)this + 4) = *(int *)((int)this + 4) + iVar8 * 0x10;
    Vector16_CopyRangeAndReturnEnd(&local_28,param_1,puVar4,*(undefined4 **)((int)this + 4));
    *(int *)((int)this + 4) = *(int *)((int)this + 4) + (int)local_24 * 0x10;
    FUN_009e3d90(param_1,puVar4,&local_20);
    return;
  }
  return;
}

