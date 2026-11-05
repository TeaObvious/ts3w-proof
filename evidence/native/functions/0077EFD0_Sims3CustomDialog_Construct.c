/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. ECX complete object, no stack words/plain RET; return same
   complete pointer EAX. Actual native base constructor then class/interface vtable installation;
   zero custom-ID at+0x384, UInt32 flags1 at+0x388. This ctor field is not a lazy missing-property
   dictionary fallback. */

void * __thiscall Sims3CustomDialog_Construct(void *this)

{
  FUN_00522100(this);
  *(undefined ***)((int)this + 0x380) = &PTR_LAB_0103b394;
  *(undefined ***)this = &PTR_thunk_FUN_007e4140_0100f7d0;
  *(undefined ***)((int)this + 4) = &PTR_LAB_0100f6a8;
  *(undefined ***)((int)this + 0x250) = &PTR_LAB_0100f638;
  *(undefined ***)((int)this + 0x380) = &PTR_LAB_0100f618;
  *(undefined4 *)((int)this + 900) = 0;
  *(undefined4 *)((int)this + 0x388) = 1;
  return this;
}

