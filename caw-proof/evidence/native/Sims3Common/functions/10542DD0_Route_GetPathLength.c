/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_GetPathLength. Export ordinal(s): 654.
   Entry VA: 0x10542dd0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600018F. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

float10 __cdecl Route_GetPathLength(uint param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  float10 fVar5;
  
                    /* 0x542dd0  654  Route_GetPathLength */
  if (DAT_10c78944 != (void *)0x0) {
    piVar3 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x10))();
      piVar4 = (int *)piVar3[0x38];
      piVar2 = piVar3 + 0x38;
      if (piVar4 != piVar2) {
        do {
          if (param_2 == 0) break;
          piVar4 = (int *)*piVar4;
          param_2 = param_2 + -1;
        } while (piVar4 != piVar2);
        if ((piVar4 != piVar2) && (piVar2 = (int *)piVar4[2], piVar2 != (int *)0x0)) {
          piVar4 = piVar2 + 1;
          LOCK();
          *piVar4 = *piVar4 + 1;
          UNLOCK();
          fVar5 = (float10)(**(code **)(*piVar2 + 300))();
          LOCK();
          iVar1 = *piVar4;
          *piVar4 = *piVar4 + -1;
          UNLOCK();
          if (iVar1 == 1) {
            LOCK();
            *piVar4 = 1;
            UNLOCK();
            (**(code **)*piVar2)(1);
          }
          (**(code **)(*piVar3 + 0x14))();
          return (float10)(float)fVar5;
        }
      }
      (**(code **)(*piVar3 + 0x14))();
    }
  }
  return (float10)0;
}

