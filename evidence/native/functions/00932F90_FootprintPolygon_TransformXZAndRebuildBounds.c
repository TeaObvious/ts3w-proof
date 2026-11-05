/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Transforms vertices
   in place: x'=x*m0+z*m8+m12, z'=x*m2+z*m10+m14, with source y=0. Rebuilds minXZ/maxXZ fields
   +0x20..+0x2c from +/-FLT_MAX. Decompiler (int)(floatDifference)>>31 is a numerical-cast artifact:
   original SUBSS stores IEEE float bits, integer MOV/SAR extracts the sign bit for bound selection.
    */

void __thiscall FootprintPolygon_TransformXZAndRebuildBounds(void *this,float *param_1)

{
  undefined4 uVar1;
  float *pfVar2;
  uint uVar3;
  uint uVar4;
  float fVar5;
  float fVar6;
  
  uVar1 = DAT_01043b64;
  pfVar2 = *(float **)((int)this + 0x30);
  *(undefined4 *)((int)this + 0x20) = DAT_01043b64;
  *(undefined4 *)((int)this + 0x24) = uVar1;
  fVar5 = DAT_00f998f0 - *(float *)((int)this + 0x24);
  *(float *)((int)this + 0x28) = DAT_00f998f0 - *(float *)((int)this + 0x20);
  *(float *)((int)this + 0x2c) = fVar5;
  if (pfVar2 != *(float **)((int)this + 0x34)) {
    do {
      fVar6 = *pfVar2 * *param_1 + param_1[0xc] + param_1[4] * 0.0 + pfVar2[1] * param_1[8];
      pfVar2[1] = *pfVar2 * param_1[2] + param_1[0xe] + param_1[6] * 0.0 + pfVar2[1] * param_1[10];
      *pfVar2 = fVar6;
      fVar5 = pfVar2[1];
      uVar3 = (int)(*(float *)((int)this + 0x24) - fVar5) >> 0x1f;
      uVar4 = (int)(*(float *)((int)this + 0x20) - fVar6) >> 0x1f;
      *(uint *)((int)this + 0x20) =
           ~uVar4 & (uint)fVar6 | (uint)*(float *)((int)this + 0x20) & uVar4;
      *(uint *)((int)this + 0x24) =
           ~uVar3 & (uint)fVar5 | (uint)*(float *)((int)this + 0x24) & uVar3;
      fVar5 = pfVar2[1];
      uVar3 = (int)(*(float *)((int)this + 0x2c) - fVar5) >> 0x1f;
      fVar6 = *pfVar2;
      uVar4 = (int)(*(float *)((int)this + 0x28) - fVar6) >> 0x1f;
      pfVar2 = pfVar2 + 2;
      *(uint *)((int)this + 0x28) =
           ~uVar4 & (uint)*(float *)((int)this + 0x28) | (uint)fVar6 & uVar4;
      *(uint *)((int)this + 0x2c) =
           ~uVar3 & (uint)*(float *)((int)this + 0x2c) | (uint)fVar5 & uVar3;
    } while (pfVar2 != *(float **)((int)this + 0x34));
  }
  return;
}

