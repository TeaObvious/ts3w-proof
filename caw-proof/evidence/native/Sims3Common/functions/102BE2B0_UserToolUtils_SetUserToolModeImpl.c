/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_SetUserToolModeImpl. Export
   ordinal(s): 1230. Entry VA: 0x102be2b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A7D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UserToolUtils_SetUserToolModeImpl(uint param_1)

{
  int iVar1;
  
  iVar1 = FUN_102c72b0();
  if (iVar1 != 0) {
    switch(*(undefined4 *)(iVar1 + 0x30)) {
    case 0:
    case 8:
      FUN_10311820(*(void **)(iVar1 + 0x2c),param_1);
      return;
    case 1:
      FUN_103163b0(*(void **)(iVar1 + 0x2c),param_1);
      return;
    case 2:
      FUN_102bb3d0(*(void **)(iVar1 + 0x2c),param_1);
      return;
    case 0x12:
      if (*(int *)(iVar1 + 0x2c) != 0) {
        FUN_102c69c0((void *)(*(int *)(iVar1 + 0x2c) + -0x28),param_1);
        return;
      }
      FUN_102c69c0((void *)0x0,param_1);
      return;
    case 0x1a:
      FUN_102a7a40(*(void **)(iVar1 + 0x2c),param_1);
    }
  }
  return;
}

