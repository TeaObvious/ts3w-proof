/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_TextSearchAddKeywordImpl. Export
   ordinal(s): 247. Entry VA: 0x103a85b0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600047B. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl CASUtils_TextSearchAddKeywordImpl(uint param_1)

{
  int *piVar1;
  void *this;
  short *psVar2;
  
                    /* 0x3a85b0  247  CASUtils_TextSearchAddKeywordImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (this != (void *)0x0) {
      psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_1);
      FUN_103a8090(this,psVar2,(uint *)&stack0xffffffe8);
    }
  }
  return;
}

