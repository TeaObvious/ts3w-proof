/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Returns (uint16 frameCount-1)*float
   frameInterval from resource+0x4c, nested+0xc, offsets+0x14/+0x10. MOVZX makes frameCount unsigned
   but subtraction can produce -1 when count=0. Missing backing data returns x87 zero. */

float10 __fastcall AnimationClipResource_GetDuration(int param_1)

{
  int iVar1;
  
  if ((*(int *)(param_1 + 0x4c) != 0) &&
     (iVar1 = *(int *)(*(int *)(param_1 + 0x4c) + 0xc), iVar1 != 0)) {
    return (float10)(int)(*(ushort *)(iVar1 + 0x14) - 1) * (float10)*(float *)(iVar1 + 0x10);
  }
  return (float10)0;
}

