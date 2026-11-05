/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual descriptorFC071C+28 factory pointer; complete44byte
   body53E720..53E74B, two physical stack words andRET8. First stack word is unused here; second is
   forwarded as allocation context to5050B0 together with labelFC0860/alignment4/size88hex. Nonnull
   allocation goes inECX to53E640 and returnedEAX is preserved; allocation failure returns0. Do not
   infer an unused ECX receiver or a one-stack-argument ABI. Neighbors and four followingINT3 are
   unowned. */

void * UiStdDrawable_CreateFromDescriptor(uint opaqueUnused,void *allocationContext)

{
  uint *this;
  void *pvVar1;
  
  this = FUN_005050b0(0x88,4,"UI/UTFWin/EA::UTFWinControls::StdDrawable",allocationContext);
  if (this != (uint *)0x0) {
    pvVar1 = UiStdDrawable_Initialize(this);
    return pvVar1;
  }
  return (void *)0x0;
}

