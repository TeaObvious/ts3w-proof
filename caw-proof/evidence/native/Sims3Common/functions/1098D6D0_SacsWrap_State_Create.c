/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_State_Create. Export ordinal(s): 2229.
   Entry VA: 0x1098d6d0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000D29. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 SacsWrap_State_Create(void)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  
                    /* 0x98d6d0  2229  SacsWrap_State_Create */
  puVar1 = (undefined4 *)FUN_10918eb0(0x58,"CSHost/SACS/State",0);
  if (puVar1 != (undefined4 *)0x0) {
    uVar2 = FUN_105ef420(puVar1);
    return uVar2;
  }
  return 0;
}

