/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack stream instruction review. ECX allocation0x228, RET4 wide path, returns
   this. Vtable00FB9338; invalid handleFFFFFFFF and field defaults. Copies at most104h wide units.
   Relevant slots: position+24=004DB910, available+2C=004DBA10. No universal path-length validation
   inferred. */

void * __thiscall FileReadStream_Construct(void *this,void *widePath)

{
  *(undefined ***)this = &PTR_FUN_00fb9338;
  *(undefined4 *)((int)this + 4) = 0xffffffff;
  *(undefined4 *)((int)this + 0x210) = 0;
  *(undefined4 *)((int)this + 0x214) = 0;
  *(undefined4 *)((int)this + 0x218) = 0;
  *(undefined4 *)((int)this + 0x21c) = 0;
  *(undefined4 *)((int)this + 0x220) = 0;
  *(undefined4 *)((int)this + 0x224) = 0;
  *(wchar_t *)((int)this + 8) = L'\0';
  if (widePath != (void *)0x0) {
    wcsncpy((wchar_t *)((int)this + 8),widePath,0x104);
  }
  return this;
}

