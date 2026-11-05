/* Original TS3W PC 1.67; reference identity: evidence/reference.json.
 * Actual saved Ghidra C; current full name: FreeWithAllocatorHeader.
 * The actual exported suffix below is unchanged, including generated ABI/types and known projection limits.
 * DB EOL comments are preserved as addressed annotations; no inline placement is inferred.
 * Save was acknowledged; no reopen test or original runtime observation is claimed.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 00505086 [EOL]: Null user pointer is a no-op; nonnull path requires a valid16byte allocation header.
 * 00505088 [EOL]: Read saved allocator at userpointer-16; all release calls receive header base, not user pointer.
 * 0050509A [EOL]: Nonzero saved allocator: virtual+C(headerbase,0); allocator lifetime and concrete backend unresolved.
 * 005050A4 [EOL]: Zero saved allocator uses current default global011CC864, not an allocator pointer stored at allocation time.
 */



/* Analyst-assigned allocator-header release helper; original PC1.67, existing
   owned00505080..005050A9 (42bytes/17instructions), unchanged. One caller-clean stackword is a user
   pointer previously returned from the matching allocation helper5050B0. Null pointer returns
   without dereference. For nonnull pointer read allocator at pointer-16 and use base=pointer-16.
   Nonzero allocator invokes its virtual+C(base,0), then returns. Zero allocator invokes4E5E70 with
   current default global011CC864 and base. No double-free/stale-pointer guard, destructor, refcount
   decrement, thread synchronization or allocator lifetime guarantee is present. Header validity and
   matching allocation ownership are required by the caller. Frame deleting-destructor
   candidate5238D0 reaches this helper only for deletion flagmask01; constructor/destructor
   registration and complete lifetime protocol remain separate. */

void __cdecl FreeWithAllocatorHeader(int userPointer)

{
  if (userPointer != 0) {
    if (*(int **)(userPointer + -0x10) != (int *)0x0) {
      (**(code **)(**(int **)(userPointer + -0x10) + 0xc))(userPointer + -0x10,0);
      return;
    }
    FUN_004e5e70(DAT_011cc864,userPointer + -0x10);
  }
  return;
}

