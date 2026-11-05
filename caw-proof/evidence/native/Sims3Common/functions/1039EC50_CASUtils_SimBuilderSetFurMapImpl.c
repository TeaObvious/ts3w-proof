/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderSetFurMapImpl. Export
   ordinal(s): 187. Entry VA: 0x1039ec50. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000406. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
CASUtils_SimBuilderSetFurMapImpl
          (uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x39ec50  187  CASUtils_SimBuilderSetFurMapImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      *(uint *)(iVar2 + 0x1c) = *(uint *)(iVar2 + 0x1c) | 0x20000;
      *(undefined4 *)(iVar2 + 0x270) = param_3;
      *(undefined4 *)(iVar2 + 0x274) = param_4;
      *(uint *)(iVar2 + 0x278) = param_1;
      *(undefined4 *)(iVar2 + 0x27c) = param_2;
    }
  }
  return;
}

