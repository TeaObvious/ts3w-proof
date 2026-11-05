/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Queries original device vtable+0xe8 GetRenderState for102 authored state IDs
   from0x00fe8850, storing both baseline/current cache. No fixed device-default numeric values are
   established by this function. Sampler snapshots use+0x110. */

void __thiscall RenderDevice_CaptureBaselineStates(void *this)

{
  int iVar1;
  uint uVar2;
  int iVar3;
  uint local_8;
  undefined4 uStack_4;
  
  uVar2 = 0;
  do {
    iVar3 = *(int *)((int)&DAT_00fe8850 + uVar2);
    (**(code **)(**(int **)((int)this + 0xc) + 0xe8))(*(int **)((int)this + 0xc),iVar3,&local_8);
    uVar2 = uVar2 + 4;
    *(uint *)((int)this + iVar3 * 4 + 0x144) = local_8;
    *(uint *)((int)this + iVar3 * 4 + 0x470) = local_8;
  } while (uVar2 < 0x198);
  *(undefined4 *)((int)this + 0x7b8) = 0;
  *(undefined4 *)((int)this + 0x7bc) = 0;
  *(undefined4 *)((int)this + 0x7c0) = 0;
  *(undefined4 *)((int)this + 0x7c4) = 0;
  *(undefined4 *)((int)this + 0x7c8) = 0;
  *(undefined4 *)((int)this + 0x7cc) = 0;
  *(undefined4 *)((int)this + 2000) = 0;
  *(undefined4 *)((int)this + 0x7d4) = 0;
  *(undefined4 *)((int)this + 0x7d8) = 0;
  *(undefined4 *)((int)this + 0x7dc) = 0;
  *(undefined4 *)((int)this + 0x7e0) = 0;
  *(undefined4 *)((int)this + 0x7e4) = 0;
  *(undefined4 *)((int)this + 0x7e8) = 0;
  *(undefined4 *)((int)this + 0x7ec) = 0;
  local_8 = 0;
  iVar3 = (int)this + 0x810;
  do {
    uVar2 = 0;
    do {
      iVar1 = *(int *)((int)&DAT_00fe881c + uVar2);
      (**(code **)(**(int **)((int)this + 0xc) + 0x110))
                (*(int **)((int)this + 0xc),local_8,iVar1,&uStack_4);
      uVar2 = uVar2 + 4;
      *(undefined4 *)(iVar3 + -4 + iVar1 * 4) = uStack_4;
      *(undefined4 *)(iVar3 + 0x30 + iVar1 * 4) = uStack_4;
    } while (uVar2 < 0x34);
    *(undefined4 *)(iVar3 + 0x68) = 0;
    *(undefined4 *)(iVar3 + 0x6c) = 0;
    local_8 = local_8 + 1;
    iVar3 = iVar3 + 0x74;
  } while (local_8 < 0x10);
  return;
}

