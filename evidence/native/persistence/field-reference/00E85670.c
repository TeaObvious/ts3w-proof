/* Final saved Ghidra pseudocode; exact owned bytes in paired ASM.
   Central original identity: references/pc-167.md.
   Generated C is a projection, not a callable reconstruction.
   EOL notes are copied from final comment readback at the relevant C statements.
   No stored ABI, type or body changes were requested; AL-only results retain
   upper-register artifacts in this decompilation. */

/* Analyst-assigned method-body metadata helper; cdecl one method pointer, plain RET. Rejects method
   flag400/2000 and implementation low2bits/non-IL or1000 with0. Otherwise return cached method+20;
   cache miss enters global critical section011F53A8, rechecks, loads/decodes or constructs derived
   metadata, publishes method+20 and leaves. Header+10 is a16-bit local count and header+18 the
   local-type pointer array in TaskControl consumers. Assertion/decode/allocation and
   generic-context child semantics remain separate; this is not a graceful all-failures Try
   operation. D835D0 does not guard every zero header result, requiring valid compatible runtime
   metadata. */

int __cdecl GetOrCreateMethodBodyHeader(ushort *param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  ushort *puVar5;
  uint *puVar6;

  if (((((*param_1 & 0x400) != 0) || ((param_1[1] & 3) != 0)) || ((param_1[1] & 0x1000) != 0)) ||
     ((*param_1 & 0x2000) != 0)) {
    return 0;
  }
  /* 00E856A7: Fast cached header read at method+20; a miss enters global critical section and rechecks before creating/publishing metadata. */
  iVar3 = *(int *)(param_1 + 0x10);
  if (iVar3 == 0) {
    EnterCriticalSection((LPCRITICAL_SECTION)&DAT_011f53a8);
    if (*(int *)(param_1 + 0x10) != 0) {
      LeaveCriticalSection((LPCRITICAL_SECTION)&DAT_011f53a8);
      return *(int *)(param_1 + 0x10);
    }
    /* 00E856CF: Method+1C bit400 selects derived metadata construction; ordinary path decodes a MethodDef-backed record. Child ownership and assertion behavior are not reconstructed here. */
    if ((*(uint *)(param_1 + 0xe) & 0x400) == 0) {
      if ((*(uint *)(param_1 + 2) & 0xff000000) != 0x6000000) {
        FUN_00e46e00("* Assertion at %s:%d, condition `%s\' not met\n");
      }
      iVar3 = **(int **)(param_1 + 4);
      uVar4 = FUN_00e9b500((int *)(iVar3 + 0xac),(*(uint *)(param_1 + 2) & 0xffffff) - 1,0);
      puVar5 = (ushort *)FUN_00e842f0(iVar3,uVar4);
      if (puVar5 == (ushort *)0x0) {
        FUN_00e46e00("* Assertion at %s:%d, condition `%s\' not met\n");
      }
      puVar6 = FUN_00e9eda0(iVar3,*(undefined4 *)(param_1 + 8),puVar5,*(undefined4 **)(iVar3 + 0x30)
                           );
      *(uint **)(param_1 + 0x10) = puVar6;
      LeaveCriticalSection((LPCRITICAL_SECTION)&DAT_011f53a8);
      return *(int *)(param_1 + 0x10);
    }
    GetOrCreateMethodBodyHeader(*(ushort **)(param_1 + 0x16));
    puVar2 = *(undefined4 **)(**(int **)(param_1 + 4) + 0x30);
    piVar1 = (int *)FUN_00e69ef0((int)param_1);
    puVar2 = FUN_00e84f00(piVar1,puVar2);
    *(undefined4 **)(param_1 + 0x10) = puVar2;
    LeaveCriticalSection((LPCRITICAL_SECTION)&DAT_011f53a8);
    iVar3 = *(int *)(param_1 + 0x10);
  }
  return iVar3;
}
