/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: EffectComponent_GetEffectNameCount. Export
   ordinal(s): 1799. Entry VA: 0x10980850. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x060003E0. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int EffectComponent_GetEffectNameCount(void)

{
  int *piVar1;
  
                    /* 0x980850  1799  EffectComponent_GetEffectNameCount */
  piVar1 = (int *)FUN_1050d150();
  if (piVar1 == (int *)0x0) {
    return 0;
  }
  (**(code **)(*piVar1 + 0xbc))(&DAT_10c59bb0,0);
  return (DAT_10c59bb4 - DAT_10c59bb0) / 0x24;
}

