/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Queues a baseline DWORD at this+0x160+4*(state-7), sets pending mask +0x7b8.
   Preserves old state in scope storage when room exists. This does not immediately call D3D9. */

void __thiscall RenderDevice_SetBaselineState(void *this,uint stateId,uint valueBits)

{
  uint *puVar1;
  uint uVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  
  uVar4 = stateId - 7;
  uVar2 = *(uint *)((int)this + uVar4 * 4 + 0x160);
  uVar5 = 1 << ((byte)uVar4 & 0x1f);
  uVar3 = uVar4 >> 5;
  if (uVar2 != valueBits) {
    *(uint *)((int)this + uVar4 * 4 + 0x160) = valueBits;
    uVar4 = *(uint *)((int)this + uVar3 * 4 + 0x7f0);
    puVar1 = (uint *)((int)this + uVar3 * 4 + 0x7b8);
    *puVar1 = *puVar1 | uVar5;
    if ((uVar5 & uVar4) == 0) {
      *(uint *)((int)this + uVar3 * 4 + 0x7f0) = uVar4 | uVar5;
      if (1 < (uint)(*(int *)((int)this + 0xfc) - *(int *)((int)this + 0xf8))) {
        *(uint *)(*(int *)((int)this + 0xf4) + *(int *)((int)this + 0xf8) * 4) = uVar2;
        *(int *)((int)this + 0xf8) = *(int *)((int)this + 0xf8) + 1;
        *(uint *)(*(int *)((int)this + 0xf4) + *(int *)((int)this + 0xf8) * 4) = stateId + 0xffff9;
        *(int *)((int)this + 0xf8) = *(int *)((int)this + 0xf8) + 1;
      }
    }
  }
  return;
}

