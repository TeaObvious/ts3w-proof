/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_FacialBlendGetNameImpl. Export
   ordinal(s): 91. Entry VA: 0x103a7210. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x0600043C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl CASUtils_FacialBlendGetNameImpl(undefined **param_1)

{
  int *piVar1;
  int iVar2;
  uint unaff_EDI;
  undefined **ppuStack_2c;
  undefined4 uStack_8;
  
  if (((uint)param_1 & 0xff000000) != 0x35000000) {
    return 0;
  }
  ppuStack_2c = (undefined **)0x103a6493;
  piVar1 = (int *)FUN_1055b120();
  ppuStack_2c = param_1;
  iVar2 = (**(code **)(*piVar1 + 0xcc))();
  if ((iVar2 != 0) && ((*(int *)(iVar2 + 0x2c) - *(int *)(iVar2 + 0x28) & 0xfffffffeU) != 0)) {
    FUN_102c0de0(&stack0xffffffdc,(void *)(iVar2 + 0x28));
    (**(code **)(*piVar1 + 0x50))(&stack0xffffffdc,&stack0x00000000);
    ppuStack_2c = &PTR_FUN_10aca5b4;
    if ((unaff_EDI & 4) != 0) {
      FUN_10928a90(&ppuStack_2c,'\0');
    }
    return uStack_8;
  }
  return 0;
}

