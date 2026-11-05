/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall descriptor ECX,height stack; RET4. NEG/SAR by
   DWORD+10/NEG; x86 count mask31. Ordinary positive result is ceiling block rows; no input
   validation or overflow widening. */

int __thiscall TextureFormat_BlockRowCount(void *this,int param_1)

{
  return -(-param_1 >> ((byte)*(undefined4 *)((int)this + 0x10) & 0x1f));
}

