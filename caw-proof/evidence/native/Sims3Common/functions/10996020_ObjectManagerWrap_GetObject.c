/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_GetObject. Export ordinal(s):
   1971. Entry VA: 0x10996020. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000265. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl ObjectManagerWrap_GetObject(int param_1)

{
  uint uVar1;
  
                    /* 0x996020  1971  ObjectManagerWrap_GetObject */
  if (param_1 != 0) {
    uVar1 = FUN_10242c70(param_1);
    return uVar1;
  }
  return 0;
}

