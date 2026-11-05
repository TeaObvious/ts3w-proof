/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Unfurnished selection repeats the same mode predicate after evaluation, clears byte+414, truncates Single+420 via CVTTSS2SI, and adds either+330/+324 or+350/+34C. Signed negative result clamps tozero. Same mode before and after is not an immutable snapshot guarantee.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00ACAED0_FUN_00acaed0.asm
 */

int __fastcall FUN_00acaed0(void *param_1,uint param_2)

{
  int iVar1;
  
  *(undefined1 *)((int)param_1 + 0x414) = 1;
  if ((*(int *)((int)param_1 + 0x2e8) == 0) &&
     ((iVar1 = *(int *)((int)param_1 + 0x298), iVar1 == 0 ||
      (*(int *)(iVar1 + 0x120) == *(int *)(iVar1 + 0x124))))) {
    FUN_00ac5f00(param_1,param_2);
  }
  else {
    FUN_00ab9c90(param_1);
  }
  *(undefined1 *)((int)param_1 + 0x414) = 0;
  if ((*(int *)((int)param_1 + 0x2e8) == 0) &&
     ((iVar1 = *(int *)((int)param_1 + 0x298), iVar1 == 0 ||
      (*(int *)(iVar1 + 0x120) == *(int *)(iVar1 + 0x124))))) {
    iVar1 = (int)*(float *)((int)param_1 + 0x420) + *(int *)((int)param_1 + 0x330) +
            *(int *)((int)param_1 + 0x324);
  }
  else {
    iVar1 = (int)*(float *)((int)param_1 + 0x420) + *(int *)((int)param_1 + 0x350) +
            *(int *)((int)param_1 + 0x34c);
  }
  if (iVar1 < 0) {
    iVar1 = 0;
  }
  return iVar1;
}

