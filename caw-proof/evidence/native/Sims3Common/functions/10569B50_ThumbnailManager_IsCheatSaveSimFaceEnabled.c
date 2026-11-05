/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ThumbnailManager_IsCheatSaveSimFaceEnabled.
   Export ordinal(s): 1052. Entry VA: 0x10569b50. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000390. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 ThumbnailManager_IsCheatSaveSimFaceEnabled(void)

{
  undefined1 uVar1;
  
                    /* 0x569b50  1052  ThumbnailManager_IsCheatSaveSimFaceEnabled */
  if (DAT_10c71150 != 0) {
    uVar1 = FUN_10322bc0(DAT_10c71150);
    return uVar1;
  }
  return 0;
}

