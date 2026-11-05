/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_ShutdownWorldImpl. Export ordinal(s): 33.
   Entry VA: 0x106548a0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600007E. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void Audio_ShutdownWorldImpl(void)

{
                    /* 0x6548a0  33  Audio_ShutdownWorldImpl */
  if ((DAT_10c7d4a0 != 0) && ((int *)(DAT_10c7d4a0 + -0x27bd0) != (int *)0x0)) {
                    /* WARNING: Could not recover jumptable at 0x106548bb. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(*(int *)(DAT_10c7d4a0 + -0x27bd0) + 0x24c))();
    return;
  }
  return;
}

