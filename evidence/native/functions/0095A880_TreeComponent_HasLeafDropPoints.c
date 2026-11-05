/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst name from the complete consumer and leaf-drop caller. ECX component; null template
   returns EAX 0. Compute signed (end-begin) SAR 4 for 16-byte points and test for nonzero, then
   return EAX 1 or 0. This is a Boolean presence predicate, NOT a point-count getter; no runtime
   count is returned. */

undefined4 __fastcall TreeComponent_HasLeafDropPoints(int param_1)

{
  int iVar1;
  
  iVar1 = *(int *)(param_1 + 0xc);
  if ((iVar1 != 0) && (*(int *)(iVar1 + 0x68) - *(int *)(iVar1 + 100) >> 4 != 0)) {
    return 1;
  }
  return 0;
}

