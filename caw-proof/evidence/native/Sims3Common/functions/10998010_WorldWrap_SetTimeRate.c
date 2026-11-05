/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetTimeRate. Export ordinal(s): 2710.
   Entry VA: 0x10998010. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004D7. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl WorldWrap_SetTimeRate(int param_1,undefined4 param_2)

{
                    /* 0x998010  2710  WorldWrap_SetTimeRate */
  *(undefined4 *)(param_1 + 0x128) = param_2;
  return;
}

