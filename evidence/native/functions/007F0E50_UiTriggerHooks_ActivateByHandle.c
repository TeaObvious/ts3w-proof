/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst description; PC 1.67. Under the receiver + 0x380 critical section, look up the supplied
   handle in the receiver + 0x10 table; on a found entry call 0x007F01B0, then leave the critical
   section and return AL = 1. Missing entry returns AL = 0 after leaving. The complete key/container
   and active-list helper semantics are not established here. Actual ECX receiver and one stack
   DWORD with RET 0x4; current one-parameter fastcall metadata omits the stack argument. Upper EAX
   is not a UInt32 Boolean contract. Preserve the inferred prototype; this comment records the
   physical ABI limitation. */

undefined4 __fastcall UiTriggerHooks_ActivateByHandle(void *param_1)

{
  LPCRITICAL_SECTION lpCriticalSection;
  undefined4 extraout_EAX;
  uint extraout_EAX_00;
  int local_8 [2];
  
  lpCriticalSection = (LPCRITICAL_SECTION)((int)param_1 + 0x380);
  EnterCriticalSection(lpCriticalSection);
  FUN_007fd910((void *)((int)param_1 + 0x10),local_8,(uint *)&stack0x00000004);
  if (local_8[0] != *(int *)(*(int *)((int)param_1 + 0x14) + *(int *)((int)param_1 + 0x18) * 4)) {
    FUN_007f01b0(param_1,(int *)(local_8[0] + 4));
    LeaveCriticalSection(lpCriticalSection);
    return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
  }
  LeaveCriticalSection(lpCriticalSection);
  return extraout_EAX_00 & 0xffffff00;
}

