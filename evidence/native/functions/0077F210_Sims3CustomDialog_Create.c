/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note, original PC1.67 static. Actual factory has two stack DWORDs and RET8, returns
   IWindow complete object+4 or0. Allocation asks size0x390, alignment16, actual diagnostic label
   and incoming second DWORD through005050B0, caller-clean16bytes; no foreign allocator prototype
   changed. Success invokes constructor0077EFD0; flag field complete+0x388 is initialized1. First
   incoming DWORD is unused in this complete factory body; not an ECX receiver. Complete physical
   branches/RET endings exclude following INT3 padding. */

void * Sims3CustomDialog_Create(uint typeIdentity,void *allocationContext)

{
  uint *this;
  void *pvVar1;
  
  this = AllocateWithAllocatorHeader
                   (0x390,0x10,"UI/UTFWin/Sims3::UI::Sims3CustomDialog",allocationContext);
  if (this != (uint *)0x0) {
    pvVar1 = Sims3CustomDialog_Construct(this);
    if (pvVar1 != (void *)0x0) {
      return (void *)((int)pvVar1 + 4);
    }
  }
  return (void *)0x0;
}

