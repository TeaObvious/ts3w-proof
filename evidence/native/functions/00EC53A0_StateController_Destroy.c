/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 complete defined body (82 bytes/31 instructions). ECX=this, stack deletion flags, RET4;
   EAX returns original this address even after optional free. Stores controller vtable, invokes
   pending+0x2C virtual+0x4 then current+0x24 virtual+0x4 when nonnull (without clearing either
   slot), frees nonnull vector storage+0x14 through reviewed Memory_FreeIfNonNull004E44E0, then
   calls base0059F450; (flags & 1) != 0 additionally frees this. Does not walk queued records
   itself. External sequencing with00EC5200, callback effects and failure/unwinding remain open; no
   stronger teardown or thread guarantee. */

void * __thiscall StateController_Destroy(void *this,byte param_1)

{
  *(undefined ***)this = &PTR_FUN_010f4d3c;
  if (*(int **)((int)this + 0x2c) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x2c) + 4))();
  }
  if (*(int **)((int)this + 0x24) != (int *)0x0) {
    (**(code **)(**(int **)((int)this + 0x24) + 4))();
  }
  if (*(void **)((int)this + 0x14) != (void *)0x0) {
    Memory_FreeIfNonNull(*(void **)((int)this + 0x14));
  }
  FUN_0059f450(this);
  if ((param_1 & 1) != 0) {
    Memory_FreeIfNonNull(this);
  }
  return this;
}

