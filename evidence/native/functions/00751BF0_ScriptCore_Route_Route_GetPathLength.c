/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011619b8 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_GetPathLength [assembly=ScriptCore token=0x0600111A; handle:
   System.UInt32, pathIndex: System.UInt32; return=System.Single]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float10 ScriptCore_Route__Route_GetPathLength(uint param_1,int param_2)

{
  int iVar1;
  int *piVar2;
  int *piVar3;
  int *piVar4;
  float10 fVar5;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar3 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
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

