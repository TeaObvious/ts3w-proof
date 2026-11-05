/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 instruction-level observation: SuppressEventsController vtable +0x1C forwards child
   lifetime. Local source:
   00570220_Animation_SuppressEventsLifetime.asm. original PC 1.67 TS3W.exe. */

void __fastcall Animation_SuppressEventsLifetime(int param_1)

{
                    /* WARNING: Could not recover jumptable at 0x00570228. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(**(int **)(param_1 + 0x2c) + 0x1c))();
  return;
}

