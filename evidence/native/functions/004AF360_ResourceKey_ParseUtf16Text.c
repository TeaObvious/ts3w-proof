/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 textual resource-key parser. Physical caller-clean stack4 UTF16 text and stack8
   output16-byte key; plain RET defines boolean AL, not full EAX. Reads type and group through
   imported wcstoul base16, requiring colon at each returned end; stores them at output+8/+C. Reads
   instance through unsigned64 helper4FEF40 base16. Optional apostrophe form requires first value
   fit32 bits and exactly8 following consumed UTF16 units; combines high and low words. After
   instance requires NUL or first space, without validating the later suffix. Writes instance output
   only on success. Import locale and numeric helpers remain distinct services; no CLR HexNumber
   equivalence. Owned89 instructions209 bytes; original calls/bytes preserved. */

bool __cdecl ResourceKey_ParseUtf16Text(ushort *text,void *outKey)

{
  ushort *puVar1;
  void *pvVar2;
  ulong uVar3;
  ulonglong uVar4;
  
  uVar3 = wcstoul((wchar_t *)text,(wchar_t **)&text,0x10);
  pvVar2 = outKey;
  *(ulong *)((int)outKey + 8) = uVar3;
  if (*text != 0x3a) {
    return false;
  }
  uVar3 = wcstoul((wchar_t *)(text + 1),(wchar_t **)&text,0x10);
  *(ulong *)((int)pvVar2 + 0xc) = uVar3;
  if (*text != 0x3a) {
    return false;
  }
  uVar4 = NumericText_ParseUnsigned64(text + 1,&text,0x10);
  puVar1 = text;
  if (*text != 0) {
    if ((*text == 0x27) && ((int)(uVar4 >> 0x20) == 0)) {
      uVar3 = wcstoul((wchar_t *)(text + 1),(wchar_t **)&text,0x10);
      uVar4 = CONCAT44((int)uVar4,uVar3);
      if (((int)text - (int)puVar1 & 0xfffffffeU) != 0x12) {
        return false;
      }
    }
    if ((*text != 0) && (*text != 0x20)) {
      return false;
    }
  }
  *(ulonglong *)pvVar2 = uVar4;
  return true;
}

