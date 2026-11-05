/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC1.67 hand-tool ownership/physical ABI closure. Retires object-tool command
   ownership, including stores of zero to command slots5C and60. The current-held lookup returns
   null after the selected command slot is empty. The containing completion caller invokes this
   through primary virtual slot88 before later completed-edit notification. */

void __fastcall ObjectTool_RetireEditCommands(void *param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int *piVar3;
  undefined4 uVar4;
  void *pvVar5;
  int *piVar6;
  int *local_4;
  
  local_4 = (int *)0x0;
  piVar6 = (int *)0x0;
  if (*(char *)((int)param_1 + 0x2f7) == '\0') {
    piVar3 = *(int **)((int)param_1 + 0x5c);
    if (piVar3 != (int *)0x0) {
      piVar3[1] = piVar3[1] + 1;
      piVar6 = piVar3;
    }
    piVar3 = *(int **)((int)param_1 + 0x60);
  }
  else {
    piVar3 = *(int **)((int)param_1 + 0x60);
    if (piVar3 != (int *)0x0) {
      piVar3[1] = piVar3[1] + 1;
      piVar6 = piVar3;
    }
    piVar3 = *(int **)((int)param_1 + 0x5c);
  }
  if (piVar3 != (int *)0x0) {
    piVar3[1] = piVar3[1] + 1;
    local_4 = piVar3;
  }
  FUN_00d1b190(piVar6,*(undefined4 **)((int)param_1 + 0x260));
  FUN_00d1b190(piVar6,*(undefined4 **)((int)param_1 + 0x1e0));
  FUN_00d1b190(piVar6,*(undefined4 **)((int)param_1 + 0x268));
  FUN_00d1b200(piVar6,*(undefined4 **)((int)param_1 + 0x264));
  uVar4 = FUN_00d1a910(*(int **)((int)param_1 + 0x26c));
  if ((char)uVar4 != '\0') {
    FUN_00d1b200(piVar6,*(undefined4 **)((int)param_1 + 0x26c));
  }
  if (((((*(int *)((int)param_1 + 0x138) != DAT_011ec8d0) ||
        (*(int *)((int)param_1 + 0x140) != DAT_011ec8d8)) ||
       (*(int *)((int)param_1 + 0x144) != DAT_011ec8dc)) ||
      (*(int *)((int)param_1 + 0x13c) != DAT_011ec8d4)) &&
     (piVar3 = *(int **)((int)param_1 + 100), piVar3 != (int *)0x0)) {
    if (*(char *)((int)param_1 + 0x103) == '\0') {
      FUN_00d28560(piVar3);
    }
    else {
      if (((void *)piVar3[0x16] != (void *)0x0) &&
         (pvVar5 = Object_GetComponentByMask((void *)piVar3[0x16],DAT_011ea2a8),
         pvVar5 != (void *)0x0)) {
        VisualState_SetOpacityTransition(pvVar5,1.0,0.0,0.0,0);
      }
      pvVar5 = *(void **)(*(int *)((int)param_1 + 100) + 0x58);
      if ((pvVar5 != (void *)0x0) &&
         (pvVar5 = Object_GetComponentByMask(pvVar5,DAT_011e9fa8), pvVar5 != (void *)0x0)) {
        FootprintComponent_SetEnabledAndNotifyRouting(pvVar5,1,0);
      }
    }
    uVar4 = FUN_00d1a910(*(int **)((int)param_1 + 100));
    if ((char)uVar4 != '\0') {
      FUN_00d1b200(piVar6,*(undefined4 **)((int)param_1 + 100));
    }
  }
  if ((((*(int *)((int)param_1 + 0x1b8) != 0) &&
       ((*(uint *)(*(int *)((int)param_1 + 0x1b8) + 0xd0) >> 0x1e & 1) != 0)) &&
      (*(int **)((int)param_1 + 0x68) != (int *)0x0)) &&
     (uVar4 = FUN_00d1a910(*(int **)((int)param_1 + 0x68)), (char)uVar4 != '\0')) {
    FUN_00d1b200(piVar6,*(undefined4 **)((int)param_1 + 0x68));
  }
  if (*(char *)((int)param_1 + 0x1d0) == '\0') {
    piVar3 = *(int **)((int)param_1 + 0x6c);
    if (*(char *)((int)param_1 + 0x2f5) != '\0') {
      FUN_00cfaf80(param_1,(void *)piVar3[0x16],1.4013e-45,'\0');
    }
    FUN_00d28560(local_4);
    if ((local_4 == piVar3) && (*(int *)((int)param_1 + 0x108) != 1)) {
      (**(code **)(*local_4 + 0x2c))(0);
      FUN_00d1b200(piVar6,local_4);
    }
    else {
      (**(code **)(*local_4 + 8))();
    }
  }
  else {
    (**(code **)(*local_4 + 0x20))();
    (**(code **)(*local_4 + 8))();
  }
  FUN_00d25c70((int)piVar6);
  (**(code **)(*piVar6 + 0x54))(*(undefined4 *)((int)param_1 + 0x108));
  if (*(void **)((int)param_1 + 0x70) == (void *)0x0) {
    UserTool_SubmitUndoableWithCostEffects(param_1,piVar6,'\0');
  }
  else {
    FUN_00d1b190(*(void **)((int)param_1 + 0x70),piVar6);
  }
  puVar1 = *(undefined4 **)((int)param_1 + 0x5c);
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)((int)param_1 + 0x5c) = 0;
    iVar2 = puVar1[1];
    puVar1[1] = iVar2 + -1;
    if (iVar2 + -1 == 0) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  puVar1 = *(undefined4 **)((int)param_1 + 0x60);
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)((int)param_1 + 0x60) = 0;
    iVar2 = puVar1[1];
    puVar1[1] = iVar2 + -1;
    if (iVar2 + -1 == 0) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  puVar1 = *(undefined4 **)((int)param_1 + 0x260);
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)((int)param_1 + 0x260) = 0;
    iVar2 = puVar1[1];
    puVar1[1] = iVar2 + -1;
    if (iVar2 + -1 == 0) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  puVar1 = *(undefined4 **)((int)param_1 + 0x1e0);
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)((int)param_1 + 0x1e0) = 0;
    iVar2 = puVar1[1];
    puVar1[1] = iVar2 + -1;
    if (iVar2 + -1 == 0) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  puVar1 = *(undefined4 **)((int)param_1 + 0x268);
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)((int)param_1 + 0x268) = 0;
    iVar2 = puVar1[1];
    puVar1[1] = iVar2 + -1;
    if (iVar2 + -1 == 0) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  puVar1 = *(undefined4 **)((int)param_1 + 0x264);
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)((int)param_1 + 0x264) = 0;
    iVar2 = puVar1[1];
    puVar1[1] = iVar2 + -1;
    if (iVar2 + -1 == 0) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  *(undefined4 *)((int)param_1 + 0x6c) = 0;
  *(undefined4 *)((int)param_1 + 0x108) = 0;
  puVar1 = *(undefined4 **)((int)param_1 + 100);
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)((int)param_1 + 100) = 0;
    iVar2 = puVar1[1];
    puVar1[1] = iVar2 + -1;
    if (iVar2 + -1 == 0) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  puVar1 = *(undefined4 **)((int)param_1 + 0x68);
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)((int)param_1 + 0x68) = 0;
    iVar2 = puVar1[1];
    puVar1[1] = iVar2 + -1;
    if (iVar2 + -1 == 0) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  puVar1 = *(undefined4 **)((int)param_1 + 0x26c);
  if (puVar1 != (undefined4 *)0x0) {
    *(undefined4 *)((int)param_1 + 0x26c) = 0;
    iVar2 = puVar1[1];
    puVar1[1] = iVar2 + -1;
    if (iVar2 + -1 == 0) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  FUN_00d001a0(param_1,'\x01');
  iVar2 = local_4[1];
  local_4[1] = iVar2 + -1;
  if (iVar2 + -1 == 0) {
    local_4[1] = 1;
    (**(code **)*local_4)(1);
  }
  iVar2 = piVar6[1];
  piVar6[1] = iVar2 + -1;
  if (iVar2 + -1 == 0) {
    piVar6[1] = 1;
    (**(code **)*piVar6)(1);
  }
  return;
}

