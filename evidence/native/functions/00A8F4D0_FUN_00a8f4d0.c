/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Sixty-four-byte key vector insertion; descriptive label, not recovered original symbol.
   ECX vector plus insertion/source pointers, RET8 void. With spare capacity, copies tail, shifts backwards and adjusts aliased source by64. Full vector allocates capacity1 or double current length, copies prefix/new value/suffix throughA8BB60, frees old allocation and publishes begin/end/capacity. Raw64byte records; no strong OOM or exception guarantee inferred. */

void __thiscall FUN_00a8f4d0(void *this,undefined4 *param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  int local_8;
  undefined4 *local_4;
  
  puVar1 = *(undefined4 **)((int)this + 4);
  if (puVar1 != *(undefined4 **)((int)this + 8)) {
    if ((param_1 <= param_2) && (param_2 < puVar1)) {
      param_2 = param_2 + 0x10;
    }
    if (puVar1 != (undefined4 *)0x0) {
      puVar4 = puVar1 + -0x10;
      for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar1 = *puVar4;
        puVar4 = puVar4 + 1;
        puVar1 = puVar1 + 1;
      }
    }
    puVar4 = *(undefined4 **)((int)this + 4);
    puVar1 = puVar4 + -0x10;
    while (puVar1 != param_1) {
      puVar1 = puVar1 + -0x10;
      puVar4 = puVar4 + -0x10;
      puVar3 = puVar1;
      puVar5 = puVar4;
      for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
        *puVar5 = *puVar3;
        puVar3 = puVar3 + 1;
        puVar5 = puVar5 + 1;
      }
    }
    for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
      *param_1 = *param_2;
      param_2 = param_2 + 1;
      param_1 = param_1 + 1;
    }
    *(int *)((int)this + 4) = *(int *)((int)this + 4) + 0x40;
    return;
  }
  local_8 = (int)puVar1 - *(int *)this >> 6;
  if (local_8 == 0) {
    local_8 = 1;
  }
  else {
    local_8 = local_8 * 2;
    if (local_8 == 0) {
      puVar1 = (undefined4 *)0x0;
      goto LAB_00a8f58a;
    }
  }
  puVar1 = (undefined4 *)FUN_004e4500(local_8 << 6,*(undefined4 *)((int)this + 0xc),0);
LAB_00a8f58a:
  FUN_00a8bb60(&local_4,*(undefined4 **)this,param_1,puVar1);
  if (local_4 != (undefined4 *)0x0) {
    puVar4 = param_2;
    puVar3 = local_4;
    for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
      *puVar3 = *puVar4;
      puVar4 = puVar4 + 1;
      puVar3 = puVar3 + 1;
    }
  }
  FUN_00a8bb60(&param_1,param_1,*(undefined4 **)((int)this + 4),local_4 + 0x10);
  if (*(void **)this != (void *)0x0) {
    Memory_FreeIfNonNull(*(void **)this);
  }
  *(undefined4 **)((int)this + 8) = puVar1 + local_8 * 0x10;
  *(undefined4 **)this = puVar1;
  *(undefined4 **)((int)this + 4) = param_1;
  return;
}
