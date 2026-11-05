/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. Original window-event bridge. Mousemove case7 normalizes physical
   coordinates via PixelsToLogical. Under capture, reads integer anchor+50/+54; an event exactly
   atanchor is suppressed, otherwise dispatches input vtable+38 first and warps cursor through
   window vtable+84 backtoanchor. This ordering lets MainCamera_HandleInputTrigger queue
   anchor-minus-event compensation and store current=anchor. Ghidra reconstructed local
   packing/types are imperfect; paired instructions verify branches and dispatch-before-warp. */

void __cdecl InputService_DispatchMouseEvent(int param_1,int param_2)

{
  char cVar1;
  int iVar2;
  byte bVar3;
  int iVar4;
  int *piVar5;
  undefined3 extraout_var;
  undefined3 extraout_var_00;
  undefined3 extraout_var_01;
  undefined3 extraout_var_02;
  undefined3 extraout_var_03;
  void *this;
  undefined4 uStack_2c;
  undefined1 local_1c [8];
  float local_14;
  float local_10;
  float local_c;
  undefined4 local_8;
  undefined4 local_4;

  iVar4 = FUN_006e8170();
  this = (void *)0x0;
  if (iVar4 != 0) {
    this = *(void **)(iVar4 + 0x38);
  }
  piVar5 = (int *)FUN_0050af90();
  if (piVar5 == (int *)0x0) {
    return;
  }
  switch(*(undefined4 *)(param_1 + 8)) {
  case 1:
    local_10 = 0.0;
    local_14 = (float)(2 - (uint)(*(char *)(param_1 + 0x11) != '\0'));
    bVar3 = FUN_00598ea0();
    local_8 = CONCAT31(extraout_var_02,bVar3);
LAB_0059959d:
    local_c = *(float *)(param_1 + 0xc);
    goto LAB_005995a4;
  case 2:
    local_14 = 7.00649e-45;
    local_10 = 0.0;
    bVar3 = FUN_00598ea0();
    local_8 = CONCAT31(extraout_var_03,bVar3);
    if (DAT_011cf2c4 == '\0') goto LAB_0059959d;
    local_c = *(float *)(param_1 + 0xc);
    if (0x7f < (uint)local_c) {
      local_c = 4.48416e-44;
    }
LAB_005995a4:
    (**(code **)(*piVar5 + 0x38))(local_1c);
    break;
  case 5:
    local_4 = *(undefined4 *)(param_1 + 0xc);
    local_14 = (float)(7 - (uint)(*(char *)(param_1 + 0x10) != '\0'));
    InputService_PixelsToLogical
              (&local_10,&local_c,*(int *)(param_1 + 0x14),*(int *)(param_1 + 0x18));
    bVar3 = FUN_00598ea0();
    local_8 = CONCAT31(extraout_var_00,bVar3);
    (**(code **)(*piVar5 + 0x38))(local_1c);
    if (this != (void *)0x0) {
      FUN_006ded10(this,(int)local_14,(int)local_10);
      return;
    }
    break;
  case 6:
    local_14 = 1.26117e-44;
    InputService_PixelsToLogical
              (&local_10,&local_c,*(int *)(param_1 + 0x14),*(int *)(param_1 + 0x18));
    local_4 = *(undefined4 *)(param_1 + 0xc);
    bVar3 = FUN_00598ea0();
    local_8 = CONCAT31(extraout_var_01,bVar3);
    (**(code **)(*piVar5 + 0x38))(local_1c);
    if (this != (void *)0x0) {
      FUN_006ded10(this,(int)local_14,(int)local_10);
      return;
    }
    break;
  case 7:
    local_14 = 1.12104e-44;
    InputService_PixelsToLogical
              (&local_10,&local_c,*(int *)(param_1 + 0xc),*(int *)(param_1 + 0x10));
    bVar3 = FUN_00598ea0();
    local_8 = CONCAT31(extraout_var,bVar3);
    FUN_004e1c00((LPCRITICAL_SECTION)(param_2 + 0x18),(uint *)&DAT_00fda6dc);
    iVar4 = *(int *)(param_2 + 0x50);
    cVar1 = *(char *)(param_2 + 0x60);
    iVar2 = *(int *)(param_2 + 0x54);
    uStack_2c = (void *)CONCAT13(cVar1,(undefined3)uStack_2c);
    FUN_004e1cc0((LPCRITICAL_SECTION)(param_2 + 0x18));
                    /* Capture path: suppress exact-anchor synthetic event; otherwise dispatch
                       physical movement through input vtable+38 before returning pointer to integer
                       captured anchor via window vtable+84. */
    if (cVar1 == '\0') {
      (**(code **)(*piVar5 + 0x38))(local_1c);
      if (uStack_2c != (void *)0x0) {
        FUN_006ded10(uStack_2c,(int)local_14,(int)local_10);
        return;
      }
    }
    else if (((iVar4 != *(int *)(param_1 + 0xc)) || (iVar2 != *(int *)(param_1 + 0x10))) &&
            ((**(code **)(*piVar5 + 0x38))(local_1c), DAT_011cebd0 != (int *)0x0)) {
      (**(code **)(*DAT_011cebd0 + 0x84))(iVar4,iVar2);
      return;
    }
  }
  return;
}

