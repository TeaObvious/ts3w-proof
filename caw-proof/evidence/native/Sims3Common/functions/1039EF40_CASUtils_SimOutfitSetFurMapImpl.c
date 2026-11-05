/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SimOutfitSetFurMapImpl. Export
   ordinal(s): 237. Entry VA: 0x1039ef40. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000464. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
CASUtils_SimOutfitSetFurMapImpl
          (uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4)

{
  int *piVar1;
  int iVar2;
  
                    /* 0x39ef40  237  CASUtils_SimOutfitSetFurMapImpl */
  if ((param_1 & 0xff000000) == 0x35000000) {
    piVar1 = (int *)FUN_1055b120();
    iVar2 = (**(code **)(*piVar1 + 0xcc))(param_1);
    if (iVar2 != 0) {
      *(undefined4 *)(iVar2 + 0x88) = param_3;
      *(undefined4 *)(iVar2 + 0x8c) = param_4;
      *(uint *)(iVar2 + 0x90) = param_1;
      *(undefined4 *)(iVar2 + 0x94) = param_2;
    }
  }
  return;
}

