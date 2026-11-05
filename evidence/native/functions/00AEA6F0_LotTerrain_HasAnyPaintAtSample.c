/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall x,z RET8; only AL Boolean. Walk ALL ordered alpha maps including cliff, return
   AL1 on first nonzero raw sample, otherwise AL0. It does NOT read the aggregate+70 map, so wrapped
   derived totals must not replace this predicate. No layer normalization or usage mutation occurs.
    */

bool __thiscall LotTerrain_HasAnyPaintAtSample(void *this,uint x,uint z)

{
  ushort uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  int *piVar6;
  uint local_8;
  
  iVar5 = *(int *)((int)this + 0x34) - *(int *)((int)this + 0x30);
  iVar2 = iVar5 >> 0x1f;
  iVar5 = iVar5 / 0x18 + iVar2;
  local_8 = 0;
  if (iVar5 != iVar2) {
    piVar6 = *(int **)((int)this + 0x60);
    do {
      iVar4 = *piVar6;
      uVar3 = *(int *)(iVar4 + 8) * ((int)z >> 2) + ((int)x >> 2);
      uVar1 = *(ushort *)(*(int *)(iVar4 + 0x30) + uVar3 * 2);
      if ((short)uVar1 < 0) {
        iVar4 = *(int *)(iVar4 + 0x10);
      }
      else {
        iVar4 = *(int *)(iVar4 + 0x20) + ((z & 3) + (uint)uVar1 * 4) * 4;
        uVar3 = x & 3;
      }
      if (*(char *)(iVar4 + uVar3) != '\0') {
        return true;
      }
      local_8 = local_8 + 1;
      piVar6 = piVar6 + 1;
    } while (local_8 < (uint)(iVar5 - iVar2));
  }
  return false;
}

