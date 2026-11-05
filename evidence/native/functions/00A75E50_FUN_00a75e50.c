/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Fireplace owner. ECX receiver; no independent EDX argument established. Iterates stored groups, obtains A75C50 x87 result, adds prior stored binary64 subtotal; intermediate groups spill to double while last result may retain excess precision until F7F620. Returns its low32 EAX, not semantic UInt64 from incidental EDX.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00A75E50_FUN_00a75e50.asm
 */

ulonglong __fastcall FUN_00a75e50(void *param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  undefined4 extraout_EDX;
  int *piVar4;
  float10 fVar5;
  double local_10;
  
  fVar5 = (float10)0;
  piVar4 = *(int **)((int)param_1 + 8);
  iVar3 = *piVar4;
  if (iVar3 == 0) {
    piVar4 = piVar4 + 1;
    iVar3 = *piVar4;
    while (iVar3 == 0) {
      piVar4 = piVar4 + 1;
      iVar3 = *piVar4;
    }
    iVar3 = *piVar4;
  }
  iVar2 = *(int *)(*(int *)((int)param_1 + 8) + *(int *)((int)param_1 + 0xc) * 4);
  while (iVar3 != iVar2) {
    local_10 = (double)fVar5;
    fVar5 = FUN_00a75c50(param_1,(int *)(iVar3 + 4));
    fVar5 = fVar5 + (float10)local_10;
    iVar3 = *(int *)(iVar3 + 0x14);
    while (iVar3 == 0) {
      piVar1 = piVar4 + 1;
      piVar4 = piVar4 + 1;
      iVar3 = *piVar1;
    }
  }
  iVar3 = Compiler_TruncateX87ToLowInt32(fVar5);
  return CONCAT44(extraout_EDX,iVar3);
}

