/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX walker,one signed dword RET4,AL
   accepted/rejected (upper EAX incidental). Zero can be refused when positive old status, blocking
   controller00804FB0 and00800150 says not idle. Positive transitions refuse old4;2/3/7 require
   blocking controller. Accepted<=0 clears selected clock, marks walker+0C/driver+146 and schedules;
   negative also calls008017A0. Current fixed CanBecomeIdle and ReadyVersion are projections, not
   native full side effects; current nonzero-negative guard differs. */

uint __thiscall SacsWalker_TrySetExecutionStatus(void *this,int param_1)

{
  int iVar1;
  uint in_EAX;
  uint extraout_EAX;
  
  if (param_1 == 0) {
    in_EAX = *(uint *)((int)this + 0x6c);
    if (0 < (int)in_EAX) {
      in_EAX = SacsListener_HasBlockingController(*(int *)((int)this + 100));
      if ((char)in_EAX != '\0') {
        in_EAX = SacsDriver_CheckWalkerIdleReadiness(*(void **)((int)this + 4),(int)this);
        if ((char)in_EAX == '\0') goto LAB_008019fd;
      }
    }
  }
  else if (0 < param_1) {
    in_EAX = *(uint *)((int)this + 0x6c);
    if (in_EAX != 4) {
      if (((param_1 == 2) || (param_1 == 3)) || (param_1 == 7)) {
        in_EAX = SacsListener_HasBlockingController(*(int *)((int)this + 100));
        if ((char)in_EAX == '\0') goto LAB_008019fd;
      }
      LOCK();
      *(int *)((int)this + 0x6c) = param_1;
      UNLOCK();
      return CONCAT31((int3)(in_EAX >> 8),1);
    }
LAB_008019fd:
    return in_EAX & 0xffffff00;
  }
  LOCK();
  *(int *)((int)this + 0x6c) = param_1;
  UNLOCK();
  if (*(void **)((int)this + 100) != (void *)0x0) {
    RecordField14_StoreDword(*(void **)((int)this + 100),0);
    in_EAX = extraout_EAX;
  }
  if (param_1 < 0) {
    in_EAX = FUN_008017a0(*(void **)((int)this + 4),(uint)this);
  }
  *(undefined1 *)((int)this + 0xc) = 1;
  iVar1 = *(int *)((int)this + 4);
  *(undefined1 *)(iVar1 + 0x146) = 1;
  if (DAT_011d9d40 != (void *)0x0) {
    in_EAX = SACS_QueueOrRevisitDriver_7FCF80(DAT_011d9d40,iVar1,'\0');
  }
  return CONCAT31((int3)(in_EAX >> 8),1);
}

