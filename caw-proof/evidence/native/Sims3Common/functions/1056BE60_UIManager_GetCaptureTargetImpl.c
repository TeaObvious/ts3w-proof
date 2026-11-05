/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetCaptureTargetImpl. Export
   ordinal(s): 1090. Entry VA: 0x1056be60. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006AC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetCaptureTargetImpl(undefined4 param_1)

{
  int *piVar1;
  int *piVar2;
  undefined4 *puVar3;
  undefined4 uVar4;
  
                    /* 0x56be60  1090  UIManager_GetCaptureTargetImpl */
  piVar1 = (int *)FUN_1055b120();
  piVar2 = (int *)FUN_1093d2e0();
  puVar3 = (undefined4 *)(**(code **)(*piVar2 + 0x60))(param_1);
  if (puVar3 != (undefined4 *)0x0) {
    (**(code **)*puVar3)();
    uVar4 = (**(code **)(*piVar1 + 200))(puVar3,0x30);
    return uVar4;
  }
  return 0;
}

