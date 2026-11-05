/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall layerIndex,x,z,addByte,otherDecreaseByte RET14hex. Each selected alpha saturates
   at255 after adding the byte. Every other layer, INCLUDING cliff+18, decreases by supplied
   otherDecreaseByte (zero leaves it unchanged), saturating at0. Sum is DWORD modulo32 and excludes
   cliff. Call AEF830 with sum. Actual LotPaintTool CEE1E0 -> D244B0 supplies literal
   otherDecrease1; it is not an inherent constant for every caller of this generic function.
   Block-compressed input is decoded through retained alpha map pointers; this path changes raw
   samples and usage, not gamma or float blend weights. */

void __thiscall
LotTerrain_AddPaintAtSample
          (void *this,uint layerIndex,uint x,uint z,uchar addAlpha,uchar otherDecrease)

{
  ushort uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint layerIndex_00;
  uint local_c;
  
  uVar2 = (*(int *)((int)this + 0x34) - *(int *)((int)this + 0x30)) / 0x18;
  layerIndex_00 = 0;
  local_c = 0;
  if (uVar2 != 0) {
    do {
      iVar4 = *(int *)(*(int *)((int)this + 0x60) + layerIndex_00 * 4);
      uVar3 = *(int *)(iVar4 + 8) * ((int)z >> 2) + ((int)x >> 2);
      uVar1 = *(ushort *)(*(int *)(iVar4 + 0x30) + uVar3 * 2);
      if ((short)uVar1 < 0) {
        iVar4 = *(int *)(iVar4 + 0x10);
      }
      else {
        iVar4 = *(int *)(iVar4 + 0x20) + ((z & 3) + (uint)uVar1 * 4) * 4;
        uVar3 = x & 3;
      }
      uVar3 = (uint)*(byte *)(iVar4 + uVar3);
      if (layerIndex_00 == layerIndex) {
        uVar5 = addAlpha + uVar3;
        if (0xff < uVar5) {
          uVar5 = 0xff;
        }
        if (uVar5 != uVar3) {
          LotTerrain_SetPaintAlpha(this,layerIndex_00,x,z,uVar5);
        }
        if (layerIndex_00 != *(uint *)((int)this + 0x18)) {
          local_c = local_c + uVar5;
        }
      }
      else if (otherDecrease == '\0') {
        if (layerIndex_00 != *(uint *)((int)this + 0x18)) {
          local_c = local_c + uVar3;
        }
      }
      else {
        if (otherDecrease < uVar3) {
          uVar5 = uVar3 - otherDecrease;
        }
        else {
          uVar5 = 0;
        }
        if (uVar5 != uVar3) {
          LotTerrain_SetPaintAlpha(this,layerIndex_00,x,z,uVar5);
        }
        if (layerIndex_00 != *(uint *)((int)this + 0x18)) {
          local_c = local_c + uVar5;
        }
      }
      layerIndex_00 = layerIndex_00 + 1;
    } while (layerIndex_00 < uVar2);
  }
  LotTerrain_NormalizePaintAtSample(this,x,z,local_c);
  return;
}

