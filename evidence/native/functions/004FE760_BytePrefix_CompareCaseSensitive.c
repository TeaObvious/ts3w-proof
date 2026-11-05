/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. cdecl two byte pointers + UInt32 limit; signed int return.
   Limit0 returns0 without dereferencing. Byte-by-byte CASE-SENSITIVE compare; first unequal returns
   zero-extended left minus right. Equal zero byte returns0; else stops at limit. No null-pointer or
   Unicode/case folding. Used with vo_3 and base_tv7 prefixes, so suffix characters are not checked.
    */

int __cdecl BytePrefix_CompareCaseSensitive(byte *left,byte *right,uint byteCount)

{
  byte bVar1;
  byte bVar2;
  
  while( true ) {
    if (byteCount == 0) {
      return 0;
    }
    bVar1 = *left;
    bVar2 = *right;
    right = right + 1;
    left = left + 1;
    if (bVar1 != bVar2) break;
    if (bVar1 == 0) {
      return 0;
    }
    byteCount = byteCount - 1;
  }
  return (uint)bVar1 - (uint)bVar2;
}

