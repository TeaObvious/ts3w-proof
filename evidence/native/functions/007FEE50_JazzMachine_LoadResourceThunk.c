/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): Resource VTable pointer010204B8 leads here; four
   physical stack words, RET10. Original args2..4 pushed to007FEAD0, arg1 loaded into ECX after two
   pushes. Reader AL is preserved by RET despite inferred void C. Body recovered from VTable data
   target and original reachable instructions with no overlap or byte patch; type getter is
   at010204C0. */

void JazzMachine_LoadResourceThunk(void *param_1,int *param_2,void *param_3,uint *param_4)

{
  JazzMachine_ReadResource(param_1,param_2,param_3,param_4);
  return;
}

