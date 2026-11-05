/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderGetNumBonesImpl. Export
   ordinal(s): 167. Entry VA: 0x103a17e0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000421. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl CASUtils_SimBuilderGetNumBonesImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x3a17e0  167  CASUtils_SimBuilderGetNumBonesImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      iVar2 = FUN_103db510(piVar1);
      return iVar2;
    }
  }
  return 0;
}

