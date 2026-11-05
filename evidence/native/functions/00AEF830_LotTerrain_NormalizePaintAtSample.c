/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall x,z,nonCliffSumUInt32 RET0C. Read cliff alpha when index+18 !=FFFFFFFF,
   otherwise0. available=255-cliff (0 when cliff255). Only if UNSIGNED sum >available, visit
   non-cliff nonzero samples and set byte=floor(alpha*available/sum). IMUL then XOR EDX,EDX; DIV
   atAEF8CD is UNSIGNED integer division, not float/signed/rounded conversion. Remainder is not
   redistributed. Finally store LOWBYTE(min(sum,available)+cliff) into derived aggregate map+70 even
   if no normalization ran. Dirty/derived native manager updates are distinct from immutable host
   snapshot/rebuild ownership. */

void __thiscall LotTerrain_NormalizePaintAtSample(void *this,uint x,uint z,uint nonCliffSum)

{
  uint uVar1;
  uint x_00;
  uint z_00;
  byte bVar2;
  uint uVar3;
  uint layerIndex;
  
  z_00 = z;
  x_00 = x;
  if (*(int *)((int)this + 0x18) == -1) {
    x = 0;
  }
  else {
    bVar2 = LotTerrain_GetPaintAlpha(this,*(int *)((int)this + 0x18),x,z);
    x = (uint)bVar2;
    if (0xfe < x) {
      z = 0;
      goto LAB_00aef87e;
    }
  }
  z = 0xff - x;
LAB_00aef87e:
  uVar3 = nonCliffSum;
  if (z < nonCliffSum) {
    uVar1 = (*(int *)((int)this + 0x34) - *(int *)((int)this + 0x30)) / 0x18;
    layerIndex = 0;
    uVar3 = z;
    if (uVar1 != 0) {
      do {
        if (layerIndex != *(uint *)((int)this + 0x18)) {
          bVar2 = LotTerrain_GetPaintAlpha(this,layerIndex,x_00,z_00);
          if (bVar2 != 0) {
            LotTerrain_SetPaintAlpha(this,layerIndex,x_00,z_00,(bVar2 * z) / nonCliffSum);
          }
        }
        layerIndex = layerIndex + 1;
      } while (layerIndex < uVar1);
    }
  }
  nonCliffSum = CONCAT31(nonCliffSum._1_3_,(char)uVar3 + (char)x);
  FUN_00aee310((void *)((int)this + 0x70),(char *)&nonCliffSum,x_00,z_00);
  return;
}

