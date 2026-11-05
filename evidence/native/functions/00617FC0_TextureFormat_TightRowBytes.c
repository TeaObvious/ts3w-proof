/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. thiscall descriptor ECX,width stack; RET4. NEG width,
   SAR by descriptor DWORD+8 with x86 count mask31, IMUL descriptor+14, NEG result. For ordinary
   positive bounded dimensions this is ceil(width/blockWidth)*bytesPerBlock. Operations wrap32-bit;
   signed SAR must not become unsigned SHR or an unchecked arbitrary mathematical ceil. */

int __thiscall TextureFormat_TightRowBytes(void *this,int param_1)

{
  return -((-param_1 >> ((byte)*(undefined4 *)((int)this + 8) & 0x1f)) * *(int *)((int)this + 0x14))
  ;
}

