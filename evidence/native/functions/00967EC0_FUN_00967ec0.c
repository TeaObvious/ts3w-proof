/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Actual stack two aligned-vector pointers, RET8. Repeated binary32 subtraction/addition of2pi adjusts only Y while differences exceedpi. SSE shuffle writes preserve other lanes. COMISS/JBE preserves unordered branch behavior. Three disjoint owned ranges exclude6alignment bytes. Host ceiling shortcut is not proved bit-identical to repeated native loops.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00967EC0_FUN_00967ec0.asm
 */

void FUN_00967ec0(int param_1,undefined4 *param_2)

{
  float fVar1;
  float fVar2;
  
  fVar1 = DAT_01045f90;
  while( true ) {
    if ((float)param_2[1] - *(float *)(param_1 + 4) <= fVar1) break;
    fVar2 = (float)param_2[1] - DAT_01045f94;
    *param_2 = *param_2;
    param_2[1] = fVar2;
    param_2[2] = param_2[2];
    param_2[3] = param_2[3];
  }
  while( true ) {
    if (*(float *)(param_1 + 4) - (float)param_2[1] <= fVar1) break;
    fVar2 = DAT_01045f94 + (float)param_2[1];
    *param_2 = *param_2;
    param_2[1] = fVar2;
    param_2[2] = param_2[2];
    param_2[3] = param_2[3];
  }
  return;
}

