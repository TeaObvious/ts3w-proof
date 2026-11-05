/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 UTF16 string clear. Physical string object ECX, no stack words, plain RET.
   Selected511D40 caller ignores any return; other caller004F8DF5 has not been followed, so existing
   undefined return/unassigned storage is preserved rather than asserting global void. Reads begin
   and end; if unequal writes UTF16 zero at begin and sets end=begin, otherwise no write. No
   allocation or callback. Selected generic string-null write at511D40 supplies this operation after
   prepared null string input. Owned7 instructions18 bytes; neighboring code/data and all original
   bytes stay unchanged. */

void __thiscall NativeUtf16String_Clear(void *this)

{
  if (*(undefined2 **)this != *(undefined2 **)((int)this + 4)) {
    **(undefined2 **)this = 0;
    *(undefined4 *)((int)this + 4) = *(undefined4 *)this;
  }
  return;
}

