/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 unsigned64 numeric wrapper. Physical caller-clean stack4 UTF16 input, stack8
   optional UTF16 end-pointer output, stackC radix; returns unsigned64 EDX:EAX and plain RET. Pushes
   exact mode1 then radix/end/input to4FEC40, removes16 bytes and preserves its64-bit result.
   Selected scalar uint64 caller stores EAX/EDX; selected key parser consumes both words. Radix0
   and16 are actual selected callers; helper supports its existing admitted radix range. No
   signed-only return interpretation, parser service replacement or bytes/child changes. Owned10
   instructions26 bytes. */

ulonglong __cdecl NumericText_ParseUnsigned64(ushort *text,ushort **outEnd,uint radix)

{
  ulonglong uVar1;
  
  uVar1 = NumericText_ParseSignedOrUnsigned64(text,outEnd,radix,1);
  return uVar1;
}

