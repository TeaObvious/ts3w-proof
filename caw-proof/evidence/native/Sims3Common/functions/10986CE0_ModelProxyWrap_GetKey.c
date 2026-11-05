/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ModelProxyWrap_GetKey. Export ordinal(s): 1952.
   Entry VA: 0x10986ce0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600019B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 * __cdecl ModelProxyWrap_GetKey(undefined4 *param_1,int param_2)

{
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x986ce0  1952  ModelProxyWrap_GetKey */
  local_10 = *(undefined4 *)(param_2 + 0x28);
  local_c = *(undefined4 *)(param_2 + 0x2c);
  local_8 = *(undefined4 *)(param_2 + 0x30);
  local_4 = *(undefined4 *)(param_2 + 0x34);
  FUN_10989d40(&local_10,param_1);
  return param_1;
}

