/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX manager/plainRET. Under existing owner guard invokes current tool virtual18. Object primary
   table01084370+18 is existing shared007893B0 XORAL,AL/RET; it does not clear pressed rotation
   here. Host gesture cancellation on focus is a separate existing extension. */

void __fastcall UserToolManager_ForwardFocusLost(int param_1)

{
  int iVar1;
  char cVar2;
  
  if (*(int *)(param_1 + 0x2c) != 0) {
    iVar1 = *(int *)(*(int *)(param_1 + 0x2c) + 0xc);
    if (iVar1 != 0) {
      EnterCriticalSection((LPCRITICAL_SECTION)(iVar1 + 0xd0));
    }
    cVar2 = (**(code **)(**(int **)(param_1 + 0x2c) + 0x2c))();
    if (cVar2 == '\0') {
      (**(code **)(**(int **)(param_1 + 0x2c) + 0x18))();
    }
    if (iVar1 != 0) {
      LeaveCriticalSection((LPCRITICAL_SECTION)(iVar1 + 0xd0));
    }
  }
  return;
}

