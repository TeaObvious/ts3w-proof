/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_AttachCameraFlashWinProcImpl. Export
   ordinal(s): 1068. Entry VA: 0x1056fb70. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060006EC. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl UIManager_AttachCameraFlashWinProcImpl(undefined4 param_1)

{
  int *piVar1;
  uint *puVar2;
  int *piVar3;
  
  piVar1 = (int *)FUN_1055b120();
  piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
  if ((piVar1 != (int *)0x0) &&
     (piVar1 = (int *)(**(code **)(*piVar1 + 0xc))(0xeeee8218), piVar1 != (int *)0x0)) {
    puVar2 = FUN_10937870(0x10,4,"Scripting/UIHost/CameraFlashWinProc",(int *)0x0);
    if (puVar2 == (uint *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = (int *)FUN_105d0280(puVar2);
      if (piVar3 != (int *)0x0) {
        (**(code **)*piVar3)();
      }
    }
    (**(code **)(*piVar1 + 0x108))(piVar3);
    if (piVar3 != (int *)0x0) {
                    /* WARNING: Could not recover jumptable at 0x1056f516. Too many branches */
                    /* WARNING: Treating indirect jump as call */
      (**(code **)(*piVar3 + 4))();
      return;
    }
  }
  return;
}

