/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_SetCameraOffsetImpl. Export ordinal(s):
   136. Entry VA: 0x103a2880. Original managed P/Invoke MethodDef(s): ScriptCore:0x060003E7. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_SetCameraOffsetImpl(undefined4 param_1,undefined4 param_2)

{
  int iVar1;
  int *piVar2;
  undefined4 unaff_retaddr;
  
                    /* 0x3a2880  136  CASUtils_SetCameraOffsetImpl */
  iVar1 = FUN_1075c630();
  iVar1 = FUN_10937a80(iVar1);
  piVar2 = (int *)FUN_1075c950(iVar1);
  if (piVar2 != (int *)0x0) {
    piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xe5b55c53);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x68))(unaff_retaddr,param_1,param_2);
    }
  }
  return;
}

