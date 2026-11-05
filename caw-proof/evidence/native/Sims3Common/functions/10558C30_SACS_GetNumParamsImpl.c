/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_GetNumParamsImpl. Export ordinal(s): 718.
   Entry VA: 0x10558c30. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EB0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl SACS_GetNumParamsImpl(undefined4 param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x558c30  718  SACS_GetNumParamsImpl */
  piVar1 = (int *)FUN_1055b120();
  iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
  if (iVar2 != 0) {
    iVar2 = FUN_105f1c10(iVar2);
    return iVar2;
  }
  return 0;
}

