/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* UI effect ownership/original comparison (PC 1.67, pristine SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3):
   Complete physical one-instruction/5-byte direct jump to 00504BC0 (shared counted-reference
   decrement/zero dispatch). The actual C may project the target body; physical instructions here
   are only JMP. Case-6 interface +4 reaches it after ECX-=0x10 in the separate bounded 00523A20
   entry. Inherited DEFAULT thunk display/prototype follows its target automatically; no explicit
   thunk rename or ABI/body repair is intended. */

int __fastcall CountedReference_ReleaseAndDispatchZero(int *param_1)

{
  int *piVar1;
  int iVar2;
  
  piVar1 = param_1 + 2;
  *piVar1 = *piVar1 + -1;
  iVar2 = param_1[2];
  if (*piVar1 == 0) {
    (**(code **)(*param_1 + 8))(1);
  }
  return iVar2;
}

