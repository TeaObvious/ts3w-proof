/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_GetWindowCursorImpl. Export ordinal(s):
   1116. Entry VA: 0x1056bf50. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006B9. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

undefined4 __cdecl UIManager_GetWindowCursorImpl(undefined4 param_1)

{
  int *piVar1;
  void *this;
  undefined4 *puVar2;
  undefined4 uVar3;
  
                    /* 0x56bf50  1116  UIManager_GetWindowCursorImpl */
  piVar1 = (int *)FUN_1055b120();
  this = (void *)FUN_105e3340();
  if (this != (void *)0x0) {
    puVar2 = (undefined4 *)FUN_105e3b10(this,param_1);
    if (puVar2 != (undefined4 *)0x0) {
      (**(code **)*puVar2)();
      uVar3 = (**(code **)(*piVar1 + 200))(puVar2,0x30);
      return uVar3;
    }
  }
  return 0;
}

