/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_SetDatabaseMap. Export ordinal(s):
   2043. Entry VA: 0x10989d60. Original managed P/Invoke MethodDef(s): none located in the shipped
   managed assemblies. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl ResourceMgr_SetDatabaseMap(undefined4 param_1)

{
                    /* 0x989d60  2043  ResourceMgr_SetDatabaseMap */
  if (DAT_10cb8078 != 0) {
    return 0;
  }
  DAT_10cb8078 = param_1;
  return 1;
}

