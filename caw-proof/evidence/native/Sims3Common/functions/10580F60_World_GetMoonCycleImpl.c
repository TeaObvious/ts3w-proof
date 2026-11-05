/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetMoonCycleImpl. Export ordinal(s): 1354.
   Entry VA: 0x10580f60. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CFA. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int World_GetMoonCycleImpl(void)

{
  int iVar1;
  
                    /* 0x580f60  1354  World_GetMoonCycleImpl */
  if ((DAT_10c700c4 != 0) && (*(int *)(DAT_10c700c4 + 100) != 0)) {
    iVar1 = FUN_101de9a0(*(int *)(DAT_10c700c4 + 100));
    return (int)(short)iVar1;
  }
  return -1;
}

