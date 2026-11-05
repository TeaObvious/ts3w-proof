/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Complete30byte deleting destructor53E700..53E71D, ECX
   object/oneDWORD flags/RET4, returns same pointer inEAX. Calls53E4B0 before testing only flags
   lowbyte bit0; selectedfree uses505080. StdDrawable primaryFC0840+8 points here, and reused504BC0
   reaches it ONLY when decremented complete+8 is exactlyzero. Counter2→1 does not enter this
   path. No general allocator or unconditionalfree semantics inferred. */

void * __thiscall UiStdDrawable_DeleteByFlags(void *this,uint flagsWord)

{
  UiStdDrawable_ReleaseImageFields(this);
  if ((flagsWord & 1) != 0) {
    FUN_00505080((int)this);
  }
  return this;
}

