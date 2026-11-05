/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Audio_InitWorldImpl. Export ordinal(s): 25. Entry
   VA: 0x10654880. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600007D. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint Audio_InitWorldImpl(void)

{
  uint uVar1;
  
                    /* 0x654880  25  Audio_InitWorldImpl */
  if ((DAT_10c7d4a0 != 0) && ((int *)(DAT_10c7d4a0 - 0x27bd0) != (int *)0x0)) {
                    /* WARNING: Could not recover jumptable at 0x1065489b. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    uVar1 = (**(code **)(*(int *)(DAT_10c7d4a0 - 0x27bd0) + 0x248))();
    return uVar1;
  }
  return DAT_10c7d4a0 & 0xffffff00;
}

