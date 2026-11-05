/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Tests object component mask+2C against runtime selector011EA0FC.
   Original descriptor registration identifies that selector as Sim; imported zero-fill global bytes
   do not establish its runtime value. */

bool __cdecl Object_HasSimComponent(int param_1)

{
  return (*(uint *)(param_1 + 0x2c) & DAT_011ea0fc) != 0;
}

