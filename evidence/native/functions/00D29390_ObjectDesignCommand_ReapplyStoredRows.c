/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. ECX command/plain RET. Start from command+58 and stop at
   sentinel command+54. Each row passes GUIDwords at node+10/+14 and block node+18 to D290D0, then
   advances with4E1030. Empty map performs no per-row call. Exact native undo interface slot not
   inferred from this helper. */

void __fastcall ObjectDesignCommand_ReapplyStoredRows(int param_1)

{
  int *piVar1;
  
  for (piVar1 = *(int **)(param_1 + 0x58); piVar1 != (int *)(param_1 + 0x54);
      piVar1 = FUN_004e1030(piVar1)) {
    ObjectDesignCommand_ApplyAndExchangeValues(piVar1[4],piVar1[5],piVar1 + 6);
  }
  return;
}

