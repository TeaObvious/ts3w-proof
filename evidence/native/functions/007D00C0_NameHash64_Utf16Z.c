/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. cdecl(pointer), scans 16-bit units to first zero,
   excludes terminator, then hashes explicit unit count. Requires non-null readable terminated
   input; caller0059D790 handles null. Empty string returns FNV offset basis. */

ulonglong __cdecl NameHash64_Utf16Z(ushort *wideName)

{
  ushort uVar1;
  ushort *puVar2;
  ulonglong uVar3;
  
  puVar2 = wideName;
  do {
    uVar1 = *puVar2;
    puVar2 = puVar2 + 1;
  } while (uVar1 != 0);
  uVar3 = NameHash64_Fnv1FoldedUtf16Units(wideName,(int)puVar2 - (int)(wideName + 1) >> 1);
  return uVar3;
}

