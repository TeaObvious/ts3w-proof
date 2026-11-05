/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_GetSkinColorDominantImpl. Export
   ordinal(s): 106. Entry VA: 0x103a1db0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x06000485. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined1 __cdecl
CASUtils_GetSkinColorDominantImpl
          (undefined4 param_1,undefined4 param_2,int param_3,undefined4 param_4)

{
  int iVar1;
  char cVar2;
  int *piVar3;
  int *piVar4;
  undefined1 local_14 [4];
  int local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x3a1db0  106  CASUtils_GetSkinColorDominantImpl */
  piVar3 = (int *)FUN_108e50d0();
  local_10 = param_3;
  local_8 = param_1;
  local_c = param_4;
  local_4 = param_2;
  piVar4 = &local_10;
  cVar2 = (**(code **)(*piVar3 + 0xc))(piVar4,local_14,0,0,0,0);
  if (cVar2 != '\0') {
    if ((piVar4 != (int *)0x0) &&
       (piVar3 = (int *)(**(code **)(*piVar4 + 0xc))(0x3584920), piVar3 != (int *)0x0)) {
      iVar1 = piVar3[0x12];
      (**(code **)(*piVar3 + 4))();
      return (char)iVar1;
    }
    (**(code **)(*piVar4 + 4))();
  }
  return 0;
}

