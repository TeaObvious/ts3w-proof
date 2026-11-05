/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction visual evidence/lifetime comparison): Analyst wrapper role from
   actual AC1020 call and bit0-gated allocator free. ECX lot plus one physical DWORD deletionFlags
   stack slot, RET4; EAX returns the exact original receiver via AC3628 MOV EAX,ESI. AC3613 calls
   AC1020 without extra stack arguments, ignores its return value, then TEST byte[ESP+8],1; only set
   low-byte bit0 pushes receiver to4E44E0 and caller ADD ESP,4. It does not use all flag bits as a
   Boolean, nor itself implement member/resource cleanup. Preserve order: members first, optional
   allocation free, original receiver return. No original bytes changed; this is a producer/consumer
   ABI join for the actual lot lifecycle, not a project visual-receipt operation. */

void * __thiscall Lot_ScalarDeletingDestructor(void *this,uint deletionFlags)

{
  Lot_DestroyMembers(this);
  if ((deletionFlags & 1) != 0) {
    Memory_FreeIfNonNull(this);
  }
  return this;
}

