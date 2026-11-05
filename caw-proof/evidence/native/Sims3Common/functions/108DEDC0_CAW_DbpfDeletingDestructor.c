/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Calls108DE5D0 to destroy database state and, when low flag
   bit is set, frees the object allocation. The database vtable10B87808 first slot points here; the
   final103DB090 reference release dispatches it. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

int * __thiscall CAW_DbpfDeletingDestructor(void *this,byte param_1)

{
  CAW_DbpfDestroy(this);
  if ((param_1 & 1) != 0) {
    FUN_10915560((int)this);
  }
  return this;
}

