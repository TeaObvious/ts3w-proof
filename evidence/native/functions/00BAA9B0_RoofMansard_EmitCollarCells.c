/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 roof numeric instruction contract. thiscall owner plus FOUR stack words RET 0x10.
   Gets roof dimensions via virtual+10/+14, origin floats+5C/+60. Signed roof-type predicate12..1D
   selects collar9; otherwise7. Unsigned cell loops admit z<collar || x<collar || height-collar-1<=z
   || width-collar-1<=x and call BAA390. Initial parity is
   LOWBYTE(FISTP64(binary32((originX+originZ)*2))) complemented&1; it toggles each cell/row. Do not
   replace original rounding/controlword with Floor(v+0.5) without caller-domain evidence. Original
   unsigned conversions use signedFILD plus float2^32 correction. Full triangle
   factory/material/overlap work in BAA390 remains unexpanded; decompiler aligned-ESP aliases are
   compiler slots, not reliable typed arrays. No universal draw success or source grid parity claim.
    */

void __thiscall RoofMansard_EmitCollarCells(void *this,uint word0,uint word1,uint word2,uint word3)

{
  float fVar1;
  float fVar2;
  int *piVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  bool bVar7;
  bool bVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  uint uVar12;
  uint uVar13;
  float fVar14;
  byte bStack_f8;
  undefined4 uStack_e4;
  float fStack_d0;
  float fStack_cc;
  float fStack_c8;
  float fStack_c4;
  float fStack_c0;
  float fStack_bc;
  float fStack_b8;
  float fStack_b4;
  undefined1 auStack_b0 [172];
  
  piVar3 = *(int **)((int)this + 0x18);
  uVar9 = (**(code **)(*piVar3 + 0x10))();
  uVar10 = (**(code **)(*piVar3 + 0x14))();
  fVar1 = (float)piVar3[0x17];
  uStack_e4 = CONCAT31(uStack_e4._1_3_,uVar10 <= uVar9);
  fVar2 = (float)piVar3[0x18];
  FUN_00ba3040(auStack_b0,*(int *)((int)this + 0x10),(int *)word1,*(int *)((int)this + 0x1c) == 0);
  bVar8 = RoofType_IsPagoda(piVar3[0xb]);
  uVar11 = (-(uint)bVar8 & 2) + 7;
  bStack_f8 = (byte)(longlong)ROUND((fVar2 + fVar1) * DAT_0103fd88);
  bVar8 = (bool)(~bStack_f8 & 1);
  uVar13 = 0;
  fVar14 = _DAT_00f9b5b4;
  fVar4 = _DAT_00f9b5b4;
  if (uVar10 != 1) {
    do {
      fVar6 = (float)(int)uVar13;
      if ((int)uVar13 < 0) {
        fVar6 = fVar6 + FLOAT_00f99948;
      }
      uVar12 = 0;
      fVar6 = fVar6 * fVar4 + fVar2;
      bVar7 = bVar8;
      if (uVar9 != 1) {
        do {
          if ((((uVar13 < uVar11) || (uVar12 < uVar11)) || ((uVar10 - uVar11) - 1 <= uVar13)) ||
             ((uVar9 - uVar11) - 1 <= uVar12)) {
            fVar5 = (float)(int)uVar12;
            if ((int)uVar12 < 0) {
              fVar5 = fVar5 + FLOAT_00f99948;
            }
            fStack_d0 = fVar5 * fVar4 + fVar1;
            fStack_c8 = fStack_d0 + fVar14;
            fStack_cc = fVar6 + fVar14;
            fStack_c4 = fVar6;
            fStack_c0 = fStack_d0;
            fStack_bc = fVar6;
            fStack_b8 = fStack_c8;
            fStack_b4 = fStack_cc;
            FUN_00baa390(this,(void *)word0,(int *)word1,word2,word3,bVar7,uVar9,uVar10,uStack_e4,
                         piVar3 + 0x12,(int)auStack_b0,(uint)(word3 != 0),uVar12,uVar13,fStack_d0,
                         fVar6,&fStack_c0,&fStack_c8,&fStack_b8,&fStack_d0);
            fVar14 = _DAT_00f9b5b4;
            fVar4 = _DAT_00f9b5b4;
          }
          uVar12 = uVar12 + 1;
          bVar7 = bVar7 == false;
        } while (uVar12 < uVar9 - 1);
      }
      uVar13 = uVar13 + 1;
      bVar8 = bVar8 == false;
    } while (uVar13 < uVar10 - 1);
  }
  FUN_00b9dc30((int)auStack_b0);
  return;
}

