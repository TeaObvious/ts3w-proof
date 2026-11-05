/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete defined body (61 bytes/30 instructions). Two stack pointers to
   zero-terminated32-bit lists, plain RET. Outer order follows first list; for each nonzero
   first-list value scans second list and returns that value on first equality; exhaustion returns
   EAX0. Zero is terminator, not an admitted matching tag. No pointer/null/bounds guard, tag
   ordering or signed enum semantics is established.00EC5470 consumes nonzero result for
   current-state virtual+0x14 negotiation; child effects remain separate. */

int __cdecl StateTagLists_FirstCommonNonzero(int *param_1,int *param_2)

{
  int *piVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  
  iVar3 = *param_1;
  if (iVar3 != 0) {
    do {
      param_1 = param_1 + 1;
      iVar2 = *param_2;
      piVar4 = param_2;
      while (iVar2 != 0) {
        if (iVar2 == iVar3) {
          return iVar3;
        }
        piVar1 = piVar4 + 1;
        piVar4 = piVar4 + 1;
        iVar2 = *piVar1;
      }
      iVar3 = *param_1;
    } while (iVar3 != 0);
  }
  return 0;
}

