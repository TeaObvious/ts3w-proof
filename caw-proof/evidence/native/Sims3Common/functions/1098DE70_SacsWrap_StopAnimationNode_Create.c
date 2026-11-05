/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_StopAnimationNode_Create. Export
   ordinal(s): 2242. Entry VA: 0x1098de70. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000E8E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * SacsWrap_StopAnimationNode_Create(void)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  
                    /* 0x98de70  2242  SacsWrap_StopAnimationNode_Create */
  puVar2 = (undefined4 *)FUN_10918eb0(0x80,"CSHost/SACS/StopAnimationNode",0);
  if (puVar2 != (undefined4 *)0x0) {
    FUN_105ef700(puVar2);
    puVar2[0x19] = 0;
    puVar2[0x1a] = 0;
    puVar2[0x1b] = 0;
    puVar2[0x1c] = 0;
    uVar1 = DAT_10acb0d4;
    puVar2[0x16] = 10000;
    puVar2[0x17] = 10000;
    puVar2[0x14] = 1;
    puVar2[0x15] = 0xffffffff;
    puVar2[0x18] = 1;
    puVar2[0x1d] = uVar1;
    puVar2[0x1e] = 0;
    *puVar2 = &PTR_thunk_FUN_105247e0_10b2fd60;
    return puVar2;
  }
  return (undefined4 *)0x0;
}

