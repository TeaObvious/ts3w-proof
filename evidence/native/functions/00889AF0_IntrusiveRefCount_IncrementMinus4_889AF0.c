/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete5-instruction generic helper: incoming ECX identifies an interface; addressECX-4
   is atomically incremented using LOCK XADD1, and EAX returns incremented count. RET with no stack
   argument consumed. SACS driver constructor804B00 installs this as0102112C slot0 at driver+8,
   making the affected field driver+4;94D5B0 uses it before component storage. This helper is
   generic; no SACS-specific implementation, IID or sole-owner semantics are assigned. */

int __fastcall IntrusiveRefCount_IncrementMinus4_889AF0(int param_1)

{
  int iVar1;
  int *piVar2;
  
  piVar2 = (int *)(param_1 + -4);
  LOCK();
  iVar1 = *piVar2;
  *piVar2 = *piVar2 + 1;
  UNLOCK();
  return iVar1 + 1;
}

