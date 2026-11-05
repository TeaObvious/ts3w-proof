/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_NextStateNode_Create. Export ordinal(s):
   2142. Entry VA: 0x1098d840. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000DD7. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 * SacsWrap_NextStateNode_Create(void)

{
  undefined4 *puVar1;
  
                    /* 0x98d840  2142  SacsWrap_NextStateNode_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x38,"CSHost/SACS/NextStateNode",0);
  if (puVar1 != (undefined4 *)0x0) {
    *puVar1 = &PTR_FUN_10ac7454;
    LOCK();
    puVar1[1] = 0;
    UNLOCK();
    puVar1[2] = 0;
    puVar1[3] = 0;
    puVar1[4] = 0;
    puVar1[5] = 0;
    puVar1[8] = 0;
    puVar1[9] = 0;
    puVar1[7] = 0;
    puVar1[6] = 0;
    puVar1[10] = 0;
    puVar1[0xc] = 0;
    *puVar1 = &PTR_thunk_FUN_105247e0_10b2fe38;
    return puVar1;
  }
  return (undefined4 *)0x0;
}

