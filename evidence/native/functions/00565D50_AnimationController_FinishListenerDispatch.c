/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 original instruction review. Analyst-assigned name. Decrements listener-interface
   dispatch depth at+0xc. Only when zero, unlinks/frees nodes whose listener pointer+8 is null.
   Enables removal inside callback without invalidating traversal. */

void __fastcall AnimationController_FinishListenerDispatch(int param_1)

{
  int *piVar1;
  int *piVar2;
  int *piVar3;
  
  piVar1 = (int *)(param_1 + 0xc);
  *piVar1 = *piVar1 + -1;
  if (*piVar1 == 0) {
    piVar1 = *(int **)(param_1 + 4);
    while (piVar1 != (int *)(param_1 + 4)) {
      if (piVar1[2] == 0) {
        piVar2 = (int *)piVar1[1];
        piVar3 = (int *)*piVar1;
        *piVar2 = (int)piVar3;
        piVar3[1] = (int)piVar2;
        Memory_FreeIfNonNull(piVar1);
        piVar1 = piVar3;
      }
      else {
        piVar1 = (int *)*piVar1;
      }
    }
  }
  return;
}

