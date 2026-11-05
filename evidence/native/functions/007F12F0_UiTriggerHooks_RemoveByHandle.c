/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst description; PC 1.67. Enter receiver + 0x380 critical section, find the handle and call
   0x007F0210 for a found entry. TEST byte at found-entry-data + 0x18 uses bit mask 0x10; if set,
   unregister both receiver + 0x3D0 and + 0x3D4 notifications through the retained window virtual +
   0x10C. Erase via 0x007F11B0, leave and answer AL = 1; absent entry leaves and answers AL = 0.
   Notification callback/retirement policy beyond these actual calls remains unresolved. Actual ECX
   receiver plus one stack DWORD, RET 0x4; current inferred one-parameter fastcall signature omits
   that argument. Only AL defines Boolean status; prototype stays unchanged. */

undefined4 __fastcall UiTriggerHooks_RemoveByHandle(void *param_1)

{
  LPCRITICAL_SECTION lpCriticalSection;
  int *piVar1;
  undefined4 *puVar2;
  undefined4 extraout_EAX;
  uint extraout_EAX_00;
  undefined4 *local_8;
  int *piStack_4;
  
  lpCriticalSection = (LPCRITICAL_SECTION)((int)param_1 + 0x380);
  EnterCriticalSection(lpCriticalSection);
  FUN_007fd910((void *)((int)param_1 + 0x10),&local_8,(uint *)&stack0x00000004);
  puVar2 = local_8;
  if (local_8 != *(undefined4 **)(*(int *)((int)param_1 + 0x14) + *(int *)((int)param_1 + 0x18) * 4)
     ) {
    FUN_007f0210(param_1,local_8 + 1);
    if ((*(byte *)(puVar2 + 7) & 0x10) != 0) {
      piVar1 = (int *)puVar2[6];
      (**(code **)(*piVar1 + 0x10c))(*(undefined4 *)((int)param_1 + 0x3d0));
      (**(code **)(*piVar1 + 0x10c))(*(undefined4 *)((int)param_1 + 0x3d4));
    }
    FUN_007f11b0((void *)((int)param_1 + 0x10),(int *)&local_8,local_8,piStack_4);
    LeaveCriticalSection(lpCriticalSection);
    return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
  }
  LeaveCriticalSection(lpCriticalSection);
  return extraout_EAX_00 & 0xffffff00;
}

