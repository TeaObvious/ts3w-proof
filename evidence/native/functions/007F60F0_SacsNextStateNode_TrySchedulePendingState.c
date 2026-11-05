/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, PC1.67 original vtable slot01020828, decoded ADD ECX,30 entry and all reachable
   paths to RET10. ECX node receiver; target state pointer at+30; first physical stack word walker,
   four total words consumed. Null target or null walker no-op. Leaving byte walker+72 rejects;
   absent current+10 admits; retained loop+18 present and current pointer equal target admits; else
   scan current outbound pointers [+3C,+40) via007F6070 and admit only found iterator !=end.
   Accepted target forwards to007FFDF0 pending setter; no immediate graph execution and no
   meaningful return established. Null target admission is outside a pure five-Boolean kernel and
   remains caller policy. Function was missing metadata despite already decoded instructions;
   exact78-byte body was defined without clearing, retyping or patching original units. Stored
   argument count/decompiler return is inferred, physical RET10 governs. */

void SacsNextStateNode_TrySchedulePendingState(void *param_1)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  int *piVar4;
  int in_ECX;
  
  iVar1 = *(int *)(in_ECX + 0x30);
  if ((((iVar1 != 0) && (param_1 != (void *)0x0)) &&
      (iVar2 = *(int *)((int)param_1 + 0x10), *(char *)((int)param_1 + 0x72) == '\0')) &&
     (((iVar2 == 0 || ((*(int *)((int)param_1 + 0x18) != 0 && (iVar2 == iVar1)))) ||
      (piVar3 = *(int **)(iVar2 + 0x40),
      piVar4 = (int *)StatePointerRange_FindIdentity
                                (*(int **)(iVar2 + 0x3c),piVar3,(int *)(in_ECX + 0x30)),
      piVar4 != piVar3)))) {
    SacsWalker_SetPendingState(param_1,iVar1);
  }
  return;
}

