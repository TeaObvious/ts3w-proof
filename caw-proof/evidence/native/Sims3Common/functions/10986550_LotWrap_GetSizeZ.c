/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_GetSizeZ. Export ordinal(s): 1919. Entry
   VA: 0x10986550. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A93. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl LotWrap_GetSizeZ(int param_1)

{
  int iVar1;
  
                    /* 0x986550  1919  LotWrap_GetSizeZ */
  if ((param_1 == 0) || (iVar1 = *(int *)(param_1 + 0x178), iVar1 < 0)) {
    iVar1 = 0;
  }
  return iVar1;
}

