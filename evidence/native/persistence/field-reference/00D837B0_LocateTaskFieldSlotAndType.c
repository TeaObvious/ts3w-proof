/* Final saved Ghidra pseudocode; exact owned bytes in paired ASM.
   Central original identity: references/pc-167.md.
   Generated C is a projection, not a callable reconstruction.
   EOL notes are copied from final comment readback at the relevant C statements.
   No stored ABI, type or body changes were requested; AL-only results retain
   upper-register artifacts in this decompilation. */

/* Analyst-assigned physical field locator used by GetFieldValue and SetFieldReference. cdecl UInt64
   taskID, UInt32 frameIndex, UInt32 fieldIndex, output type pointer and output slot address (6
   physical stack DWORDs); AL success only. Requires initialized host and valid metadata/output
   pointers. Uses D760C0 with creationflag0; unsigned frame bound <=task+140 and nonnull frame
   pointer. Unlike D835D0 normalization, frame0 is allowed and method metadata pointer is layout+0C,
   not layout+8. Field-index partition uses byte layout+40 for arguments and UInt16 header+10 for
   locals, selecting type and frameBase+offset. On success writes both outputs; failure performs no
   output stores. Does not dereference byref contents or search earlier frames; do not conflate it
   with D835D0. */

uint __cdecl
LocateTaskFieldSlotAndType
          (uint param_1,undefined4 param_2,uint param_3,uint param_4,undefined4 *param_5,
          int *param_6)

{
  ushort uVar1;
  ushort uVar2;
  ushort uVar3;
  int *piVar4;
  ushort *puVar5;
  int iVar6;
  int iVar7;
  uint uVar8;
  undefined3 uVar9;
  void *this;
  uint uVar10;

  iVar7 = GetGlobalInterfacePointer_11D5BBC();
  if (iVar7 == 0) {
    this = (void *)0x0;
  }
  else {
    this = (void *)(iVar7 + -8);
  }
  uVar8 = FindTaskStateWithOptionalCreation(this,param_1,param_2,0);
  if (((uVar8 == 0) || (*(uint *)(uVar8 + 0x140) < param_3)) ||
     (piVar4 = *(int **)(uVar8 + 0x3c + param_3 * 4), piVar4 == (int *)0x0)) {
    return uVar8 & 0xffffff00;
  }
  iVar7 = *piVar4;
  /* 00D837F2: Load method pointer from layout+0C. D835D0 byref normalization instead uses layout+8; no equivalence of these two metadata pointers is assumed. */
  puVar5 = *(ushort **)(iVar7 + 0xc);
  uVar8 = GetOrCreateMethodBodyHeader(puVar5);
  uVar9 = (undefined3)((uint)param_6 >> 8);
  /* 00D83806: Unsigned field index below byte argument count uses argument offset/type arrays; otherwise subtract that count and require local index below UInt16 header+10. */
  if (param_4 < *(byte *)(iVar7 + 0x40)) {
    iVar7 = *(int *)(*(int *)(iVar7 + 0x1c) + param_4 * 4);
    iVar6 = piVar4[8];
    /* 00D8381E: Success publishes type pointer and computed storage-slot address, then AL1. Byref contents are not dereferenced by this helper. */
    *param_5 = *(undefined4 *)(*(int *)(puVar5 + 6) + 0x10 + param_4 * 4);
    *param_6 = iVar7 + iVar6;
    return CONCAT31(uVar9,1);
  }
  uVar10 = param_4 - *(byte *)(iVar7 + 0x40);
  if (uVar10 < *(ushort *)(uVar8 + 0x10)) {
    uVar1 = *(ushort *)(iVar7 + 0x3e);
    iVar6 = *(int *)(*(int *)(iVar7 + 0x20) + uVar10 * 4);
    uVar2 = *(ushort *)(iVar7 + 0x36);
    uVar3 = *(ushort *)(iVar7 + 0x34);
    iVar7 = piVar4[8];
    *param_5 = *(undefined4 *)(uVar8 + 0x18 + uVar10 * 4);
    *param_6 = iVar6 + (uint)uVar1 + (uint)uVar2 + (uint)uVar3 + iVar7;
    return CONCAT31(uVar9,1);
  }
  return uVar8 & 0xffffff00;
}
