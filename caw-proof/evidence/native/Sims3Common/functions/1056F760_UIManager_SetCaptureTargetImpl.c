/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_SetCaptureTargetImpl. Export
   ordinal(s): 1149. Entry VA: 0x1056f760. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006AD. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_SetCaptureTargetImpl(undefined4 param_1,uint param_2)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = (int *)FUN_1055b120();
  if ((((param_2 & 0xff000000) == 0x30000000) &&
      (piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_2), piVar1 != (int *)0x0)) &&
     (iVar2 = (**(code **)(*piVar1 + 0xc))(0xeeee8218), iVar2 != 0)) {
    piVar1 = (int *)FUN_1093d2e0();
    (**(code **)(*piVar1 + 100))(param_2,iVar2,param_1);
  }
  return;
}

