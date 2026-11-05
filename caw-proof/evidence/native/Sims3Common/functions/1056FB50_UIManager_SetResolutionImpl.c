/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_SetResolutionImpl. Export ordinal(s):
   1156. Entry VA: 0x1056fb50. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006E4. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

void __cdecl UIManager_SetResolutionImpl(int param_1,int param_2,int param_3,undefined1 param_4)

{
  int *piVar1;
  int *piVar2;
  
  piVar1 = (int *)FUN_108835e0();
  if (piVar1 != (int *)0x0) {
    piVar2 = (int *)FUN_10918eb0(0x18,"UI/SetResolutionMessage",0);
    if (piVar2 == (int *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      *piVar2 = (int)&PTR_FUN_10b60b30;
      LOCK();
      piVar2[1] = 0;
      UNLOCK();
      piVar2[2] = param_1;
      piVar2[3] = param_2;
      piVar2[4] = param_3;
      *piVar2 = (int)&PTR_FUN_10b60b30;
      *(undefined1 *)(piVar2 + 5) = param_4;
      (**(code **)(*piVar2 + 4))();
    }
    (**(code **)(*piVar1 + 0x1c))(0x7983246,piVar2,0,0);
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 8))();
      return;
    }
  }
  return;
}

