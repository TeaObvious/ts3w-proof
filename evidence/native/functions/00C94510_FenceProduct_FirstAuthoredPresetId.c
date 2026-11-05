/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX fence product no stack words/plainRET, full EAX raw preset ID. If authored
   begin164==end168 returnFFFFFFFF; otherwise return DWORD at FIRST8byte row+4. There is no
   custom-collection fallback in this function. Actual D3AEBD caller passes this full ID to D45FF0;
   C94780 later maps ID to ordinal. A host first-authored-material projection matches this bounded
   selector when catalog decoding/ID mapping is valid, not the whole combined preset service. */

uint __thiscall FenceProduct_FirstAuthoredPresetId(void *this)

{
  if (*(int *)((int)this + 0x164) == *(int *)((int)this + 0x168)) {
    return 0xffffffff;
  }
  return *(uint *)(*(int *)((int)this + 0x164) + 4);
}

