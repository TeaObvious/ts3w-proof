/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 catalog/template instruction contract): Existing imported MSVCR80.DLL floor
   identity preserved. One original indirect JMP throughIAT00F966AC, no product logic in thunk.
   CEF6B0 pushes one double argument and restores8 stack bytes; rounding behavior follows imported
   floor contract. CRT internals are outside this proof. */

double __cdecl floor(double _X)

{
  double dVar1;
  
                    /* WARNING: Could not recover jumptable at 0x00f7f7d0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  dVar1 = floor(_X);
  return dVar1;
}

