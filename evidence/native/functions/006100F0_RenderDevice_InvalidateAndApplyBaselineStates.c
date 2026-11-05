/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Marks102 state IDs pending, clears pass overrides, complements cached values to
   force writes, and calls ApplyPendingBaselines. Separate from ordinary technique transition. */

void __thiscall RenderDevice_InvalidateAndApplyBaselineStates(void *this)

{
  uint uVar1;
  undefined4 *puVar2;
  uint *puVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  int iVar7;
  
  uVar5 = 0;
  do {
    uVar4 = *(int *)((int)&DAT_00fe8850 + uVar5) - 7;
    puVar3 = (uint *)((int)this + (uVar4 >> 5) * 4 + 0x7b8);
    uVar1 = uVar5 + 0x18;
    *puVar3 = *puVar3 | 1 << ((byte)uVar4 & 0x1f);
    uVar4 = *(int *)((int)&DAT_00fe8854 + uVar5) - 7;
    puVar3 = (uint *)((int)this + (uVar4 >> 5) * 4 + 0x7b8);
    *puVar3 = *puVar3 | 1 << ((byte)uVar4 & 0x1f);
    uVar4 = *(int *)((int)&DAT_00fe8858 + uVar5) - 7;
    puVar3 = (uint *)((int)this + (uVar4 >> 5) * 4 + 0x7b8);
    *puVar3 = *puVar3 | 1 << ((byte)uVar4 & 0x1f);
    uVar4 = *(int *)((int)&DAT_00fe885c + uVar5) - 7;
    puVar3 = (uint *)((int)this + (uVar4 >> 5) * 4 + 0x7b8);
    *puVar3 = *puVar3 | 1 << ((byte)uVar4 & 0x1f);
    uVar4 = *(int *)((int)&DAT_00fe8860 + uVar5) - 7;
    puVar3 = (uint *)((int)this + (uVar4 >> 5) * 4 + 0x7b8);
    *puVar3 = *puVar3 | 1 << ((byte)uVar4 & 0x1f);
    uVar5 = *(int *)((int)&DAT_00fe8864 + uVar5) - 7;
    puVar3 = (uint *)((int)this + (uVar5 >> 5) * 4 + 0x7b8);
    *puVar3 = *puVar3 | 1 << ((byte)uVar5 & 0x1f);
    uVar5 = uVar1;
  } while (uVar1 < 0x198);
  *(undefined4 *)((int)this + 0x7d4) = 0;
  *(undefined4 *)((int)this + 0x7d8) = 0;
  *(undefined4 *)((int)this + 0x7dc) = 0;
  *(undefined4 *)((int)this + 0x7e0) = 0;
  *(undefined4 *)((int)this + 0x7e4) = 0;
  *(undefined4 *)((int)this + 0x7e8) = 0;
  *(undefined4 *)((int)this + 0x7ec) = 0;
  puVar2 = (undefined4 *)((int)this + 0x87c);
  iVar6 = 0x10;
  do {
    puVar2[-1] = 0x3ffe;
    *puVar2 = 0;
    puVar2 = puVar2 + 0x1d;
    iVar6 = iVar6 + -1;
  } while (iVar6 != 0);
  puVar3 = (uint *)((int)this + 0x48c);
  iVar6 = 0xcb;
  do {
    *puVar3 = ~puVar3[-0xcb];
    puVar3 = puVar3 + 1;
    iVar6 = iVar6 + -1;
  } while (iVar6 != 0);
  iVar6 = (int)this + 0x810;
  iVar7 = 0x10;
  do {
    uVar5 = 0;
    do {
      *(uint *)(iVar6 + 0x34 + uVar5 * 4) = ~*(uint *)(iVar6 + uVar5 * 4);
      uVar5 = uVar5 + 1;
    } while (uVar5 < 0xd);
    iVar6 = iVar6 + 0x74;
    iVar7 = iVar7 + -1;
  } while (iVar7 != 0);
  *(undefined4 *)((int)this + 0x80c) = 0xffff;
  RenderDevice_ApplyPendingBaselines(this);
  return;
}

