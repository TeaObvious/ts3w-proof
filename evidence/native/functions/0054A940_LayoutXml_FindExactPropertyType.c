/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static. One caller-clean UTF16 name pointer; binary-search22
   entries at01150180 with unsigned UTF16 code-unit comparison, exact case-sensitive names. Found
   row returns its UInt32 tag; missing returns0. Complete table includes original bool/double/float
   and signed/unsigned widths, object/struct/string/point/rect and resource aliases. Current
   color/float32/vector2/string16 names are not in this original table. */

uint __cdecl LayoutXml_FindExactPropertyType(ushort *typeName)

{
  ushort uVar1;
  int iVar2;
  ushort *puVar3;
  int iVar4;
  ushort *puVar5;
  int iVar6;
  int iVar7;
  bool bVar8;
  
  iVar7 = 0;
  iVar6 = 0x16;
  do {
    iVar2 = (iVar6 + iVar7) / 2;
    puVar5 = *(ushort **)(iVar2 * 8 + 0x1150180);
    puVar3 = typeName;
    do {
      uVar1 = *puVar3;
      bVar8 = uVar1 < *puVar5;
      if (uVar1 != *puVar5) {
LAB_0054a987:
        iVar4 = (1 - (uint)bVar8) - (uint)(bVar8 != 0);
        goto LAB_0054a98c;
      }
      if (uVar1 == 0) break;
      uVar1 = puVar3[1];
      bVar8 = uVar1 < puVar5[1];
      if (uVar1 != puVar5[1]) goto LAB_0054a987;
      puVar3 = puVar3 + 2;
      puVar5 = puVar5 + 2;
    } while (uVar1 != 0);
    iVar4 = 0;
LAB_0054a98c:
    if (iVar4 == 0) {
      return *(uint *)(iVar2 * 8 + 0x1150184);
    }
    if (-1 < iVar4) {
      iVar7 = iVar2 + 1;
      iVar2 = iVar6;
    }
    iVar6 = iVar2;
    if (iVar2 <= iVar7) {
      return 0;
    }
  } while( true );
}

