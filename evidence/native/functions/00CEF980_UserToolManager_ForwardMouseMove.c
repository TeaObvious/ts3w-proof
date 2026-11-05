/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX manager, three stack words, RET0Chex. Applies UI modifiers then floors client x/y with
   integer conversion/residual adjustment before tool virtual14. World-owner guard/enter/leave
   remains native. */

void __thiscall
UserToolManager_ForwardMouseMove(void *this,float param_1,float param_2,byte param_3)

{
  int iVar1;
  char cVar2;
  
  if (*(int *)((int)this + 0x2c) != 0) {
    iVar1 = *(int *)(*(int *)((int)this + 0x2c) + 0xc);
    if (iVar1 != 0) {
      EnterCriticalSection((LPCRITICAL_SECTION)(iVar1 + 0xd0));
    }
    cVar2 = (**(code **)(**(int **)((int)this + 0x2c) + 0x2c))();
    if (cVar2 == '\0') {
      UserTool_ApplyUiModifiers(*(void **)((int)this + 0x2c),param_3);
      (**(code **)(**(int **)((int)this + 0x2c) + 0x14))
                ((int)ROUND(param_1) + -1 +
                 (uint)((uint)(param_1 - (float)(int)ROUND(param_1)) < 0x80000001),
                 (int)ROUND(param_2) + -1 +
                 (uint)((uint)(param_2 - (float)(int)ROUND(param_2)) < 0x80000001));
    }
    if (iVar1 != 0) {
      LeaveCriticalSection((LPCRITICAL_SECTION)(iVar1 + 0xd0));
    }
  }
  return;
}

