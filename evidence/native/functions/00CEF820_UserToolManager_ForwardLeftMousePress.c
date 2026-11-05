/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Left-button1000 only; changed UI modifiers precede floor conversion of client x/y. ECX manager,
   four stack words, RET10hex; dispatch tool virtual0C. Finite screen floor uses integer conversion
   and residual adjustment; arbitrary FPU traps/out-of-range behavior unresolved. */

void __thiscall
UserToolManager_ForwardLeftMousePress
          (void *this,float param_1,float param_2,int param_3,byte param_4)

{
  int iVar1;
  char cVar2;
  
  if ((param_3 == 1000) && (*(int *)((int)this + 0x2c) != 0)) {
    iVar1 = *(int *)(*(int *)((int)this + 0x2c) + 0xc);
    if (iVar1 != 0) {
      EnterCriticalSection((LPCRITICAL_SECTION)(iVar1 + 0xd0));
    }
    cVar2 = (**(code **)(**(int **)((int)this + 0x2c) + 0x2c))();
    if (cVar2 == '\0') {
      *(undefined1 *)(*(int *)((int)this + 0x2c) + 0x14) = 1;
      UserTool_ApplyUiModifiers(*(void **)((int)this + 0x2c),param_4);
      (**(code **)(**(int **)((int)this + 0x2c) + 0xc))
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

