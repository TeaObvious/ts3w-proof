/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SacsWrap_State_GetName. Export ordinal(s): 2233.
   Entry VA: 0x1098ca90. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000D2D. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl SacsWrap_State_GetName(int param_1)

{
  undefined4 uVar1;
  
                    /* 0x98ca90  2233  SacsWrap_State_GetName */
  if (param_1 != 0) {
    uVar1 = FUN_105eec60(param_1);
    return uVar1;
  }
  return 0;
}

