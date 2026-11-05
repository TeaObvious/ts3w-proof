/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimOutfitGetUniformComponentsImpl.
   Export ordinal(s): 234. Entry VA: 0x103a1d60. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600046F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined8 __cdecl CASUtils_SimOutfitGetUniformComponentsImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x3a1d60  234  CASUtils_SimOutfitGetUniformComponentsImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      return *(undefined8 *)(iVar2 + 0xd0);
    }
  }
  return 0xffffffffffffffff;
}

