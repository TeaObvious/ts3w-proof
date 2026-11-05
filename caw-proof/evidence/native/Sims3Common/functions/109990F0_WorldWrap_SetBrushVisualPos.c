/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetBrushVisualPos. Export ordinal(s):
   2695. Entry VA: 0x109990f0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004FD. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl WorldWrap_SetBrushVisualPos(int param_1,undefined4 param_2,undefined4 param_3)

{
                    /* 0x9990f0  2695  WorldWrap_SetBrushVisualPos */
  if (*(void **)(param_1 + 0x70) != (void *)0x0) {
    FUN_101f3f90(*(void **)(param_1 + 0x70),param_2,param_3);
  }
  return;
}

