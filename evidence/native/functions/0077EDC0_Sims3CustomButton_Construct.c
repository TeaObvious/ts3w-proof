/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete object, no stack words/plain RET; return same
   complete pointer EAX. Actual native base constructor then class/interface vtable installation;
   zero custom-ID at+0x2E4, UInt32 flags1 at+0x2E8. This ctor field is not a lazy missing-property
   dictionary fallback. */

void * __thiscall Sims3CustomButton_Construct(void *this)

{
  FUN_0051a780(this);
  *(undefined ***)((int)this + 0x2e0) = &PTR_LAB_0103b394;
  *(undefined ***)this = &PTR_thunk_FUN_007e4140_0100f500;
  *(undefined ***)((int)this + 4) = &PTR_LAB_0100f3d8;
  *(undefined ***)((int)this + 0x250) = &PTR_LAB_0100f360;
  *(undefined ***)((int)this + 0x2e0) = &PTR_LAB_0100f344;
  *(undefined4 *)((int)this + 0x2e4) = 0;
  *(undefined4 *)((int)this + 0x2e8) = 1;
  return this;
}

