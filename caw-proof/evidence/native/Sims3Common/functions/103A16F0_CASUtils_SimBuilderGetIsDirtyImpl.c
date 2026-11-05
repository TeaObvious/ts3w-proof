/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderGetIsDirtyImpl. Export
   ordinal(s): 160. Entry VA: 0x103a16f0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600041D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

bool __cdecl CASUtils_SimBuilderGetIsDirtyImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x3a16f0  160  CASUtils_SimBuilderGetIsDirtyImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      return *(int *)(iVar2 + 0x1c) != 0;
    }
  }
  return false;
}

