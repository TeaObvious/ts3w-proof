/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_SetGridRotationAngle. Export
   ordinal(s): 2701. Entry VA: 0x10999080. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060004F4. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl WorldWrap_SetGridRotationAngle(int param_1,undefined4 param_2)

{
                    /* 0x999080  2701  WorldWrap_SetGridRotationAngle */
  if (*(void **)(param_1 + 0x6c) != (void *)0x0) {
    FUN_102001b0(*(void **)(param_1 + 0x6c),param_2);
  }
  return;
}

