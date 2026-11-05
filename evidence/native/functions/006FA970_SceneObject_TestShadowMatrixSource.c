/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Actual ECX object, no stack arguments/plain RET. Load object+38; null returns
   EAX0. Nonnull calls6FA5C0 and TEST AL, then explicitly returns normalized whole EAX1 or0.
   Caller6EA610 tests AL before its selected virtual predicate and matrix-copy producers. Exact
   source-kind predicate/complete component lifetime remains inside6FA5C0, not guessed from this
   wrapper. No current packet-ready or GPU-complete equivalence. */

undefined4 __fastcall SceneObject_TestShadowMatrixSource(int param_1)

{
  bool bVar1;
  
  if (*(int *)(param_1 + 0x38) != 0) {
    bVar1 = FUN_006fa5c0(*(int *)(param_1 + 0x38));
    if (bVar1) {
      return 1;
    }
  }
  return 0;
}


