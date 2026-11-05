/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HandToolGetObjectHeld. Export ordinal(s):
   1396. Entry VA: 0x1057b0e0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000C50. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined8 World_HandToolGetObjectHeld(void)

{
  int iVar1;
  
                    /* 0x57b0e0  1396  World_HandToolGetObjectHeld */
  iVar1 = FUN_102d5e30();
  if (iVar1 != 0) {
    return *(undefined8 *)(iVar1 + 8);
  }
  return 0;
}

