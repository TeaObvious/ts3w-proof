/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX terrain, no stack arguments/plainRET, EAX full UInt32 selected index orFFFFFFFF. Scan
   rows in increasing index, signed usage, best initialized7FFFFFFF; accept only strictly smaller
   usage. A positive-used cliff is excluded; a cliff with usage<=0 remains eligible. Strict
   comparison makes FIRST equal-ranked row win. This cap-only fallback must not be confused with
   AEFF20 earlier first-nonpositive scan, which includes cliff without an exclusion. */

uint __thiscall LotTerrain_SelectLeastUsedPaint(void *this)

{
  int iVar1;
  uint uVar2;
  int *piVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  
  iVar4 = *(int *)((int)this + 0x34) - *(int *)((int)this + 0x30);
  iVar1 = iVar4 >> 0x1f;
  iVar5 = iVar4 / 0x18 + iVar1;
  uVar6 = 0xffffffff;
  iVar4 = 0x7fffffff;
  uVar2 = 0;
  if (iVar5 != iVar1) {
    piVar3 = (int *)(*(int *)((int)this + 0x30) + 0x10);
    do {
      if (((uVar2 != *(uint *)((int)this + 0x18)) || (*piVar3 < 1)) && (*piVar3 < iVar4)) {
        uVar6 = uVar2;
        iVar4 = *piVar3;
      }
      uVar2 = uVar2 + 1;
      piVar3 = piVar3 + 6;
    } while (uVar2 < (uint)(iVar5 - iVar1));
  }
  return uVar6;
}

