/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX reader/no stack args. If owned auxiliary pointer+4
   exists, invoke virtual+20 then tail-dispatch+8. Does NOT inspect status+14 or make final parser
   failure from accumulated read status. Underlying stream+8 is not released by this leaf when+4
   remainsnull. */

void __thiscall StreamReader_ReleaseAuxiliary(void *this)

{
  if (*(int *)((int)this + 4) != 0) {
    (**(code **)(**(int **)((int)this + 4) + 0x20))();
                    /* WARNING: Could not recover jumptable at 0x007d79ac. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (**(code **)(**(int **)((int)this + 4) + 8))();
    return;
  }
  return;
}

