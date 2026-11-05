/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX texture entry. Observe state+0x44; claim0 to1 with LOCK CMPXCHG, retry
   on contention. Observed2 tail-dispatches ready completion,3 failed completion; other states
   return. This is local state dispatch, not proof of callback scheduling/thread affinity. Role name
   is descriptive, not a recovered original symbol. */

void __fastcall MaterialTextureEntry_DispatchState(int param_1)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  
  piVar1 = (int *)(param_1 + 0x44);
  do {
    iVar2 = *piVar1;
    if (iVar2 != 0) break;
    LOCK();
    iVar3 = *piVar1;
    if (iVar3 == 0) {
      *piVar1 = 1;
      iVar3 = 0;
    }
    UNLOCK();
  } while (iVar3 != 0);
  if (iVar2 == 2) {
    MaterialTextureEntry_CompleteReady(param_1);
    return;
  }
  if (iVar2 != 3) {
    return;
  }
  MaterialTextureEntry_CompleteFailed(param_1);
  return;
}

