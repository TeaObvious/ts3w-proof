/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX wall-render owner, no stack arguments, plain RET on owner+0C inactive
   exit; active path ends in actual TAIL JMP C51720 at C59B80 with unchanged ECX. It calls C597A0,
   conditionally C58300, then C580F0; drains owner+240..244 actual12-byte rows through C4EE70,
   passing row+0 DWORD, MOVZX unsigned16-bit row+4, literal0 and row+8 DWORD, then resets end to
   begin. Existing inferred short alias is not a sign-extension instruction: actual C59B1A is MOVZX.
   Selected +2C wall-mode, +8 child and +358 predicate/refresh operations precede the tail jump.
   Actual queued-row meaning, upstream edit/frame scheduling and deeper child geometry are separate
   boundaries. This body has no2/24ms budget, guaranteed3-frame completion or unconditional
   foreground priority contract. */

void __fastcall WallRender_AdvanceQueuedStateAndMaterialReadiness(void *param_1)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  int iVar4;
  
  if (*(char *)((int)param_1 + 0xc) == '\0') {
    return;
  }
  FUN_00c597a0(param_1);
  if (*(char *)((int)param_1 + 0x25) != '\0') {
    FUN_00c58300(param_1);
  }
  FUN_00c580f0(param_1);
  if (*(int *)((int)param_1 + 0x240) != *(int *)((int)param_1 + 0x244)) {
    iVar3 = (*(int *)((int)param_1 + 0x244) - *(int *)((int)param_1 + 0x240)) / 0xc;
    if (iVar3 != 0) {
      iVar4 = 0;
      do {
        iVar1 = *(int *)((int)param_1 + 0x240);
                    /* Actual MOVZX row+4 unsigned WORD to32-bit stack argument; inferred C short
                       alias must not imply MOVSX. */
        FUN_00c4ee70(param_1,*(int *)(iVar1 + iVar4),*(short *)(iVar1 + 4 + iVar4),'\0',
                     *(int *)(iVar1 + 8 + iVar4));
        iVar4 = iVar4 + 0xc;
        iVar3 = iVar3 + -1;
      } while (iVar3 != 0);
    }
    *(undefined4 *)((int)param_1 + 0x244) = *(undefined4 *)((int)param_1 + 0x240);
  }
  if (*(char *)((int)param_1 + 0x2c) != '\0') {
    WallRender_ApplyWallModeToLevels(param_1);
  }
  if (*(void **)((int)param_1 + 8) != (void *)0x0) {
    FUN_00c34f10(*(void **)((int)param_1 + 8));
  }
  if ((*(char *)((int)param_1 + 0x358) != '\0') &&
     (uVar2 = FUN_00c35a90((void *)((int)param_1 + 0x354)), (char)uVar2 == '\0')) {
    FUN_00c58210(param_1);
  }
                    /* Physical TAIL JMP, no return address push; ECX actual owner forwarded to
                       whole C51720 after selected update work. */
  WallRender_PollBucketMaterialsAndRefreshObjects((int)param_1);
  return;
}

