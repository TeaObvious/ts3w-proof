/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cleanup job contract: Constructs enclosing service and JobManager at owner+18
   via00599eb0. Stores input byte at+D0, clears+C8 and sets+CC=5. Together with00599c90 this
   connects the published interface to vtable00fda80c. */

void * __thiscall JobService_ConstructWithEmbeddedManager(void *this,bool mode)

{
  FUN_0059f4c0(this,0x2a8d18b,0);
  *(undefined ***)((int)this + 0x10) = &PTR_LAB_00fe2ae4;
  *(undefined ***)this = &PTR_FUN_00fda878;
  *(undefined ***)((int)this + 0x10) = &PTR_FUN_00fda874;
  JobManager_ConstructInterface((void *)((int)this + 0x18));
  *(bool *)((int)this + 0xd0) = mode;
  *(undefined4 *)((int)this + 200) = 0;
  *(undefined4 *)((int)this + 0xcc) = 5;
  return this;
}

