/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   LocalizedStringService_GetLocalizedStringByString. Export ordinal(s): 434. Entry VA: 0x10535040.
   Original managed P/Invoke MethodDef(s): ScriptCore:0x06000020. This is an export/declaration
   annotation only; ABI, behavior and runtime execution require the original instructions and caller
   evidence. */

void __cdecl LocalizedStringService_GetLocalizedStringByString(undefined4 param_1)

{
  int *piVar1;
  wint_t *pwVar2;
  void *this;
  
                    /* 0x535040  434  LocalizedStringService_GetLocalizedStringByString */
  piVar1 = (int *)FUN_1055b120();
  pwVar2 = (wint_t *)(**(code **)(*piVar1 + 0x58))(param_1);
  this = (void *)FUN_10395250();
  FUN_10396cb0(this,pwVar2);
  return;
}

