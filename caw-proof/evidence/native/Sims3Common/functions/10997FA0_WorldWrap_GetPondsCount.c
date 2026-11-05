/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetPondsCount. Export ordinal(s): 2648.
   Entry VA: 0x10997fa0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004CF. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl WorldWrap_GetPondsCount(int param_1)

{
  int iVar1;
  
                    /* 0x997fa0  2648  WorldWrap_GetPondsCount */
  if (param_1 != 0) {
    iVar1 = FUN_10234db0(param_1);
    return iVar1;
  }
  return 0;
}

