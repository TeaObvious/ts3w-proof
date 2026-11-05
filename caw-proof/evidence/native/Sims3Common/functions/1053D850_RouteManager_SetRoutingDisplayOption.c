/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RouteManager_SetRoutingDisplayOption. Export
   ordinal(s): 608. Entry VA: 0x1053d850. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060000F2. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl RouteManager_SetRoutingDisplayOption(uint param_1,uint param_2)

{
  int iVar1;
  
  iVar1 = thunk_FUN_10627370();
  if (iVar1 != 0) {
    if ((param_1 & 1) != 0) {
      *(bool *)(iVar1 + 0xad0) = param_2 != 0;
    }
    if (((param_1 & 2) != 0) && (DAT_10c7d9a0 != 0)) {
      *(bool *)(DAT_10c7d9a0 + 0x100) = param_2 != 0;
    }
    if ((param_1 & 4) != 0) {
      *(bool *)(iVar1 + 0xad2) = param_2 != 0;
    }
    if ((param_1 & 8) != 0) {
      *(bool *)(iVar1 + 0xad3) = param_2 != 0;
    }
    if ((param_1 & 0x10) != 0) {
      *(bool *)(iVar1 + 0xad6) = param_2 != 0;
    }
    if ((param_1 & 0x20) != 0) {
      *(uint *)(iVar1 + 0xae0) = param_2;
    }
    if ((param_1 & 0x40) != 0) {
      *(undefined1 *)(iVar1 + 0xad8) = 1;
      *(uint *)(iVar1 + 0xadc) = param_2;
    }
    if ((char)param_1 < '\0') {
      *(undefined1 *)(iVar1 + 0xad8) = 0;
    }
    if ((param_1 & 0x200) != 0) {
      *(bool *)(iVar1 + 0xad9) = param_2 != 0;
    }
    if ((param_1 & 0x400) != 0) {
      FUN_106099e0((void *)(iVar1 + 0x990),param_2);
    }
    if ((param_1 & 0x800) != 0) {
      FUN_10608310(iVar1 + 0x990);
      FUN_10607b00(iVar1 + 0x990);
      return;
    }
  }
  return;
}

