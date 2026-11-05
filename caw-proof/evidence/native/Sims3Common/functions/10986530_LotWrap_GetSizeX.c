/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: LotWrap_GetSizeX. Export ordinal(s): 1918. Entry
   VA: 0x10986530. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000A92. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl LotWrap_GetSizeX(int param_1)

{
  int iVar1;
  
                    /* 0x986530  1918  LotWrap_GetSizeX */
  if ((param_1 == 0) || (iVar1 = *(int *)(param_1 + 0x174), iVar1 < 0)) {
    iVar1 = 0;
  }
  return iVar1;
}

