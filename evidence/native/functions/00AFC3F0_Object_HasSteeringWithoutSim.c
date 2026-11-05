/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cdecl object pointer, plain RET/full0or1. Nonnull object component bitset+2C must
   contain mask at11EA138 (Steering descriptor index8/bit100) and lack11EA0FC (Sim descriptor
   index7/bit80). Shared original component descriptor table establishes these identities; do not
   infer them from object class names. */

undefined4 __cdecl Object_HasSteeringWithoutSim(int param_1)

{
  if (((param_1 != 0) && ((DAT_011ea138 & *(uint *)(param_1 + 0x2c)) != 0)) &&
     ((DAT_011ea0fc & *(uint *)(param_1 + 0x2c)) == 0)) {
    return 1;
  }
  return 0;
}

