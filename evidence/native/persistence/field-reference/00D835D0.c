/* Final saved Ghidra pseudocode; exact owned bytes in paired ASM.
   Central original identity: references/pc-167.md.
   Generated C is a projection, not a callable reconstruction.
   EOL notes are copied from final comment readback at the relevant C statements.
   No stored ABI, type or body changes were requested; AL-only results retain
   upper-register artifacts in this decompilation. */

/* Verified PC 1.67 registration table at 0x0108d658 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.TaskControl::TaskControl_ResolveFieldReference [assembly=ScriptCore token=0x06000126;
   taskId: System.UInt64, fieldRef: ScriptCore.TaskFieldReference&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.

   Analyst contract (PC 1.67):
   PC1.67 task by-reference normalization. Existing body [D835D0,D836B9] plus [D836C0,D837AD],472
   owned bytes; old480-byte window already included these bytes, with6 skipped alignment and2 tail
   padding bytes. Managed TaskFieldReference has Int32 frame/field indices. Three physical stack
   DWORDs represent UInt64 taskId plus reference pointer; plain RET. Only AL is defined as boolean;
   upper EAX is not a portable return value. Require initialized host and valid runtime metadata.
   Frame0, missing task/frame, unsigned frame above taskState+140, out-of-range local field and
   non-byref type bit40000000 fail without pair stores. Dereference the byref slot, then search
   earlier frame indices downward for exact argument/local offset equality. Hits in layout
   spans+34/+36 terminate the entire search as false. Only success stores both resolved frame/field
   DWORDs. Original WriteTask boxes this resolved pair only after true; failure aborts its task
   write. No runtime observation or ownership/concurrency guarantee. */

uint __cdecl
ScriptCore.TaskControl::TaskControl_ResolveFieldReference
          (uint param_1,undefined4 param_2,uint *param_3)

{
  int *piVar1;
  ushort *puVar2;
  int iVar3;
  uint in_EAX;
  int iVar4;
  uint uVar5;
  int iVar6;
  undefined3 uVar7;
  void *this;
  int iVar8;
  uint uVar9;
  uint uVar10;
  uint *puVar11;
  uint local_10;
  int *local_c;

  /* 00D835D8: Frame index0 returns AL0 before host lookup. This is not a declaration that managed TaskFieldReference is globally one-based; other accessors and saved contexts use frame0. */
  if (*param_3 == 0) {
    return in_EAX & 0xffffff00;
  }
  iVar4 = GetGlobalInterfacePointer_11D5BBC();
  if (iVar4 == 0) {
    this = (void *)0x0;
  }
  else {
    this = (void *)(iVar4 + -8);
  }
  iVar4 = FindTaskStateWithOptionalCreation(this,param_1,param_2,0);
  uVar9 = 0;
  /* 00D8360E: Unsigned CMP/JBE admits frame index <= task state+140 inclusive. Selected frame pointer must also be nonnull. Managed negative Int32 values are not handled as a separate signed-range check. */
  if ((iVar4 == 0) || (uVar9 = *param_3, *(uint *)(iVar4 + 0x140) < uVar9)) {
    return uVar9 & 0xffffff00;
  }
  piVar1 = *(int **)(iVar4 + 0x3c + uVar9 * 4);
  if (piVar1 == (int *)0x0) {
    return uVar9 & 0xffffff00;
  }
  iVar8 = *piVar1;
  puVar2 = *(ushort **)(iVar8 + 8);
  uVar5 = GetOrCreateMethodBodyHeader(puVar2);
  uVar9 = param_3[1];
  /* 00D8364A: Field index is compared unsigned against an8-bit argument count at layout+40. Remaining indices select locals and compare with a16-bit count at method-body header+10. */
  if (uVar9 < *(byte *)(iVar8 + 0x40)) {
    iVar8 = *(int *)(*(int *)(iVar8 + 0x1c) + uVar9 * 4);
    uVar5 = *(uint *)(*(int *)(puVar2 + 6) + 0x10 + uVar9 * 4);
  }
  else {
    uVar9 = uVar9 - *(byte *)(iVar8 + 0x40);
    if (*(ushort *)(uVar5 + 0x10) <= uVar9) goto LAB_00d8376c;
    uVar5 = *(uint *)(uVar5 + 0x18 + uVar9 * 4);
    iVar8 = *(int *)(*(int *)(iVar8 + 0x20) + uVar9 * 4) + (uint)*(ushort *)(iVar8 + 0x3e) +
            (uint)*(ushort *)(iVar8 + 0x36) + (uint)*(ushort *)(iVar8 + 0x34);
  }
  /* 00D8368A: Only runtime field type flag40000000 admits byref normalization. The DWORD stored in its slot is the absolute referred address; non-byref types return false. */
  if ((*(uint *)(uVar5 + 4) & 0x40000000) != 0) {
    iVar8 = *(int *)(iVar8 + piVar1[8]);
    uVar5 = *param_3 - 1;
    /* 00D836AA: Start at input frame-1 and stop when the decremented32-bit index has sign bit set. Null earlier frame pointers are skipped; this does not search the same or later frame. */
    if (-1 < (int)uVar5) {
      local_c = (int *)(iVar4 + 0x3c + uVar5 * 4);
      local_10 = uVar5;
      do {
        piVar1 = (int *)*local_c;
        if (piVar1 != (int *)0x0) {
          iVar4 = *piVar1;
          puVar2 = *(ushort **)(iVar4 + 8);
          iVar6 = GetOrCreateMethodBodyHeader(puVar2);
          uVar9 = iVar8 - piVar1[8];
          iVar3 = *(int *)(puVar2 + 6);
          /* 00D836E9: Subtract candidate frame base with32-bit wrapping arithmetic; unsigned relative offset must be below16-bit layout span+38 before any candidate-field search. */
          if (uVar9 < *(ushort *)(iVar4 + 0x38)) {
            uVar7 = (undefined3)((uint)param_3 >> 8);
            if (uVar9 < *(ushort *)(iVar4 + 0x3e)) {
              uVar5 = (uint)*(ushort *)(iVar3 + 4);
              uVar10 = 0;
              if (uVar5 != 0) {
                puVar11 = *(uint **)(iVar4 + 0x1c);
                do {
                  if (uVar9 == *puVar11) {
                    /* 00D83781: Exact argument-offset match: write earlier frame index and argument ordinal, then return AL1. Failure paths perform neither output-pair store. */
                    *param_3 = local_10;
                    param_3[1] = uVar10;
                    return CONCAT31(uVar7,1);
                  }
                  uVar10 = uVar10 + 1;
                  puVar11 = puVar11 + 1;
                } while (uVar10 < uVar5);
              }
            }
            uVar5 = (uint)*(ushort *)(iVar4 + 0x34);
            uVar9 = uVar9 - *(ushort *)(iVar4 + 0x3e);
            /* 00D8371C: A hit inside layout span+34 returns false for the whole operation, not merely this candidate. The analogous +36 region check atD83726 has the same terminating behavior. */
            if (uVar9 < uVar5) break;
            uVar9 = uVar9 - uVar5;
            uVar5 = (uint)*(ushort *)(iVar4 + 0x36);
            if (uVar9 < uVar5) break;
            uVar9 = uVar9 - uVar5;
            if (uVar9 < *(ushort *)(iVar4 + 0x3c)) {
              uVar5 = 0;
              if (*(ushort *)(iVar6 + 0x10) != 0) {
                puVar11 = *(uint **)(iVar4 + 0x20);
                do {
                  if (uVar9 == *puVar11) {
                    /* 00D83795: Exact local-offset match: write earlier frame index and local ordinal plus16-bit argument count from method signature+4; then return AL1. */
                    *param_3 = local_10;
                    param_3[1] = *(ushort *)(iVar3 + 4) + uVar5;
                    return CONCAT31(uVar7,1);
                  }
                  uVar5 = uVar5 + 1;
                  puVar11 = puVar11 + 1;
                } while (uVar5 < *(ushort *)(iVar6 + 0x10));
              }
            }
          }
        }
        uVar5 = local_10 - 1;
        local_c = local_c + -1;
        local_10 = uVar5;
      } while (-1 < (int)uVar5);
    }
  }
/* 00D8376F: Failure sets AL only. Generated uint/undefined4 return projections preserve unrelated upper EAX bits; consume the original managed Boolean contract, not a full-register integer sentinel. */
LAB_00d8376c:
  return uVar5 & 0xffffff00;
}
