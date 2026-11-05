/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX manager, RET4 UTF16 zero-terminated name. Null name
   returns UInt64 zero. Otherwise hash via007D00C0 and delegate first-found lookup; do not hash
   embedded suffix past first U+0000. */

ulonglong __thiscall NameGuidMaps_FindByWideName(void *this,ushort *wideName)

{
  ulonglong uVar1;
  
  if (wideName != (ushort *)0x0) {
    uVar1 = NameHash64_Utf16Z(wideName);
    uVar1 = NameGuidMaps_FindFirstByHash(this,uVar1);
    return uVar1;
  }
  return 0;
}

