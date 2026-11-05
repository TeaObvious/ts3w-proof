/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_DecisionGraph_Create. Export ordinal(s):
   2132. Entry VA: 0x1098dc60. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000DA6. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 SacsWrap_DecisionGraph_Create(void)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  
                    /* 0x98dc60  2132  SacsWrap_DecisionGraph_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x70,"CSHost/SACS/DecisionGraph",0);
  if (puVar1 != (undefined4 *)0x0) {
    uVar2 = FUN_105ef4f0(puVar1);
    return uVar2;
  }
  return 0;
}

