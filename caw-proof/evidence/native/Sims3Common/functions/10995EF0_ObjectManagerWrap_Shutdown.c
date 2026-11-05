/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_Shutdown. Export ordinal(s):
   1995. Entry VA: 0x10995ef0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000250. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl ObjectManagerWrap_Shutdown(int *param_1)

{
                    /* 0x995ef0  1995  ObjectManagerWrap_Shutdown */
  if (param_1 != (int *)0x0) {
    (**(code **)(*param_1 + 0x14))(1);
  }
  return;
}

