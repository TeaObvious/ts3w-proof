/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Furnished selection. ECX lot; byte+414 set before simple/complex call and cleared after it. +2E8 nonzero or partition+120!=+124 selects AB9C90, otherwise AC5F00. EAX from selected callee survives clearing and RET0; stored undefined return is incomplete. Full complex evaluator and dirty writer policy remain open.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00ACAE80_FUN_00acae80.asm
 */

void __fastcall FUN_00acae80(void *param_1,uint param_2)

{
  int iVar1;
  
  *(undefined1 *)((int)param_1 + 0x414) = 1;
  if ((*(int *)((int)param_1 + 0x2e8) == 0) &&
     ((iVar1 = *(int *)((int)param_1 + 0x298), iVar1 == 0 ||
      (*(int *)(iVar1 + 0x120) == *(int *)(iVar1 + 0x124))))) {
    FUN_00ac5f00(param_1,param_2);
    *(undefined1 *)((int)param_1 + 0x414) = 0;
    return;
  }
  FUN_00ab9c90(param_1);
  *(undefined1 *)((int)param_1 + 0x414) = 0;
  return;
}

