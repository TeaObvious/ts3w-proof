/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Payload DWORD offsets0/4/8/c/10 are
   controller, retained object/auxiliary ref from+0x5d8, borrowed animation interface, namespace map
   at+0x4f0, event pointer initially from caller. Three state bytes at payload+0x14..0x16 copy
   last-required-event status and controller flags+0x5f9/+0x5fa. Atomic refcount covers payload
   object reference.
   
   Clarification from original00568DBC..5: payload+14 is LAST REQUIRED event completion, not all
   authored events. Query005801E0/ClipEventTable_GetLastRequiredEventIndex, signed CMP
   EAX,[controller+5F4]/SETLE. Cached no-required index -1 is complete when last processed cursor is
   -1; null clip sets completion byte1. Payload+15 and+16 remain controller bytes+5F9/+5FA. ECX
   receiver, one physical output pointer RET4; all reference retains/releases remain with actual
   payload builder. */

void __thiscall AnimationClipController_BuildEventPayload(void *this,undefined4 *param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  undefined4 *puVar3;
  int iVar4;
  
  param_1[2] = *(undefined4 *)((int)this + 0x1c);
  *param_1 = this;
  param_1[3] = (int)this + 0x4f0;
  puVar2 = *(undefined4 **)((int)this + 0x5d8);
  puVar3 = (undefined4 *)param_1[1];
  if (puVar2 != puVar3) {
    if (puVar2 != (undefined4 *)0x0) {
      LOCK();
      puVar2[1] = puVar2[1] + 1;
      UNLOCK();
    }
    param_1[1] = puVar2;
    if (puVar3 != (undefined4 *)0x0) {
      piVar1 = puVar3 + 1;
      LOCK();
      iVar4 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar4 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*puVar3)(1);
      }
    }
  }
  *(undefined1 *)((int)param_1 + 0x15) = *(undefined1 *)((int)this + 0x5f9);
  *(undefined1 *)((int)param_1 + 0x16) = *(undefined1 *)((int)this + 0x5fa);
  if (*(int *)((int)this + 0x5d0) == 0) {
    *(undefined1 *)(param_1 + 5) = 1;
    return;
  }
  iVar4 = ClipEventTable_GetLastRequiredEventIndex((int *)(*(int *)((int)this + 0x5d0) + 0x54));
  *(bool *)(param_1 + 5) = iVar4 <= *(int *)((int)this + 0x5f4);
  return;
}

