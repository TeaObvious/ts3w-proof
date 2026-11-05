/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_FrameDrawableGenericImpl. Export
   ordinal(s): 1087. Entry VA: 0x1056faa0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006DE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UIManager_FrameDrawableGenericImpl(uint param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  undefined4 unaff_retaddr;
  
  piVar1 = (int *)FUN_1055b120();
  if ((((param_1 & 0xff000000) == 0x30000000) &&
      (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1), piVar1 != (int *)0x0)) &&
     (iVar2 = (**(code **)(*piVar1 + 0xc))(0x30d54ac), iVar2 != 0)) {
    switch(unaff_retaddr) {
    case 0:
      return *(undefined4 *)(iVar2 + 0xc + param_1 * 8);
    case 1:
      *(undefined4 *)(iVar2 + 0xc + param_1 * 8) = param_2;
      return 0;
    case 2:
      return *(undefined4 *)(iVar2 + 0x10 + param_1 * 8);
    case 3:
      *(undefined4 *)(iVar2 + 0x10 + param_1 * 8) = param_2;
    }
  }
  return 0;
}

