/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Builds completion payload while
   retaining self, calls DispatchCompletedOnce unconditionally, then releases payload object and
   self. Stop can emit completion before Started; one-shot latch suppresses repeated completion. */

void __fastcall Animation_SendCompletedFromStop(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *local_18;
  undefined4 *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined1 local_4;
  undefined1 local_3;
  undefined1 local_2;
  
  if (param_1 != (undefined4 *)0x0) {
    param_1[1] = param_1[1] + 1;
  }
  local_10 = param_1[7];
  local_14 = (undefined4 *)0x0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  local_3 = 0;
  local_2 = 0;
  local_18 = param_1;
  Animation_DispatchCompletedOnce(param_1,&local_18);
  if (local_14 != (undefined4 *)0x0) {
    piVar1 = local_14 + 1;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      if (local_14 != (undefined4 *)0x0) {
        (**(code **)*local_14)(1);
      }
    }
  }
  iVar2 = param_1[1];
  param_1[1] = iVar2 + -1;
  if (iVar2 + -1 == 0) {
    param_1[1] = 1;
    (**(code **)*param_1)(1);
  }
  return;
}

