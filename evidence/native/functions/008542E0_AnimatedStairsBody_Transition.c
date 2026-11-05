/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Original internal states1..10 select animation
   clips/listeners and recursively advance. State10 invokes steering vtable+0x58 with request;
   unavailable clips and blocked gates also lead tocompletion path. Missing-clip fallback
   recursively transitions10 then invokes+58 again, so this virtual may run immediately during Begin
   and twice. Managed delivery timing is not established by this function. State numbers are
   analyst-observed, original symbolic phase names remain unknown. */

void __thiscall AnimatedStairsBody_Transition(void *this,int state)

{
  undefined4 *puVar1;
  int iVar2;
  char cVar3;
  bool bVar4;
  undefined4 uVar5;
  int *piVar6;
  int iStack_2c;
  undefined1 uStack_28;
  undefined4 uStack_24;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  undefined1 uStack_10;
  undefined1 uStack_f;
  undefined4 uStack_c;
  
LAB_008542f3:
  if (*(int *)((int)this + 0x144) != 0) {
    AnimationController_UnregisterListener
              ((void *)(*(int *)((int)this + 0x144) + 0xc),(int *)((int)this + 0x18));
    puVar1 = *(undefined4 **)((int)this + 0x144);
    *(undefined4 *)((int)this + 0x144) = 0;
    if ((puVar1 != (undefined4 *)0x0) &&
       (iVar2 = puVar1[1], puVar1[1] = iVar2 + -1, iVar2 + -1 == 0)) {
      puVar1[1] = 1;
      (**(code **)*puVar1)(1);
    }
  }
  if (*(int *)((int)this + 0x14c) == 0) goto switchD_00854345_caseD_9;
  switch(state) {
  case 1:
    uStack_24 = *(undefined4 *)((int)this + 0x14c);
    piVar6 = *(int **)((int)this + 0x20);
LAB_008543b5:
    uStack_1c = 0;
    uStack_18 = 0;
    uStack_14 = 0;
    uStack_10 = 0;
    uStack_f = 0;
    uStack_c = 0;
    iStack_2c = 0;
    uStack_28 = 0;
    uStack_20 = 0;
    if ((piVar6 != (int *)0x0) &&
       (cVar3 = (**(code **)(*piVar6 + 0xc))(&uStack_24,&iStack_2c), cVar3 != '\0')) {
LAB_008543fd:
      if (iStack_2c != 0) {
LAB_00854405:
        FUN_00854030(this,iStack_2c,state);
        FUN_00565d20(&iStack_2c);
        FUN_00848f10((int)&uStack_24);
        *(int *)((int)this + 0x148) = state;
        return;
      }
    }
LAB_0085442f:
    FUN_00859f90((void *)((int)this + 0x120),0,'\0');
    AnimatedStairsBody_Transition(this,10);
    (**(code **)(**(int **)((int)this + 0x14) + 0x58))((int)this + 0xa0);
LAB_00854456:
    FUN_00565d20(&iStack_2c);
    FUN_00848f10((int)&uStack_24);
    return;
  case 2:
    uStack_24 = *(undefined4 *)((int)this + 0x14c);
    piVar6 = *(int **)((int)this + 100);
    goto LAB_008543b5;
  case 3:
    uStack_24 = *(undefined4 *)((int)this + 0x14c);
    piVar6 = *(int **)((int)this + 0x68);
    goto LAB_008543b5;
  case 4:
    cVar3 = (**(code **)(**(int **)((int)this + 0x14) + 0x6c))((int)this + 0xa0);
    if (cVar3 == '\0') {
      uStack_24 = *(undefined4 *)((int)this + 0x14c);
      uStack_20 = 0;
      uStack_1c = 0;
      uStack_18 = 0;
      uStack_14 = 0;
      uStack_f = 0;
      uStack_c = 0;
      iStack_2c = 0;
      uStack_28 = 0;
      uVar5 = FUN_0055dd90(*(int *)((int)this + 0x78));
      if (((char)uVar5 == '\0') && (*(char *)((int)this + 0x84) != '\0')) {
        bVar4 = true;
      }
      else {
        bVar4 = false;
      }
      uStack_10 = *(undefined1 *)((int)this + 0x80);
      if ((*(int *)((int)this + 0x148) == 7) == bVar4) {
        if (*(int **)((int)this + 0x58) != (int *)0x0) {
          (**(code **)(**(int **)((int)this + 0x58) + 0xc))(&uStack_24,&iStack_2c);
          goto LAB_00854537;
        }
      }
      else if (*(int **)((int)this + 0x54) != (int *)0x0) {
        (**(code **)(**(int **)((int)this + 0x54) + 0xc))(&uStack_24,&iStack_2c);
LAB_00854537:
        if (iStack_2c != 0) goto LAB_00854405;
      }
      AnimatedStairsBody_Transition(this,10);
      goto LAB_00854456;
    }
    state = 8;
    goto LAB_008542f3;
  case 5:
    goto switchD_00854345_caseD_5;
  case 6:
    piVar6 = *(int **)((int)this + 0x4c);
    break;
  case 7:
    piVar6 = *(int **)((int)this + 0x50);
    break;
  case 8:
    uStack_24 = *(undefined4 *)((int)this + 0x14c);
    uStack_20 = 0;
    uStack_1c = 0;
    uStack_18 = 0;
    uStack_14 = 0;
    uStack_10 = 0;
    uStack_f = 0;
    uStack_c = 0;
    iStack_2c = 0;
    uStack_28 = 0;
    if (*(int *)((int)this + 0x148) == 6) {
      if (*(int **)((int)this + 0x5c) != (int *)0x0) {
        (**(code **)(**(int **)((int)this + 0x5c) + 0xc))(&uStack_24,&iStack_2c);
LAB_00854624:
        if (iStack_2c != 0) goto LAB_00854405;
      }
    }
    else if (*(int **)((int)this + 0x60) != (int *)0x0) {
      (**(code **)(**(int **)((int)this + 0x60) + 0xc))(&uStack_24,&iStack_2c);
      goto LAB_00854624;
    }
    FUN_00859f90((void *)((int)this + 0x120),0,'\0');
    AnimatedStairsBody_Transition(this,10);
    (**(code **)(**(int **)((int)this + 0x14) + 0x58))((int)this + 0xa0);
    goto LAB_00854456;
  default:
    goto switchD_00854345_caseD_9;
  case 10:
    (**(code **)(**(int **)((int)this + 0x14) + 0x58))((int)this + 0xa0);
switchD_00854345_caseD_9:
    *(int *)((int)this + 0x148) = state;
    return;
  }
  uStack_24 = *(undefined4 *)((int)this + 0x14c);
  uStack_28 = 0;
  iStack_2c = 0;
  uStack_c = 0;
  uStack_f = 0;
  uStack_10 = 0;
  uStack_14 = 0;
  uStack_18 = 0;
  uStack_1c = 0;
  uStack_20 = 0;
  if (piVar6 == (int *)0x0) goto LAB_0085442f;
  (**(code **)(*piVar6 + 0xc))(&uStack_24,&iStack_2c);
  goto LAB_008543fd;
switchD_00854345_caseD_5:
  uVar5 = FUN_0055dd90(*(int *)((int)this + 0x78));
  state = ((char)uVar5 != '\0') + 6;
  goto LAB_008542f3;
}

