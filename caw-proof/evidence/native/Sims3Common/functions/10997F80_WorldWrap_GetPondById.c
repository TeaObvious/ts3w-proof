/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetPondById. Export ordinal(s): 2646.
   Entry VA: 0x10997f80. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004CE. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl WorldWrap_GetPondById(void *param_1,uint param_2)

{
  undefined4 uVar1;
  
                    /* 0x997f80  2646  WorldWrap_GetPondById */
  if (param_1 != (void *)0x0) {
    uVar1 = FUN_10234cb0(param_1,param_2);
    return uVar1;
  }
  return 0;
}

