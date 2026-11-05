/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Actual factory has two stack DWORDs and RET8, returns
   IWindow complete object+4 or0. Allocation asks size0x260, alignment16, actual diagnostic label
   and incoming second DWORD through005050B0, caller-clean16bytes; no foreign allocator prototype
   changed. Success initializes complete WindowBase inline; flag field complete+0x258 is
   initialized1. First incoming DWORD is unused in this complete factory body; not an ECX receiver.
   Complete physical branches/RET endings exclude following INT3 padding. */

void * Sims3CustomWindow_Create(uint typeIdentity,void *allocationContext)

{
  uint *puVar1;
  
  puVar1 = FUN_005050b0(0x260,0x10,"UI/UTFWin/Sims3::UI::Sims3CustomWindow",allocationContext);
  if (puVar1 != (uint *)0x0) {
    FUN_00516090(puVar1);
    puVar1[0x94] = (uint)&PTR_LAB_0103b394;
    *puVar1 = (uint)&PTR_thunk_FUN_007e4140_0100f250;
    puVar1[0x94] = (uint)&PTR_LAB_0100f108;
    puVar1[0x95] = 0;
    puVar1[0x96] = 1;
    puVar1[1] = (uint)&PTR_LAB_0100f128;
    return puVar1 + 1;
  }
  return (void *)0x0;
}

