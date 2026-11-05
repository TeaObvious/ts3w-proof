/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. cdecl four words returns borrowed16-bit numeric
   start orNULL. Optional last-underscore selection; signed byte-span minimum16bytes (8units),
   optional0x/0X skips prefix, otherwise firstunit must passCRTiswdigit. Every remainingunit must
   passiswxdigit. Exactly8digits accepted;16 only if allowSixteenDigits lowbyte nonzero. No
   whitespace skip here. CRT locale/digit implementation remains external; not a portable invariant
   ASCII decoder claim. */

ushort * __cdecl
ResourceKey_FindNumericSuffix
          (ushort *begin,ushort *end,byte afterLastUnderscore,byte allowSixteenDigits)

{
  ushort *puVar1;
  int iVar2;
  int iVar3;
  wint_t *pwVar4;
  
  puVar1 = begin;
  if (afterLastUnderscore != 0) {
    for (; puVar1 != end; puVar1 = puVar1 + 1) {
      if (*puVar1 == 0x5f) {
        begin = puVar1 + 1;
      }
    }
  }
  if ((int)((int)end - (int)begin & 0xfffffffeU) < 0x10) {
    return (ushort *)0x0;
  }
  if ((*begin == 0x30) && ((begin[1] == 0x78 || (begin[1] == 0x58)))) {
    begin = begin + 2;
  }
  else {
    iVar3 = iswdigit(*begin);
    if (iVar3 == 0) {
      return (ushort *)0x0;
    }
  }
  iVar3 = 0;
  pwVar4 = begin;
  if (begin != end) {
    do {
      iVar2 = iswxdigit(*pwVar4);
      if (iVar2 == 0) {
        return (ushort *)0x0;
      }
      pwVar4 = pwVar4 + 1;
      iVar3 = iVar3 + 1;
    } while (pwVar4 != end);
    if ((iVar3 == 8) || ((iVar3 == 0x10 && (allowSixteenDigits != 0)))) {
      return begin;
    }
  }
  return (ushort *)0x0;
}

