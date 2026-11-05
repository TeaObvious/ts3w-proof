/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_GetRoutingDisplayOption. Export
   ordinal(s): 572. Entry VA: 0x1053d860. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000F3. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl RouteManager_GetRoutingDisplayOption(uint param_1)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = 0;
  iVar1 = thunk_FUN_10627370();
  if (iVar1 == 0) {
    return 0;
  }
  if ((param_1 & 1) != 0) {
    uVar2 = (uint)(*(char *)(iVar1 + 0xad0) != '\0');
  }
  if (((param_1 & 2) != 0) && (DAT_10c7d9a0 != 0)) {
    uVar2 = (uint)(*(char *)(DAT_10c7d9a0 + 0x100) != '\0');
  }
  if ((param_1 & 4) != 0) {
    uVar2 = (uint)(*(char *)(iVar1 + 0xad2) != '\0');
  }
  if ((param_1 & 8) != 0) {
    uVar2 = (uint)(*(char *)(iVar1 + 0xad3) != '\0');
  }
  if ((param_1 & 0x10) != 0) {
    uVar2 = (uint)(*(char *)(iVar1 + 0xad6) != '\0');
  }
  if ((param_1 & 0x20) != 0) {
    uVar2 = *(uint *)(iVar1 + 0xae0);
  }
  if ((param_1 & 0x100) != 0) {
    if (*(char *)(iVar1 + 0xad8) == '\0') {
      uVar2 = 0;
    }
    else {
      uVar2 = *(uint *)(iVar1 + 0xadc);
    }
  }
  if ((param_1 & 0x200) != 0) {
    uVar2 = (uint)(*(char *)(iVar1 + 0xad9) != '\0');
  }
  return uVar2;
}

