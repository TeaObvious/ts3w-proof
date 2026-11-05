/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_TextSearchSearchImpl. Export ordinal(s):
   255. Entry VA: 0x103a7950. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600047D. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl CASUtils_TextSearchSearchImpl(char *param_1,float param_2)

{
  uint uVar1;
  int *piVar2;
  void *this;
  undefined4 uVar3;
  
                    /* 0x3a7950  255  CASUtils_TextSearchSearchImpl */
  uVar1 = (uint)param_1 & 0xff000000;
  if (uVar1 == 0x35000000) {
    piVar2 = (int *)FUN_1055b120();
    this = (void *)(**(code **)(*piVar2 + 0xcc))(param_1);
    uVar1 = 0;
    if (this != (void *)0x0) {
      uVar3 = FUN_103a7570(this,param_1,param_2);
      return uVar3;
    }
  }
  return CONCAT31((int3)(uVar1 >> 8),1);
}

