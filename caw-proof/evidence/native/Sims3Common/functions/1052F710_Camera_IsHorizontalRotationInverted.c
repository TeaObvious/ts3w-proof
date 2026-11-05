/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_IsHorizontalRotationInverted. Export
   ordinal(s): 290. Entry VA: 0x1052f710. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A42. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 Camera_IsHorizontalRotationInverted(void)

{
  int iVar1;
  
                    /* 0x52f710  290  Camera_IsHorizontalRotationInverted */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      return *(undefined1 *)(iVar1 + 0xe1);
    }
  }
  return 0;
}

