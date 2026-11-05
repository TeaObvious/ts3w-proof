/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual factory has two stack DWORDs and RET8, returns
   IWindow complete object+4 or0. Allocation asks size0x2F0, alignment16, actual diagnostic label
   and incoming second DWORD through005050B0, caller-clean16bytes; no foreign allocator prototype
   changed. Success invokes constructor0077EDC0; flag field complete+0x2E8 is initialized1. First
   incoming DWORD is unused in this complete factory body; not an ECX receiver. Complete physical
   branches/RET endings exclude following INT3 padding. */

void * Sims3CustomButton_Create(uint typeIdentity,void *allocationContext)

{
  uint *this;
  void *pvVar1;
  
  this = FUN_005050b0(0x2f0,0x10,"UI/UTFWin/Sims3::UI::Sims3CustomButton",allocationContext);
  if (this != (uint *)0x0) {
    pvVar1 = Sims3CustomButton_Construct(this);
    if (pvVar1 != (void *)0x0) {
      return (void *)((int)pvVar1 + 4);
    }
  }
  return (void *)0x0;
}

