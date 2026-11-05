/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_TextSearchStartSearchImpl. Export
   ordinal(s): 256. Entry VA: 0x103a7450. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600047C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl CASUtils_TextSearchStartSearchImpl(uint param_1,undefined4 param_2)

{
  int *piVar1;
  void *this;
  short *psVar2;
  uint uVar3;
  char unaff_retaddr;
  
                    /* 0x3a7450  256  CASUtils_TextSearchStartSearchImpl */
  if ((param_1 & 0xff000000) != 0x35000000) {
    return 0;
  }
  piVar1 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if (this == (void *)0x0) {
    return 0;
  }
  psVar2 = (short *)(**(code **)(*piVar1 + 0x58))(param_2);
  uVar3 = FUN_103a7300(this,unaff_retaddr,psVar2);
  return uVar3;
}

