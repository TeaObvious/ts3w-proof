/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderGetIsRigDirtyImpl. Export
   ordinal(s): 161. Entry VA: 0x103a1730. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600041E. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl CASUtils_SimBuilderGetIsRigDirtyImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x3a1730  161  CASUtils_SimBuilderGetIsRigDirtyImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      return *(undefined1 *)(iVar2 + 0x204);
    }
  }
  return 0;
}

