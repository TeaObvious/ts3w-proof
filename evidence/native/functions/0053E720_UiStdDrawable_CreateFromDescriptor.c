/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



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
  
  this = AllocateWithAllocatorHeader
                   (0x88,4,"UI/UTFWin/EA::UTFWinControls::StdDrawable",allocationContext);
  if (this == (uint *)0x0) {
    return (void *)0x0;
  }
  pvVar1 = UiStdDrawable_Initialize(this);
  return pvVar1;
}

