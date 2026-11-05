/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 tree texture instruction contract. cdecl four pointers, void. Input16-bit NUL
   string; writes borrowed root/filename/extension pointers, does not modify string or allocate.
   Separators backslash/slash/colon reset extension candidate; last dot after last separator is
   remembered. UNC initial double-backslash adjusts root pointer with original scan; drive colon
   adjusts root. Filename follows last separator, extension points to remembered dot or NUL. It does
   NOT terminate filename at that dot; downstream4AEE40 still finds its FIRST dot. No trimming or
   host OS Path policy inferred. */

void __cdecl
Path_SplitWidePointers
          (ushort *pathUnits,ushort **rootPart,ushort **filenamePart,ushort **extensionPart)

{
  ushort uVar1;
  ushort *puVar2;
  int iVar3;
  ushort *puVar4;
  ushort *puVar5;
  ushort *puVar6;
  bool bVar7;
  
  uVar1 = *pathUnits;
  puVar6 = (ushort *)0x0;
  puVar4 = (ushort *)0x0;
  puVar5 = (ushort *)0x0;
  puVar2 = pathUnits;
  while (uVar1 != 0) {
    if (((uVar1 == 0x5c) || (uVar1 == 0x2f)) || (uVar1 == 0x3a)) {
      if (puVar6 == (ushort *)0x0) {
        puVar6 = puVar2;
      }
      puVar5 = (ushort *)0x0;
      puVar4 = puVar2;
    }
    bVar7 = uVar1 == 0x2e;
    uVar1 = puVar2[1];
    if (bVar7) {
      puVar5 = puVar2;
    }
    puVar2 = puVar2 + 1;
  }
  *rootPart = pathUnits;
  if ((*pathUnits == 0x5c) && (pathUnits[1] == 0x5c)) {
    puVar2 = pathUnits + 2;
    iVar3 = 0;
    uVar1 = pathUnits[2];
    while (uVar1 != 0) {
      if (uVar1 == 0x5c) {
        iVar3 = iVar3 + 1;
        bVar7 = iVar3 == 2;
      }
      else {
        if ((uVar1 == 0x5c) || (uVar1 == 0x2f)) break;
        bVar7 = uVar1 == 0x3a;
      }
      if (bVar7) break;
      puVar6 = puVar2 + 1;
      puVar2 = puVar2 + 1;
      uVar1 = *puVar6;
    }
    *rootPart = puVar2;
    if ((puVar4 != (ushort *)0x0) && (puVar4 < puVar2)) {
      puVar4 = (ushort *)(-(uint)(*puVar2 != 0) & (uint)puVar2);
    }
    if ((puVar5 != (ushort *)0x0) && (puVar5 < puVar2)) {
      puVar5 = (ushort *)0x0;
    }
  }
  else if ((puVar6 != (ushort *)0x0) && (*puVar6 == 0x3a)) {
    *rootPart = puVar6 + 1;
  }
  *filenamePart = *rootPart;
  if (puVar4 != (ushort *)0x0) {
    *filenamePart = puVar4 + 1;
  }
  if (puVar5 == (ushort *)0x0) {
    *extensionPart = puVar2;
    uVar1 = *puVar2;
    while (uVar1 != 0) {
      *extensionPart = *extensionPart + 1;
      uVar1 = **extensionPart;
    }
    return;
  }
  *extensionPart = puVar5;
  return;
}

