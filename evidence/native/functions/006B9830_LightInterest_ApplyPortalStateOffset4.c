/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Recomputes the box centre first. Only stored state 1 or 2 adds a separately transformed clamped
   half-depth Z displacement. State 1 starts with negative-zero minus depth; state 2 subtracts that
   vector from positive zero. Clears transformed displacement Y to positive zero before adding it to
   the centre. ECX receiver; plain RET. State writer is not established here. */

void __fastcall LightInterest_ApplyPortalStateOffset4(int param_1)

{
  int iVar1;
  int extraout_ECX;
  float fVar2;
  
  LightInterest_TransformBoxCenter4(param_1);
  iVar1 = *(int *)(extraout_ECX + 0x1d0);
  if ((iVar1 == 2) || (iVar1 == 1)) {
    fVar2 = (*(float *)(extraout_ECX + 0x168) - *(float *)(extraout_ECX + 0x158)) * _DAT_00f9b5b4;
    if (DAT_0103fd64 < fVar2) {
      fVar2 = DAT_0103fd64;
    }
    fVar2 = FLOAT_00f998f0 - fVar2;
    if (iVar1 == 2) {
      fVar2 = 0.0 - fVar2;
    }
    *(float *)(extraout_ECX + 0x140) =
         *(float *)(extraout_ECX + 0x140) +
         *(float *)(extraout_ECX + 0x180) * 0.0 + *(float *)(extraout_ECX + 0x170) * 0.0 +
         fVar2 * *(float *)(extraout_ECX + 400) + *(float *)(extraout_ECX + 0x1a0) * 0.0;
    *(float *)(extraout_ECX + 0x144) = *(float *)(extraout_ECX + 0x144) + 0.0;
    *(float *)(extraout_ECX + 0x148) =
         *(float *)(extraout_ECX + 0x148) +
         *(float *)(extraout_ECX + 0x188) * 0.0 + *(float *)(extraout_ECX + 0x178) * 0.0 +
         fVar2 * *(float *)(extraout_ECX + 0x198) + *(float *)(extraout_ECX + 0x1a8) * 0.0;
    *(float *)(extraout_ECX + 0x14c) =
         *(float *)(extraout_ECX + 0x14c) +
         *(float *)(extraout_ECX + 0x18c) * 0.0 + *(float *)(extraout_ECX + 0x17c) * 0.0 +
         fVar2 * *(float *)(extraout_ECX + 0x19c) + *(float *)(extraout_ECX + 0x1ac) * 0.0;
  }
  return;
}

