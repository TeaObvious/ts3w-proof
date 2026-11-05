/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_IsLoggedIn. Export ordinal(s):
   511. Entry VA: 0x10537be0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000595. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 OnlineFeaturesHost_IsLoggedIn(void)

{
                    /* 0x537be0  511  OnlineFeaturesHost_IsLoggedIn */
  if ((DAT_10c788dc != 0) && (DAT_10c788dc + -8 != 0)) {
    return CONCAT31((int3)((uint)(DAT_10c788dc + -8) >> 8),*(undefined1 *)(DAT_10c788dc + 0xc));
  }
  return 0;
}

