/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC 1.67 original instruction review. Analyst-assigned name. For nonzero repeat count and non-null
   resource, returns unsigned repeatCount*clipDuration. x87 FILD signed value is corrected by adding
   2^32 for high-bit values. Otherwise returns original FLT_MAX sentinel01150594 (0x7f7fffff), not
   infinity. */

float10 __fastcall AnimationClipController_GetTotalDuration(int param_1)

{
  int iVar1;
  float10 fVar2;
  
  iVar1 = *(int *)(param_1 + 0x5ec);
  if ((iVar1 != 0) && (*(int *)(param_1 + 0x5d0) != 0)) {
    fVar2 = (float10)iVar1;
    if (iVar1 < 0) {
      fVar2 = fVar2 + (float10)_DAT_00f99948;
    }
    return fVar2 * (float10)*(float *)(param_1 + 0x5e8);
  }
  return (float10)_DAT_01150594;
}

