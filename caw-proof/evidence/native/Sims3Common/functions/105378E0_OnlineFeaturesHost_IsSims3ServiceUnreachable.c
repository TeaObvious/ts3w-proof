/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: OnlineFeaturesHost_IsSims3ServiceUnreachable.
   Export ordinal(s): 515. Entry VA: 0x105378e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000596. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 OnlineFeaturesHost_IsSims3ServiceUnreachable(void)

{
  undefined1 uVar1;
  
                    /* 0x5378e0  515  OnlineFeaturesHost_IsSims3ServiceUnreachable */
  if ((DAT_10c788dc != 0) && (DAT_10c788dc + -8 != 0)) {
    uVar1 = FUN_10673110(DAT_10c788dc + -8);
    return uVar1;
  }
  return 0;
}

