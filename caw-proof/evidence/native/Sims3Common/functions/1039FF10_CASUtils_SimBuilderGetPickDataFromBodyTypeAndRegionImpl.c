/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl. Export ordinal(s): 170. Entry VA:
   0x1039ff10. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000417. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

int __cdecl CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl(uint param_1,int param_2)

{
  int *piVar1;
  void *this;
  int iVar2;
  
                    /* 0x39ff10  170  CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (this != (void *)0x0) {
      iVar2 = FUN_103db4a0(this,param_1,param_2);
      return iVar2;
    }
  }
  return 0;
}

