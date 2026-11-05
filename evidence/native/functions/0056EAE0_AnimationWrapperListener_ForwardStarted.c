/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Listener subobject this+0x28 adjusts
   back to wrapper base. Rebuilds payload with wrapper identity/owner while retaining auxiliary
   object and self, then dispatches Started on wrapper list. */

void __thiscall
AnimationWrapperListener_ForwardStarted(void *this,int *eventPayload,int registrationToken)

{
  undefined4 *this_00;
  int *piVar1;
  int iVar2;
  undefined4 *local_18;
  undefined4 *local_14;
  undefined4 local_10;
  int local_c;
  int local_8;
  undefined1 local_4;
  undefined1 local_3;
  undefined1 local_2;
  
  this_00 = (undefined4 *)((int)this + -0x28);
  if (this_00 != (undefined4 *)0x0) {
    *(int *)((int)this + -0x24) = *(int *)((int)this + -0x24) + 1;
  }
  local_14 = (undefined4 *)eventPayload[1];
  if (local_14 != (undefined4 *)0x0) {
    LOCK();
    local_14[1] = local_14[1] + 1;
    UNLOCK();
  }
  local_c = eventPayload[3];
  local_10 = *(undefined4 *)((int)this + -0xc);
  local_8 = eventPayload[4];
  local_4 = (undefined1)eventPayload[5];
  local_3 = *(undefined1 *)((int)eventPayload + 0x15);
  local_2 = *(undefined1 *)((int)eventPayload + 0x16);
  local_18 = this_00;
  AnimationController_DispatchStarted(this_00,&local_18);
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
  if ((this_00 != (undefined4 *)0x0) &&
     (iVar2 = *(int *)((int)this + -0x24) + -1, *(int *)((int)this + -0x24) = iVar2, iVar2 == 0)) {
    *(undefined4 *)((int)this + -0x24) = 1;
    (**(code **)*this_00)(1);
  }
  return;
}

