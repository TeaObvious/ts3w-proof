/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Processes resource event list at
   resource+0x54 in ascending order, or descending when controller+0x5fd is set. Persistent signed
   event cursor+0x5f4 prevents duplicates. Forward due condition eventTime<=time; reverse due
   condition eventTime>=duration-time. Restricted flush skips event unless flags&4; flags&0x10
   additionally require global011ce800+0x28 bit2. Listener event slot is+0x10. */

void __thiscall AnimationClipController_DispatchDueEvents(void *this,float param_1,char param_2)

{
  float fVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  undefined4 local_18;
  undefined4 *local_14;
  undefined4 local_10;
  undefined4 local_c;
  int local_8;
  undefined1 local_4;
  undefined1 local_3;
  undefined1 local_2;
  
  uVar5 = 0;
  if (*(int *)((int)this + 0x5d0) != 0) {
    FUN_0057ab60(*(int *)((int)this + 0x5d0));
    local_18 = 0;
    local_14 = (undefined4 *)0x0;
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    local_3 = 0;
    local_2 = 0;
    AnimationClipController_BuildEventPayload(this,&local_18);
    piVar4 = (int *)(*(int *)((int)this + 0x5d0) + 0x54);
    uVar2 = FUN_005801d0(piVar4);
    if (*(char *)((int)this + 0x5fd) == '\0') {
      if (uVar2 != 0) {
        do {
          iVar3 = FUN_00580230(piVar4,uVar5);
          if (*(int *)((int)this + 0x5f4) < (int)uVar5) {
            if (param_1 < *(float *)(iVar3 + 0x10)) break;
            local_8 = iVar3;
            if (((param_2 == '\0') || (((byte)*(undefined4 *)(iVar3 + 0x1c) & 4) == 4)) &&
               ((((byte)*(undefined4 *)(iVar3 + 0x1c) & 0x10) != 0x10 ||
                ((*(uint *)(DAT_011ce800 + 0x28) >> 2 & 1) != 0)))) {
              AnimationController_DispatchClipEvent(this,&local_18);
            }
            *(uint *)((int)this + 0x5f4) = uVar5;
            if (*(int *)((int)this + 0x5d0) == 0) {
              local_4 = 1;
            }
            else {
              iVar3 = FUN_005801e0((int *)(*(int *)((int)this + 0x5d0) + 0x54));
              local_4 = iVar3 <= *(int *)((int)this + 0x5f4);
            }
          }
          uVar5 = uVar5 + 1;
        } while (uVar5 < uVar2);
      }
    }
    else {
      fVar1 = *(float *)((int)this + 0x5e8);
      while (uVar2 = uVar2 - 1, -1 < (int)uVar2) {
        iVar3 = FUN_00580230(piVar4,uVar2);
        if ((*(int *)((int)this + 0x5f4) == -1) || ((int)uVar2 < *(int *)((int)this + 0x5f4))) {
          if (*(float *)(iVar3 + 0x10) < fVar1 - param_1) break;
          local_8 = iVar3;
          if (((param_2 == '\0') || (((byte)*(undefined4 *)(iVar3 + 0x1c) & 4) == 4)) &&
             ((((byte)*(undefined4 *)(iVar3 + 0x1c) & 0x10) != 0x10 ||
              ((*(uint *)(DAT_011ce800 + 0x28) >> 2 & 1) != 0)))) {
            AnimationController_DispatchClipEvent(this,&local_18);
          }
          *(uint *)((int)this + 0x5f4) = uVar2;
          if (*(int *)((int)this + 0x5d0) == 0) {
            local_4 = 1;
          }
          else {
            iVar3 = FUN_005801e0((int *)(*(int *)((int)this + 0x5d0) + 0x54));
            local_4 = iVar3 <= *(int *)((int)this + 0x5f4);
          }
        }
      }
    }
    if (local_14 != (undefined4 *)0x0) {
      piVar4 = local_14 + 1;
      LOCK();
      iVar3 = *piVar4;
      *piVar4 = *piVar4 + -1;
      UNLOCK();
      if (iVar3 == 1) {
        LOCK();
        *piVar4 = 1;
        UNLOCK();
        if (local_14 != (undefined4 *)0x0) {
          (**(code **)*local_14)(1);
        }
      }
    }
  }
  return;
}

