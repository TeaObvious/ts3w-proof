/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Keeps self alive during callbacks.
   Builds event payload, dispatches Started once at byte+0x5f8, advances positive delta and wraps at
   most one loop per call, processes due clip events. RemainingLifetime<0 dispatches Completed once;
   otherwise changed loop index dispatches loop listener. +0x5e4 advances by delta even when
   delta<=0. Null resource marks all events handled and avoids event scan; no resource failure
   boolean reaches managed caller.
   
   Original required-event producer closure: after due-event dispatch,005693C5 queries last flag4
   ordinal, signed CMP/SETLE against last processed cursor+5F4 writes payload byte+14. Null clip
   writes1. Ending/tick dispatch is admitted for infinite cycle count0 or null clip; otherwise
   manager+44 signed frame value times binary32 0x3D088889 must be >= playback remaining (equality
   admitted, unordered rejected by branch). This producer gate is nonstrict; listener00805250
   subsequent readiness gate is strict. A next-unprocessed cursor uses > last-required ordinal.
   Notification interface/receipt is project projection, not native object identity. */

void __thiscall AnimationClipController_Update(void *this,float param_1)

{
  int *piVar1;
  uint uVar2;
  bool bVar3;
  bool bVar4;
  int iVar5;
  float10 fVar6;
  float fVar7;
  undefined4 local_18;
  undefined4 *local_14;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined1 local_4;
  undefined1 local_3;
  undefined1 local_2;
  
  if (this != (void *)0x0) {
    *(int *)((int)this + 4) = *(int *)((int)this + 4) + 1;
  }
  local_18 = 0;
  local_14 = (undefined4 *)0x0;
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  local_3 = 0;
  local_2 = 0;
  AnimationClipController_BuildEventPayload(this,&local_18);
  iVar5 = *(int *)((int)this + 0x5f0);
  if (*(char *)((int)this + 0x5f8) == '\0') {
    AnimationController_DispatchStarted(this,&local_18);
    *(undefined1 *)((int)this + 0x5f8) = 1;
  }
  if (0.0 < param_1) {
    *(float *)((int)this + 0x5e0) = *(float *)((int)this + 0x5e0) + param_1;
    fVar7 = *(float *)((int)this + 0x5dc) + param_1;
    *(float *)((int)this + 0x5dc) = fVar7;
    if (((*(float *)((int)this + 0x5e8) < fVar7) &&
        (uVar2 = *(uint *)((int)this + 0x5ec), uVar2 != 1)) &&
       ((uVar2 == 0 || (*(uint *)((int)this + 0x5f0) < uVar2)))) {
      *(int *)((int)this + 0x5f0) = *(int *)((int)this + 0x5f0) + 1;
      *(float *)((int)this + 0x5dc) = fVar7 - *(float *)((int)this + 0x5e8);
    }
  }
  if ((*(int *)((int)this + 0x5ec) == 1) || (bVar3 = true, iVar5 == *(int *)((int)this + 0x5f0))) {
    bVar3 = false;
  }
  fVar6 = (float10)(**(code **)(*(int *)this + 0x1c))();
  if ((float10)0 <= fVar6) {
    bVar4 = false;
    if (bVar3) {
      if (*(int *)((int)this + 0x5d0) != 0) {
        AnimationClipController_DispatchDueEvents(this,*(float *)((int)this + 0x5e8) + 1.0,'\0');
      }
      *(undefined4 *)((int)this + 0x5f4) = 0xffffffff;
    }
    fVar7 = *(float *)((int)this + 0x5dc);
LAB_005693b1:
    AnimationClipController_DispatchDueEvents(this,fVar7,'\0');
  }
  else {
    bVar4 = true;
    if (*(int *)((int)this + 0x5d0) != 0) {
      fVar7 = *(float *)((int)this + 0x5e8) + 1.0;
      goto LAB_005693b1;
    }
  }
  if (*(int *)((int)this + 0x5d0) == 0) {
    local_4 = true;
  }
  else {
    iVar5 = ClipEventTable_GetLastRequiredEventIndex((int *)(*(int *)((int)this + 0x5d0) + 0x54));
    local_4 = iVar5 <= *(int *)((int)this + 0x5f4);
  }
  if ((*(int *)((int)this + 0x5ec) != 0) && (*(int *)((int)this + 0x5d0) != 0)) {
    iVar5 = *(int *)(DAT_011d9d40 + 0x44);
    fVar6 = (float10)(**(code **)(*(int *)this + 0x24))();
    if ((float10)((float)iVar5 * 0.033333335) < fVar6) goto LAB_0056941d;
  }
  AnimationController_DispatchTick(this,&local_18);
LAB_0056941d:
  if (bVar4) {
    Animation_DispatchCompletedOnce(this,&local_18);
  }
  else if (bVar3) {
    AnimationController_DispatchLoop(this,&local_18);
  }
  *(float *)((int)this + 0x5e4) = *(float *)((int)this + 0x5e4) + param_1;
  if (local_14 != (undefined4 *)0x0) {
    piVar1 = local_14 + 1;
    LOCK();
    iVar5 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar5 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      if (local_14 != (undefined4 *)0x0) {
        (**(code **)*local_14)(1);
      }
    }
  }
  iVar5 = *(int *)((int)this + 4) + -1;
  *(int *)((int)this + 4) = iVar5;
  if (iVar5 == 0) {
    *(undefined4 *)((int)this + 4) = 1;
    (*(code *)**(undefined4 **)this)(1);
  }
  return;
}

