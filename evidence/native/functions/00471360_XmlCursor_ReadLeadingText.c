/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 leading text wrapper. Physical cursor ECX, no stack input words, EAX UTF16 pointer
   or null, plain RET. Existing fastcall display convention is preserved with exact custom ECX
   input; no EDX argument is invented. Borrows cursor arena at+18 and a local count output,
   invokes471230, returns its EAX result. Actual array caller54B3A6 tests EAX then supplies pointer
   or selected empty fallback to scalar parsing. Existing DEFAULT local4 preserved. Owned8
   instructions16 bytes; no child metadata, bytes, Listing or references change. */

ushort * __fastcall XmlCursor_ReadLeadingText(void *this)

{
  ushort *puVar1;
  void *local_4;
  
  local_4 = this;
  puVar1 = XmlCursor_AppendConsecutiveText(this,(void *)((int)this + 0x18),(uint *)&local_4);
  return puVar1;
}

