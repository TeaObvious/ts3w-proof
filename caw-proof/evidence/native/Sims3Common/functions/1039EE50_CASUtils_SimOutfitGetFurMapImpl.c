/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimOutfitGetFurMapImpl. Export
   ordinal(s): 217. Entry VA: 0x1039ee50. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000461. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl CASUtils_SimOutfitGetFurMapImpl(undefined4 *param_1,uint param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  
                    /* 0x39ee50  217  CASUtils_SimOutfitGetFurMapImpl */
  *param_1 = 0;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  if ((param_2 & 0xff000000) == 0x35000000) {
    piVar3 = (int *)FUN_1055b120();
    iVar4 = (**(code **)(*piVar3 + 0xcc))(param_2);
    if (iVar4 != 0) {
      uVar1 = *(undefined4 *)(iVar4 + 0x88);
      param_1[1] = *(undefined4 *)(iVar4 + 0x94);
      uVar2 = *(undefined4 *)(iVar4 + 0x8c);
      param_1[2] = uVar1;
      uVar1 = *(undefined4 *)(iVar4 + 0x90);
      param_1[3] = uVar2;
      *param_1 = uVar1;
    }
  }
  return param_1;
}

