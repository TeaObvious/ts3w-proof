/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 instruction-level observation: Wrapper Stop forwards to child Stop. See selected
   controller vtable provenance before applying to other wrappers. Local source:
   00570250_Animation_StopWrappedChild.asm. original PC 1.67 TS3W.exe. */

void __fastcall Animation_StopWrappedChild(int param_1)

{
  if (*(int **)(param_1 + 0x2c) != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x0057025c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(**(int **)(param_1 + 0x2c) + 4))();
    return;
  }
  return;
}

