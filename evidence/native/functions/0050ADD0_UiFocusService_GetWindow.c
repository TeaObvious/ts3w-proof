/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Focus service virtual54: physical ECX service and one
   UInt32 stack word, RET4. IMUL32 context by2C then read complete window pointer at
   service+6B0+stride; return pointer+4 IWindow when nonnull, else0. This raw getter does not call
   reference acquisition. No context bounds check occurs; constructor50BAC0 initializes exactly10
   rows. Do not describe arbitrary UInt32 contexts as native-safe or infer an unbounded dictionary.
    */

void * __thiscall UiFocusService_GetWindow(void *this,uint inputContext)

{
  int iVar1;
  
  iVar1 = *(int *)(inputContext * 0x2c + 0x6b0 + (int)this);
  if (iVar1 != 0) {
    return (void *)(iVar1 + 4);
  }
  return (void *)0x0;
}

