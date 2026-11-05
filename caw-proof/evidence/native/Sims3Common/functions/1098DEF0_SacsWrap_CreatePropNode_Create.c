/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_CreatePropNode_Create. Export
   ordinal(s): 2118. Entry VA: 0x1098def0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E94. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * SacsWrap_CreatePropNode_Create(void)

{
  undefined4 *puVar1;
  
                    /* 0x98def0  2118  SacsWrap_CreatePropNode_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x68,"CSHost/SACS/CreatePropNode",0);
  if (puVar1 != (undefined4 *)0x0) {
    FUN_105ef700(puVar1);
    puVar1[0x14] = 0;
    puVar1[0x15] = 0;
    *puVar1 = &PTR_thunk_FUN_105247e0_10b2f680;
    puVar1[0x16] = 0;
    puVar1[0x17] = 0;
    puVar1[0x18] = 0;
    puVar1[0x19] = 0;
    return puVar1;
  }
  return (undefined4 *)0x0;
}

