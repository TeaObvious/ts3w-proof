/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_00ec7aa0. Reveals installed milestone child 06EB410F+count when below 06EB4123. ECX
   object, RET, x87 result. Recursive child lookup under load_FX; found child supplies effect
   duration, restarts effect clock, is shown and marks timed-effect pending. Missing-child branch
   does not establish an initialized return value: do not read decompiler unaff_ESI as a constant.
   Host omission policy and callback dispatch are separate contracts. */

float10 __fastcall AppLoadingScreen_RevealMilestone(int param_1)

{
  int iVar1;
  int *piVar2;
  float unaff_ESI;
  float10 fVar3;
  
  iVar1 = *(int *)(param_1 + 0x25c) + 0x6eb410f;
  if (iVar1 < 0x6eb4123) {
    piVar2 = (int *)(**(code **)(**(int **)(param_1 + 0x27c) + 0xf4))(iVar1,1);
    if (piVar2 != (int *)0x0) {
      fVar3 = FUN_00ec7740(piVar2);
      unaff_ESI = (float)fVar3;
      ElapsedClock_Restart((DWORD *)(param_1 + 0x2c0));
      (**(code **)(*piVar2 + 0x74))(1,1);
      *(undefined1 *)(param_1 + 0x2e2) = 1;
    }
    return (float10)unaff_ESI;
  }
  return (float10)0.0;
}

