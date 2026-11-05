/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderSetUseCompressionImpl. Export
   ordinal(s): 205. Entry VA: 0x103a1620. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000419. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl CASUtils_SimBuilderSetUseCompressionImpl(uint param_1)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x3a1620  205  CASUtils_SimBuilderSetUseCompressionImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if ((iVar2 != 0) && ((char)param_1 != *(char *)(iVar2 + 0x69))) {
      *(uint *)(iVar2 + 0x1c) = *(uint *)(iVar2 + 0x1c) | 0x4f00;
      *(char *)(iVar2 + 0x69) = (char)param_1;
      *(undefined4 *)(iVar2 + 0x14) = 0x1f;
      *(undefined4 *)(iVar2 + 0x18) = 0x1f;
    }
  }
  return;
}

