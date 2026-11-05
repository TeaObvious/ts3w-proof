/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_GetPregenerationStatus. Export
   ordinal(s): 1046. Entry VA: 0x105698c0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600036D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

longlong ThumbnailManager_GetPregenerationStatus(void)

{
  longlong lVar1;
  uint local_10;
  uint local_c;
  uint local_8;
  char local_3;
  
                    /* 0x5698c0  1046  ThumbnailManager_GetPregenerationStatus */
  if (DAT_10c71150 == (void *)0x0) {
    return 0;
  }
  FUN_10322510(DAT_10c71150,&local_10);
  lVar1 = (ulonglong)local_8 * 0x100000 + (ulonglong)local_10;
  lVar1 = __allmul((uint)lVar1,(int)((ulonglong)lVar1 >> 0x20),0x100000,0);
  lVar1 = lVar1 + (ulonglong)local_c;
  if (local_3 != '\0') {
    lVar1 = CONCAT44((int)((ulonglong)lVar1 >> 0x20) + -0x80000000,(int)lVar1);
  }
  return lVar1;
}

