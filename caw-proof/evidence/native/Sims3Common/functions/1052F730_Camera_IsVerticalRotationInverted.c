/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_IsVerticalRotationInverted. Export
   ordinal(s): 292. Entry VA: 0x1052f730. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000A43. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 Camera_IsVerticalRotationInverted(void)

{
  int iVar1;
  
                    /* 0x52f730  292  Camera_IsVerticalRotationInverted */
  iVar1 = FUN_1075c630();
  if (iVar1 != 0) {
    iVar1 = FUN_10937a80(iVar1);
    if (iVar1 != 0) {
      return *(undefined1 *)(iVar1 + 0xe2);
    }
  }
  return 0;
}

