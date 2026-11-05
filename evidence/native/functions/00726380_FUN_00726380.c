/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


void __fastcall FUN_00726380(undefined4 *param_1)

{
  int *piVar1;
  uint uVar2;
  
  if (param_1[6] != 0) {
    uVar2 = 0;
    if (param_1[5] != 0) {
      do {
        piVar1 = (int *)(*(uint *)(param_1[10] + uVar2 * 4) & 0xfffffffe);
        if (piVar1 != (int *)0x0) {
          (**(code **)(*piVar1 + 4))();
        }
        uVar2 = uVar2 + 1;
      } while (uVar2 < (uint)param_1[5]);
    }
    FUN_004e5e70(DAT_011cc864,param_1[6]);
    param_1[6] = 0;
    param_1[1] = *param_1;
    return;
  }
  param_1[1] = *param_1;
  return;
}

