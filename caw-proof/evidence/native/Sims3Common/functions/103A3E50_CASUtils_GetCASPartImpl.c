/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_GetCASPartImpl. Export ordinal(s): 100.
   Entry VA: 0x103a3e50. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000497. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
CASUtils_GetCASPartImpl(int *param_1,uint param_2,uint param_3,uint param_4,_GUID *param_5)

{
  int *piVar1;
  int iVar2;
  int local_48 [18];
  
                    /* 0x3a3e50  100  CASUtils_GetCASPartImpl */
  piVar1 = FUN_103a35c0(local_48,param_2,param_3,param_4,param_5);
  for (iVar2 = 0x12; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *piVar1;
    piVar1 = piVar1 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

