/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 original static contract. Five physical DWORD arguments: four GUID words plus object
   pointer. For nonnull object, query interface07A90300 on object+8, then call returned virtual+8
   with unchanged GUID words. No child-vector traversal. Physical stack copies govern over inferred
   unaff_retaddr C artifact. */

void __cdecl
Undoable_NotifyObjectReplacement
          (undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,int param_5)

{
  int *piVar1;
  undefined4 unaff_retaddr;
  
  if (param_5 != 0) {
    piVar1 = (int *)(**(code **)(*(int *)(param_5 + 8) + 4))(0x7a90300);
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 8))(unaff_retaddr,param_1,param_2,param_3);
    }
  }
  return;
}

