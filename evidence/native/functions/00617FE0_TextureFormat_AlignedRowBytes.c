/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall descriptor ECX,width,alignment; RET8.
   NEG/SAR/IMUL as tight row bytes; returns (alignment - intermediate -1)&-alignment. Power-of-two
   alignment is caller contract, not validated here; writer passes4. All operations32-bit and x86
   shift count masked. */

uint __thiscall TextureFormat_AlignedRowBytes(void *this,int param_1,int param_2)

{
  return (param_2 -
         (-param_1 >> ((byte)*(undefined4 *)((int)this + 8) & 0x1f)) * *(int *)((int)this + 0x14)) -
         1U & -param_2;
}

