/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Releases atomic auxiliary/object
   ref+0x5d8, resource refs+0x5d4 and+0x5d0 via virtual Release, namespace map and base controller
   list. Resource lifetime survives bridge temporary through BindResource AddRef. */

void __fastcall AnimationClipController_Destroy(undefined4 *param_1)

{
  int *piVar1;
  int iVar2;
  undefined4 *puVar3;
  
  *param_1 = &PTR_FUN_00fc2bb0;
  param_1[2] = &PTR_LAB_00fc2ba4;
  param_1[3] = &PTR_LAB_00fc2ba0;
  puVar3 = (undefined4 *)param_1[0x176];
  if (puVar3 != (undefined4 *)0x0) {
    piVar1 = puVar3 + 1;
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      if (puVar3 != (undefined4 *)0x0) {
        (**(code **)*puVar3)(1);
      }
    }
  }
  if ((int *)param_1[0x175] != (int *)0x0) {
    (**(code **)(*(int *)param_1[0x175] + 4))();
  }
  if ((int *)param_1[0x174] != (int *)0x0) {
    (**(code **)(*(int *)param_1[0x174] + 4))();
  }
  FUN_00578dc0(param_1 + 0x13c);
  AnimationController_DestroyBase(param_1);
  return;
}

