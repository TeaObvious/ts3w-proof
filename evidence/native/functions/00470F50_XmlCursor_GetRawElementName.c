/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Actual Ghidra instruction annotations not rendered inline by this decompiler:
 * 00470f50: Current token is cursor+48; this getter does not advance the cursor.
 * 00470f57: Return token+8 unchanged: full NUL-ended lexical name copied by OnStartElement, not a namespace LocalName.
 */


/* Original PC 1.67 static instruction evidence; analyst-assigned role XmlCursor_GetRawElementName.
   Physical ABI: ECX cursor; no stack words; EAX borrowed UTF16 name or null; plain RET. */

ushort * __thiscall XmlCursor_GetRawElementName(void *this)

{
  if (*(int *)((int)this + 0x48) == 0) {
    return (ushort *)0x0;
  }
  return *(ushort **)(*(int *)((int)this + 0x48) + 8);
}

