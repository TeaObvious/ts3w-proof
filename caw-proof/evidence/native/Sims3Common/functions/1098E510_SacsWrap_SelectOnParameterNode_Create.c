/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_SelectOnParameterNode_Create. Export
   ordinal(s): 2180. Entry VA: 0x1098e510. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E23. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * SacsWrap_SelectOnParameterNode_Create(void)

{
  undefined4 *puVar1;
  
                    /* 0x98e510  2180  SacsWrap_SelectOnParameterNode_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x58,"CSHost/SACS/SelectOnParameterNode",0);
  if (puVar1 != (undefined4 *)0x0) {
    FUN_105f1440(puVar1);
    *puVar1 = &PTR_thunk_FUN_105247e0_10b30550;
    puVar1[0x14] = 0;
    return puVar1;
  }
  return (undefined4 *)0x0;
}

