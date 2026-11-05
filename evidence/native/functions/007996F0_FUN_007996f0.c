/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Four-word vector count insertion; descriptive label, not recovered original symbol.
   ECX vector plus insertion/count/value, RET0C void. Capacity shortage uses max(oldsize+count,oldsize?2*oldsize:1), copies prefix/fill/suffix then frees old and publishes pointers. Spare capacity branches by inserted count versus suffix size; snapshots four-word fill value before movement. Arithmetic/allocator failure and concurrency remain unresolved. */

void __thiscall FUN_007996f0(void *this,undefined4 *param_1,uint param_2,undefined4 *param_3)

{
  undefined4 *puVar1;
  uint uVar2;
  uint uVar3;
  undefined4 *puVar4;
  int iVar5;
  int iVar6;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  uVar2 = param_2;
  iVar6 = *(int *)((int)this + 4);
  if ((uint)(*(int *)((int)this + 8) - iVar6 >> 4) < param_2) {
    iVar6 = iVar6 - *(int *)this >> 4;
    uVar3 = iVar6 * 2;
    if (iVar6 == 0) {
      uVar3 = 1;
    }
    param_2 = iVar6 + param_2;
    if (param_2 < uVar3) {
      param_2 = uVar3;
    }
    if (param_2 == 0) {
      puVar4 = (undefined4 *)0x0;
    }
    else {
      puVar4 = (undefined4 *)FUN_004e4500(param_2 << 4,*(undefined4 *)((int)this + 0xc),0);
    }
    puVar1 = param_1;
    FUN_006c8480(&param_1,*(undefined4 **)this,param_1,puVar4);
    FUN_004aa1b0(param_1,uVar2,param_3);
    FUN_006c8480(&param_1,puVar1,*(undefined4 **)((int)this + 4),param_1 + uVar2 * 4);
    if (*(void **)this != (void *)0x0) {
      Memory_FreeIfNonNull(*(void **)this);
    }
    *(undefined4 **)((int)this + 4) = param_1;
    *(undefined4 **)this = puVar4;
    *(undefined4 **)((int)this + 8) = puVar4 + param_2 * 4;
  }
  else if (param_2 != 0) {
    local_10 = *param_3;
    puVar4 = *(undefined4 **)((int)this + 4);
    local_c = param_3[1];
    local_8 = param_3[2];
    local_4 = param_3[3];
    uVar3 = iVar6 - (int)param_1 >> 4;
    if (param_2 < uVar3) {
      iVar5 = param_2 * 0x10;
      iVar6 = param_2 * -4;
      FUN_006c8480(&param_3,puVar4 + iVar6,puVar4,puVar4);
      puVar1 = param_1;
      *(int *)((int)this + 4) = *(int *)((int)this + 4) + iVar5;
      FUN_005c74b0((int)param_1,(int)(puVar4 + iVar6),puVar4);
      FUN_00ab42d0(puVar1,puVar1 + uVar2 * 4,&local_10);
      return;
    }
    iVar6 = param_2 - uVar3;
    FUN_004aa1b0(puVar4,iVar6,&local_10);
    puVar1 = param_1;
    *(int *)((int)this + 4) = *(int *)((int)this + 4) + iVar6 * 0x10;
    FUN_006c8480(&param_1,param_1,puVar4,*(undefined4 **)((int)this + 4));
    *(int *)((int)this + 4) = *(int *)((int)this + 4) + uVar3 * 0x10;
    FUN_00ab42d0(puVar1,puVar4,&local_10);
    return;
  }
  return;
}
