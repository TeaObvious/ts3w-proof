/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_GetMoonPhaseImpl. Export ordinal(s): 1355.
   Entry VA: 0x10580f90. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000CFB. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int World_GetMoonPhaseImpl(void)

{
  undefined4 uVar1;
  
                    /* 0x580f90  1355  World_GetMoonPhaseImpl */
  if ((DAT_10c700c4 != 0) && (*(int *)(DAT_10c700c4 + 100) != 0)) {
    uVar1 = FUN_101deb60(*(int *)(DAT_10c700c4 + 100));
    return (int)(short)uVar1;
  }
  return -1;
}

