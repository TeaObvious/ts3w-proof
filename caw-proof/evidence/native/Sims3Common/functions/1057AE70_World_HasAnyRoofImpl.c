/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: World_HasAnyRoofImpl. Export ordinal(s): 1400.
   Entry VA: 0x1057ae70. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000BE5. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl World_HasAnyRoofImpl(int param_1,int param_2)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x57ae70  1400  World_HasAnyRoofImpl */
  if (DAT_10c700c4 != (void *)0x0) {
    piVar1 = FUN_10237010(DAT_10c700c4,param_1,param_2,(int *)0x0);
    if ((piVar1 != (int *)0x0) && (piVar1[0xab] != 0)) {
      iVar2 = FUN_1036f400(piVar1[0xab]);
      return iVar2 != 0;
    }
  }
  return false;
}

