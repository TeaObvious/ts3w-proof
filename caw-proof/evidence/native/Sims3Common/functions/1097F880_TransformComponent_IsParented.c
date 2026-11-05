/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: TransformComponent_IsParented. Export ordinal(s):
   2534. Entry VA: 0x1097f880. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000008. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

bool __cdecl TransformComponent_IsParented(int param_1)

{
                    /* 0x97f880  2534  TransformComponent_IsParented */
  return *(int *)(param_1 + 0x30) != 0;
}

