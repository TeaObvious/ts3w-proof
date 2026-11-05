/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_SelectOnDestinationNode_Create. Export
   ordinal(s): 2174. Entry VA: 0x1098e550. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E12. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * SacsWrap_SelectOnDestinationNode_Create(void)

{
  undefined4 *puVar1;
  
                    /* 0x98e550  2174  SacsWrap_SelectOnDestinationNode_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x50,"CSHost/SACS/SelectOnDestinationNode",0);
  if (puVar1 != (undefined4 *)0x0) {
    FUN_105f1440(puVar1);
    *puVar1 = &PTR_thunk_FUN_105247e0_10b305b0;
    return puVar1;
  }
  return (undefined4 *)0x0;
}

