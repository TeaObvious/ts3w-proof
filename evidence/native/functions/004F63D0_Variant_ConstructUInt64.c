/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 audio callback instruction review. ECX 32byte variant, RET4 pointer to source64.
   Clears flags/type words, sets vtableFBA6F4, calls004F6020, returns this. Audio uses full
   objectGUID. */

void * __thiscall Variant_ConstructUInt64(void *this,ulonglong *value64)

{
  *(undefined2 *)((int)this + 8) = 0;
  *(undefined2 *)((int)this + 10) = 0;
  *(undefined ***)this = &PTR_FUN_00fba6f4;
  Variant_AssignUInt64(this,value64);
  return this;
}

