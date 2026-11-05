/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall x,z,decreaseByte RET0C. Every NON-cliff layer decreases by supplied byte to
   minimum0; cliff row is skipped. Sum of resulting non-cliff bytes is UInt32 modulo32, then AEF830.
   Original layer order preserved; no floating rescale or redistribution of integer remainder. */

void __thiscall LotTerrain_DiminishPaintAtSample(void *this,uint x,uint z,uchar decrease)

{
  ushort uVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  byte *pbVar6;
  uint layerIndex;
  uint requestedAlpha;
  undefined4 local_8;
  
  uVar3 = (*(int *)((int)this + 0x34) - *(int *)((int)this + 0x30)) / 0x18;
  layerIndex = 0;
  local_8 = 0;
  if (uVar3 != 0) {
    do {
      if (layerIndex != *(uint *)((int)this + 0x18)) {
        iVar2 = *(int *)(*(int *)((int)this + 0x60) + layerIndex * 4);
        iVar4 = ((int)z >> 2) * *(int *)(iVar2 + 8) + ((int)x >> 2);
        uVar1 = *(ushort *)(*(int *)(iVar2 + 0x30) + iVar4 * 2);
        if ((short)uVar1 < 0) {
          pbVar6 = (byte *)(*(int *)(iVar2 + 0x10) + iVar4);
        }
        else {
          pbVar6 = (byte *)(*(int *)(iVar2 + 0x20) + ((z & 3) + (uint)uVar1 * 4) * 4 + (x & 3));
        }
        uVar5 = (uint)*pbVar6;
        if (decrease < uVar5) {
          requestedAlpha = uVar5 - decrease;
        }
        else {
          requestedAlpha = 0;
        }
        if (requestedAlpha != uVar5) {
          LotTerrain_SetPaintAlpha(this,layerIndex,x,z,requestedAlpha);
        }
        local_8 = local_8 + requestedAlpha;
      }
      layerIndex = layerIndex + 1;
    } while (layerIndex < uVar3);
  }
  LotTerrain_NormalizePaintAtSample(this,x,z,local_8);
  return;
}

