/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: Consumes count unsigned 8-byte (stateId,valueBits) records. Original TEST/JBE
   skips count0. Same cached state and override mask as ApplyPassState; passes original DWORD
   unchanged. */

void __thiscall RenderDevice_ApplyPassStatePairs(void *this,void *statePairs,uint count)

{
  uint uVar1;
  uint *puVar2;
  int iVar3;
  int iVar4;
  
  for (; count != 0; count = count - 1) {
    iVar3 = *(int *)statePairs;
    iVar4 = *(int *)((int)statePairs + 4);
    uVar1 = iVar3 - 7;
    statePairs = (void *)((int)statePairs + 8);
    if (*(int *)((int)this + uVar1 * 4 + 0x48c) != iVar4) {
      *(int *)((int)this + uVar1 * 4 + 0x48c) = iVar4;
      (**(code **)(**(int **)((int)this + 0xc) + 0xe4))(*(int **)((int)this + 0xc),iVar3,iVar4);
    }
    puVar2 = (uint *)((int)this + (uVar1 >> 5) * 4 + 0x7d4);
    *puVar2 = *puVar2 | 1 << ((byte)uVar1 & 0x1f);
  }
  return;
}

