/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. cdecl unsigned format ID; CMP9A/JB accepts0..99hex, all
   other DWORD values use descriptor0. Return FE93F8 + ID*28. Descriptor fields are original data,
   not a D3D-format enum cast. */

undefined * __cdecl TextureFormat_FindDescriptor(uint param_1)

{
  if (0x99 < param_1) {
    param_1 = 0;
  }
  return &DAT_00fe93f8 + param_1 * 0x1c;
}

