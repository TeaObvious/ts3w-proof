/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UserToolUtils_GetSimPointBalanceImpl. Export
   ordinal(s): 1207. Entry VA: 0x102bd400. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000AA4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 UserToolUtils_GetSimPointBalanceImpl(void)

{
  undefined4 uVar1;
  
                    /* 0x2bd400  1207  UserToolUtils_GetSimPointBalanceImpl */
  if (DAT_10c8e150 != 0) {
    uVar1 = FUN_107c1ce0(DAT_10c8e150);
    return uVar1;
  }
  return 0;
}

