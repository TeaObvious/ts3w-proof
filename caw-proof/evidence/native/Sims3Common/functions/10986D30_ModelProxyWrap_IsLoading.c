/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ModelProxyWrap_IsLoading. Export ordinal(s):
   1955. Entry VA: 0x10986d30. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060001A1. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl ModelProxyWrap_IsLoading(uint *param_1)

{
  uint uVar1;
  
                    /* 0x986d30  1955  ModelProxyWrap_IsLoading */
  uVar1 = FUN_104d2060(param_1);
  return (char)uVar1 != '\0';
}

