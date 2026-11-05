/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack string review. Count 16-bit literal units to NUL, require equal record
   unit count, compare bytes exactly (DWORD chunks plus byte tail). Returns0/1, no case folding.
   This is content TYPE equality, distinct from case-folded XML FIELD names. */

bool __cdecl WideString_EqualsLiteral(void *wideStringRecord,ushort *wideLiteral)

{
  ushort uVar1;
  ushort *puVar2;
  int iVar3;
  uint uVar4;
  int iVar5;
  byte *pbVar6;
  
  uVar1 = *wideLiteral;
  puVar2 = wideLiteral;
  while (uVar1 != 0) {
    puVar2 = puVar2 + 1;
    uVar1 = *puVar2;
  }
  pbVar6 = *(byte **)wideStringRecord;
  iVar3 = (int)puVar2 - (int)wideLiteral >> 1;
  if (*(int *)((int)wideStringRecord + 4) - (int)pbVar6 >> 1 != iVar3) {
    return false;
  }
  for (uVar4 = iVar3 * 2; 3 < uVar4; uVar4 = uVar4 - 4) {
    if (*(int *)pbVar6 != *(int *)wideLiteral) goto LAB_004edc98;
    wideLiteral = wideLiteral + 2;
    pbVar6 = pbVar6 + 4;
  }
  if (uVar4 == 0) {
LAB_004edcf5:
    iVar5 = 0;
  }
  else {
LAB_004edc98:
    iVar3 = (uint)*pbVar6 - (uint)(byte)*wideLiteral;
    if (iVar3 == 0) {
      if (uVar4 == 1) goto LAB_004edcf5;
      iVar3 = (uint)pbVar6[1] - (uint)*(byte *)((int)wideLiteral + 1);
      if (iVar3 == 0) {
        if (uVar4 == 2) goto LAB_004edcf5;
        iVar3 = (uint)pbVar6[2] - (uint)(byte)wideLiteral[1];
        if (iVar3 == 0) {
          if ((uVar4 == 3) ||
             (iVar3 = (uint)pbVar6[3] - (uint)*(byte *)((int)wideLiteral + 3), iVar3 == 0))
          goto LAB_004edcf5;
        }
      }
    }
    iVar5 = 1;
    if (iVar3 < 1) {
      iVar5 = -1;
    }
  }
  if (iVar5 != 0) {
    return false;
  }
  return true;
}

