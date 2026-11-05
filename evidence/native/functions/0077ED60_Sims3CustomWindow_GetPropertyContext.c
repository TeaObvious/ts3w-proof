/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete object; one output pointer, RET4. Writes
   descriptor0x0100F2E8, same receiver pointer,+8 count1,+C class identity0x03AA4128 into16byte
   output; returns original output pointer EAX. Actual primary vtable+10 joins this to original
   typed-property bridge. Descriptor lookup copies its first3words, not an invented host context or
   type-erased dictionary. */

void * __thiscall Sims3CustomWindow_GetPropertyContext(void *this,void *outContext)

{
  *(undefined **)outContext = &DAT_0100f2e8;
  *(void **)((int)outContext + 4) = this;
  *(undefined4 *)((int)outContext + 8) = 1;
  *(undefined4 *)((int)outContext + 0xc) = 0x3aa4128;
  return outContext;
}

