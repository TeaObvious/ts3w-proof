/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst instruction notes; original PC1.67 TS3W.exe.
 * Physical ECX PartitionManager; no observed EDX input use despite inferred fastcall second word. Plain RET, lowEAX result from F7F620, not a recovered UInt64 value. Counts physical graph+64 pointer vector, B47E60 locator thenC418D0/C44FF0 product identity; null C8FA20 skips. Product+58 Single FLD + current doubleFADD then doubleFSTP; product+88==2 skips both sides. Each B4A6D0 side-key list resolves through C8EAE0 and optional Singleprice adds to same binary64 subtotal. One final F7F620 conversion. Genuine C incorrectly projects intermediate accumulator as float; Listing double operands govern. Full product fallback/graph order/side default/readers/error remain open.
 * Actual Ghidra C follows unchanged. Stored names/prototypes were NOT edited.
 * Complete original Listing: 00B4B630_FUN_00b4b630.asm
 */

ulonglong __fastcall FUN_00b4b630(void *param_1,undefined4 param_2)

{
  void *this;
  int iVar1;
  uint *puVar2;
  uint uVar3;
  undefined4 extraout_EDX;
  uint uVar4;
  undefined2 local_a8;
  undefined1 local_a6;
  undefined2 local_a5;
  undefined1 local_a3;
  double local_a0;
  uint local_94;
  undefined2 local_90;
  undefined1 local_8e;
  undefined2 local_8d;
  undefined1 local_8b;
  uint local_88 [16];
  uint local_48 [17];
  
  this = DAT_011ee034;
  local_a0 = 0.0;
  iVar1 = *(int *)((int)param_1 + 100);
  uVar4 = 0;
  if (iVar1 == 0) {
    local_94 = 0;
  }
  else {
    local_94 = *(int *)(iVar1 + 0x20) - *(int *)(iVar1 + 0x1c) >> 2;
  }
  if (local_94 != 0) {
    do {
      local_a8 = 0xffff;
      local_a6 = 0;
      local_a5 = 0xffff;
      local_a3 = 0;
      FUN_00b47e60(param_1,uVar4,(undefined1 *)&local_a8);
      local_90 = local_a5;
      local_8e = local_a3;
      local_8b = local_a6;
      local_8d = local_a8;
      iVar1 = WallGraph_FindWallForPackedLocator(*(void **)((int)param_1 + 100),(char *)&local_a8);
      if (iVar1 == 0) {
        puVar2 = &DAT_011ec8c0;
      }
      else {
        puVar2 = FUN_00c44ff0(*(void **)((int)param_1 + 0x6c));
      }
      iVar1 = FUN_00c8fa20(this,puVar2,'\x01');
      if ((iVar1 != 0) &&
         (local_a0 = (double)(*(float *)(iVar1 + 0x58) + (float)local_a0),
         *(int *)(iVar1 + 0x88) != 2)) {
        FUN_00afba70(local_88);
        WallSide_ReadResourceKeys(param_1,(char *)&local_a8,local_88);
        uVar3 = ProductCatalog_FindExactKeyInFourBanks(this,local_88);
        if (uVar3 != 0) {
          local_a0 = (double)(*(float *)(uVar3 + 0x58) + (float)local_a0);
        }
        FUN_00afba70(local_48);
        WallSide_ReadResourceKeys(param_1,(char *)&local_90,local_48);
        uVar3 = ProductCatalog_FindExactKeyInFourBanks(this,local_48);
        if (uVar3 != 0) {
          local_a0 = (double)(*(float *)(uVar3 + 0x58) + (float)local_a0);
        }
      }
      uVar4 = uVar4 + 1;
    } while (uVar4 < local_94);
  }
  iVar1 = Compiler_TruncateX87ToLowInt32((float10)local_a0);
  return CONCAT44(extraout_EDX,iVar1);
}

