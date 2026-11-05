/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cdecl two DWORD flag inputs, plain RET, full EAX MASK not rotation count. If
   either30000000 subset absent returns0; otherwise conditional selection of10000000/20000000/both.
   Actual CCA4D0 consumer gives8 orientations for bit20000000, else4 for10000000, else1, with
   binary32 steps0.7853982/1.5707964/0. Do not expose raw mask as a count. */

uint __cdecl SlotPlacement_IntersectRotationFlags(uint param_1,uint param_2)

{
  if (((param_1 & 0x30000000) == 0) || ((param_2 & 0x30000000) == 0)) {
    return 0;
  }
  if ((param_1 & 0x20000000) != 0) {
    return param_2 & 0x30000000;
  }
  if ((param_2 & 0x20000000) == 0) {
    return 0x10000000;
  }
  return param_1 & 0x30000000;
}

