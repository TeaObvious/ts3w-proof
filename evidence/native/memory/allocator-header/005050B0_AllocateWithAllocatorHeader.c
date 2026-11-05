/* Original TS3W PC 1.67; reference identity: evidence/reference.json.
 * Actual saved Ghidra C; current full name: AllocateWithAllocatorHeader.
 * The actual exported suffix below is unchanged, including generated ABI/types and known projection limits.
 * DB EOL comments are preserved as addressed annotations; no inline placement is inferred.
 * Save was acknowledged; no reopen test or original runtime observation is claimed.
 */

/* Current DB instruction comments, addressed by original instruction:
 * 005050B4 [EOL]: DWORD add0F then maskFFFFFFF0 rounds raw second argument to a16multiple with unchecked wraparound.
 * 005050DC [EOL]: Custom allocator virtual+4 receives size+16,label,0,rounded rawarg2,16; return is allocation base.
 * 005050F3 [EOL]: Null allocator uses current default global011CC864 through4E6F70; backend allocation contract stays separate.
 * 005050F8 [EOL]: Null allocation returns0 without writing a header.
 * 005050FE [EOL]: Store allocator identity at allocation baseDWORD0, then return base+16; other header bytes untouched.
 */



/* Analyst-assigned generic allocator-header helper; original PC1.67, existing
   owned005050B0..00505104 (85bytes/36instructions), unchanged. Four caller-clean stackwords:
   requested byte size, raw alignment-like word, diagnostic label, optional allocator interface.
   Compute DWORD(rawArg2+0F)&FFFFFFF0 with original wrapping arithmetic; requested size+10hex also
   wraps unchecked. A nonnull allocator receives virtual+4(size+16,label,0,roundedArg2,16);
   otherwise default global011CC864 goes to4E6F70(size+16,roundedArg2,16,0). Null allocation
   returnsEAX0. On success store optional allocator pointer at baseDWORD0 and return base+16,
   reserving a16byte header without initializing its other12bytes here. There is no
   allocation-size/alignment overflow validation or lifetime/thread policy in this helper. Frame
   factory candidate523900 passes(size60hex,raw4,labelFBD988,its secondstackarg), so this helper
   rounds raw4 to16, not effective alignment4. Matching505080 free path recovers stored allocator
   from pointer-16; backend allocator ownership/behavior remain separate. */

uint * __cdecl
AllocateWithAllocatorHeader
          (int requestedBytes,int rawRoundedWord,undefined4 allocationLabel,int *allocatorInterface)

{
  uint roundedWord;
  uint *allocationBase;
  
  roundedWord = rawRoundedWord + 0xfU & 0xfffffff0;
  if (allocatorInterface == (int *)0x0) {
    allocationBase = FUN_004e6f70(DAT_011cc864,requestedBytes + 0x10,roundedWord,0x10,0);
  }
  else {
    allocationBase =
         (uint *)(**(code **)(*allocatorInterface + 4))
                           (requestedBytes + 0x10,allocationLabel,0,roundedWord,0x10);
  }
  if (allocationBase == (uint *)0x0) {
    return (uint *)0x0;
  }
  *allocationBase = (uint)allocatorInterface;
  return allocationBase + 4;
}

