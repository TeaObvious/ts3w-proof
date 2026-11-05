/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_PlayAnimationNode_Create. Export
   ordinal(s): 2153. Entry VA: 0x1098de40. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E73. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * SacsWrap_PlayAnimationNode_Create(void)

{
  undefined4 *puVar1;
  
                    /* 0x98de40  2153  SacsWrap_PlayAnimationNode_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0xd8,"CSHost/SACS/PlayAnimationNode",0);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1 = FUN_105ef770(puVar1);
    return puVar1;
  }
  return (undefined4 *)0x0;
}

