/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_TextSearchLookupResultImpl. Export
   ordinal(s): 254. Entry VA: 0x103a5a70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000481. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl
CASUtils_TextSearchLookupResultImpl(undefined4 *param_1,uint param_2,uint param_3)

{
  int *piVar1;
  void *this;
  undefined4 uVar2;
  int *unaff_retaddr;
  
                    /* 0x3a5a70  254  CASUtils_TextSearchLookupResultImpl */
  memset(param_1,0,0x48);
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_2);
    if (this != (void *)0x0) {
      uVar2 = FUN_103a5870(this,param_2,param_3);
      if ((char)uVar2 != '\0') {
        FUN_103a20d0((uint *)(unaff_retaddr + 2),param_1);
        (**(code **)(*unaff_retaddr + 4))();
      }
    }
  }
  return param_1;
}

