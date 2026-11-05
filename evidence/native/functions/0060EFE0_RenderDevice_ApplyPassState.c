/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Immediate authored override: compare/update cached DWORD +0x48c+4*(state-7),
   device vtable+0xe4 SetRenderState(device,state,valueBits), then set override bit +0x7d4 even if
   value unchanged. Raw bits, not a numeric float cast. HRESULT ignored; no visible state-index
   validation. */

void __thiscall RenderDevice_ApplyPassState(void *this,uint stateId,uint valueBits)

{
  uint uVar1;
  uint *puVar2;
  
  uVar1 = stateId - 7;
  if (*(uint *)((int)this + stateId * 4 + 0x470) != valueBits) {
    *(uint *)((int)this + uVar1 * 4 + 0x48c) = valueBits;
    (**(code **)(**(int **)((int)this + 0xc) + 0xe4))(*(int **)((int)this + 0xc),stateId,valueBits);
  }
  puVar2 = (uint *)((int)this + (uVar1 >> 5) * 4 + 0x7d4);
  *puVar2 = *puVar2 | 1 << ((byte)uVar1 & 0x1f);
  return;
}

