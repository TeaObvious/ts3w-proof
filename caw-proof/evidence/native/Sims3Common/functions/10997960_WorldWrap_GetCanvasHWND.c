/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_GetCanvasHWND. Export ordinal(s): 2629.
   Entry VA: 0x10997960. Original managed P/Invoke MethodDef(s): WorldBuilderCS:0x0600087D;
   WorldBuilderCS:0x060009CE. This is an export/declaration annotation only; ABI, behavior and
   runtime execution require the original instructions and caller evidence. */

undefined4 WorldWrap_GetCanvasHWND(void)

{
  undefined4 uVar1;
  
                    /* 0x997960  2629  WorldWrap_GetCanvasHWND */
  if (DAT_10c724d0 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x10997974. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar1 = (**(code **)(*DAT_10c724d0 + 0x9c))();
    return uVar1;
  }
  return 0;
}

