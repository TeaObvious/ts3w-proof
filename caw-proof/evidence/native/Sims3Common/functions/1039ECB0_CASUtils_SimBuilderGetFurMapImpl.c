/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimBuilderGetFurMapImpl. Export
   ordinal(s): 159. Entry VA: 0x1039ecb0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000409. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl CASUtils_SimBuilderGetFurMapImpl(undefined4 *param_1,uint param_2)

{
  undefined4 uVar1;
  int *piVar2;
  int iVar3;
  
                    /* 0x39ecb0  159  CASUtils_SimBuilderGetFurMapImpl */
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar2 = (int *)FUN_1055b120();
    iVar3 = (**(code **)(*piVar2 + 0xcc))(param_2);
    if (iVar3 != 0) {
      *param_1 = *(undefined4 *)(iVar3 + 0x278);
      param_1[1] = *(undefined4 *)(iVar3 + 0x27c);
      uVar1 = *(undefined4 *)(iVar3 + 0x270);
      param_1[3] = *(undefined4 *)(iVar3 + 0x274);
      param_1[2] = uVar1;
      return param_1;
    }
  }
  return param_1;
}

