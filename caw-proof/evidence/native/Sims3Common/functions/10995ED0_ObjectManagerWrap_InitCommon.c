/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_InitCommon. Export ordinal(s):
   1981. Entry VA: 0x10995ed0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600024F. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl ObjectManagerWrap_InitCommon(int *param_1)

{
  char cVar1;
  
                    /* 0x995ed0  1981  ObjectManagerWrap_InitCommon */
  if (param_1 != (int *)0x0) {
    cVar1 = (**(code **)(*param_1 + 0x10))();
    return cVar1 != '\0';
  }
  return false;
}

