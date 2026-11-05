/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetDistanceBetweenSegments. Export
   ordinal(s): 636. Entry VA: 0x105483a0. Original managed P/Invoke MethodDef(s):
   ScriptCore:0x060001BE. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

float10 __cdecl Route_GetDistanceBetweenSegments(uint param_1,undefined4 param_2,undefined4 param_3)

{
  int *piVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  float10 fVar5;
  
  if (DAT_10c78944 == (void *)0x0) goto LAB_10544f14;
  piVar3 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
  if (piVar3 == (int *)0x0) goto LAB_10544f14;
  (**(code **)(*piVar3 + 0x10))();
  if ((char)piVar3[0x3d] == '\0') {
    piVar4 = piVar3 + 0x38;
    if ((int *)*piVar4 != piVar4) {
      piVar4 = *(int **)(*piVar4 + 8);
      goto LAB_10544eb0;
    }
  }
  else {
    piVar4 = (int *)piVar3[0x3b];
LAB_10544eb0:
    if (piVar4 != (int *)0x0) {
      piVar1 = piVar4 + 1;
      LOCK();
      *piVar1 = *piVar1 + 1;
      UNLOCK();
      fVar5 = (float10)(**(code **)(*piVar4 + 0x70))(param_2,param_3);
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*piVar4)(1);
      }
      (**(code **)(*piVar3 + 0x14))();
      return (float10)(float)fVar5;
    }
  }
  (**(code **)(*piVar3 + 0x14))();
LAB_10544f14:
  return (float10)0;
}

