/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_CompoundBlendGetRegionImpl. Export
   ordinal(s): 75. Entry VA: 0x103a1820. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000442. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl CASUtils_CompoundBlendGetRegionImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x3a1820  75  CASUtils_CompoundBlendGetRegionImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      return *(undefined4 *)(iVar2 + 0x3c);
    }
  }
  return 0;
}

