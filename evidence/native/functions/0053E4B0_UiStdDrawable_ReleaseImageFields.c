/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. Complete136byte destructor53E4B0..53E537, ECX complete
   object/no stack/plainRET/void. Reinstalls actual vtables, walks eight slots: release image bank10
   then clear it, release bank30 then clear it; advances corresponding slots. Then releases selected
   nonnull references50 and78, retains original reset order, and writes base vtables. Selected
   references release via their own primary+4; no guessed concrete image class. This is
   zero-dispatched StdDrawable image destruction, not retirement on every independent script wrapper
   release.
   
   Analyst clarification, PC1.67 instructions versus actual decompiler: Exact reentrant read/clear
   order in each bank-pair iteration: load bank10 pointer and conditionally release; then load
   bank30 pointer into ECX, THEN clear the bank10 slot; conditionally release that captured bank30
   pointer, then clear its slot. The second read is after first release but before first clear. Do
   not reorder those reads around callbacks on the strength of a coarse two-bank summary. */

void __thiscall UiStdDrawable_ReleaseImageFields(void *this)

{
  int iVar1;
  int *piVar2;
  
  *(undefined ***)this = &PTR_CountedReference_Retain_00fc0840;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fc0828;
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fc07c0;
  piVar2 = (int *)((int)this + 0x30);
  iVar1 = 8;
  do {
    if ((int *)piVar2[-8] != (int *)0x0) {
      (**(code **)(*(int *)piVar2[-8] + 4))();
    }
    piVar2[-8] = 0;
    if ((int *)*piVar2 != (int *)0x0) {
      (**(code **)(*(int *)*piVar2 + 4))();
    }
    *piVar2 = 0;
    piVar2 = piVar2 + 1;
    iVar1 = iVar1 + -1;
  } while (iVar1 != 0);
  if (*(int **)((int)this + 0x50) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x50) + 4))();
    *(undefined4 *)((int)this + 0x50) = 0;
  }
  if (*(int **)((int)this + 0x78) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x78) + 4))();
  }
  *(undefined ***)((int)this + 0xc) = &PTR_LAB_00fa2b80;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fbc4e8;
  *(undefined ***)((int)this + 4) = &PTR_LAB_00fa2b80;
  *(undefined ***)this = &PTR_LAB_00fa2b80;
  return;
}

