/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 variation/leaf metadata contract. cdecl three stack pointers -> advanced
   outputEAX, RET. Same unsigned count guard, signextended Int16 bits treated as UInt32 for
   division5, LOW16 quotient and unsigned cap10 as card writer. Same global renderer feature-byte
   gate and LOW16 lookup leaf ordinal seed. For mesh representation (per-leaf +20 nonnull), emit
   each authored mesh vertex with stride52; groups UInt16 at vertex+48 and seed UInt16+50. Loop
   output advances authored vertex count*52. No buffer/count/zero-divisor safety is established;
   full packed vertex conversions unexpanded. This demonstrates metadata producers, not final shader
   consumers. */

byte * __cdecl TreeLeaves_WriteMeshVertices(byte *output,void *leafSource,byte *flags)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int *piVar4;
  int iVar5;
  bool bVar6;
  float fVar7;
  float fVar8;
  byte bVar9;
  int iVar10;
  uint uVar11;
  int iVar12;
  uint uVar13;
  int iVar14;
  float *pfVar15;
  float *pfVar16;
  int iVar17;
  float *pfVar18;
  byte *pbVar19;
  float *pfVar20;
  float *pfVar21;
  float fVar22;
  float fVar23;
  float fVar24;
  float fVar25;
  float fVar26;
  float fVar27;
  float fVar28;
  float fVar29;
  float fVar30;
  byte local_9e;
  ushort local_9c;
  undefined2 local_9a;
  uint local_84;
  byte *local_7c;
  undefined4 *local_78;
  float *local_74;
  byte *local_70;
  float local_40;
  float local_3c;
  float local_38;
  float local_34;
  float local_30;
  float local_2c;
  float local_28;
  undefined4 local_24;
  undefined4 local_20;
  float local_1c [4];
  float local_c;
  float local_8;
  
  local_74 = *(float **)((int)leafSource + 0x34);
  iVar2 = *(int *)((int)leafSource + 0x30);
  local_78 = *(undefined4 **)((int)leafSource + 0x24);
  pfVar16 = *(float **)((int)leafSource + 0x2c);
  iVar3 = *(int *)((int)leafSource + 0x28);
  local_7c = *(byte **)((int)leafSource + 0x18);
  pfVar20 = *(float **)((int)leafSource + 0x1c);
  local_70 = *(byte **)((int)leafSource + 0x3c);
  iVar10 = FUN_007c2920(0x11d3780);
  uVar11 = FUN_007c2960(0x11d3780);
  if ((PTR_DAT_0115c488 == (undefined *)0x0) ||
     ((PTR_DAT_0115c488[0x1d8] == '\0' && (PTR_DAT_0115c488[0x1d9] == '\0')))) {
    bVar6 = false;
  }
  else {
    bVar6 = true;
  }
  uVar13 = *(uint *)((int)leafSource + 8);
  if (uVar13 < 5) {
    local_9c = 0;
  }
  else {
                    /* Int16 sign extension followed by UNSIGNED MUL reciprocal /5, LOW16 then
                       unsigned cap10; do not simplify to signed short /5. */
    local_9c = (ushort)((uint)(int)(short)uVar13 / 5);
  }
  local_9a = 0;
  if (10 < local_9c) {
    local_9c = 10;
  }
  if (iVar10 < 1) {
    local_9e = 0;
  }
  else {
    local_9e = (char)iVar10 - 1;
  }
  local_84 = 0;
  if (uVar13 != 0) {
    iVar10 = (int)pfVar16 - iVar3;
    pfVar18 = (float *)(iVar3 + 8);
    iVar12 = iVar2 - (int)pfVar16;
    fVar22 = DAT_00ffceb0;
    fVar23 = DAT_00f998f8;
    fVar24 = _DAT_00fe47f0;
    do {
      iVar1 = *(int *)((int)leafSource + 0x44) + (uint)*local_7c * 0x24;
      if ((bVar6) && (0 < (short)local_9c)) {
        uVar13 = VariationWords_Lookup1999(local_84);
        local_9a = (undefined2)uVar13;
        fVar22 = DAT_00ffceb0;
        fVar23 = DAT_00f998f8;
        fVar24 = _DAT_00fe47f0;
      }
      if (*(int *)(iVar1 + 0x20) != 0) {
        piVar4 = *(int **)(iVar1 + 0x20);
        iVar1 = *piVar4;
        iVar5 = piVar4[2];
        local_c = *pfVar18;
        local_34 = *pfVar20 * fVar22;
        local_30 = pfVar20[1] * fVar22;
        pfVar15 = (float *)piVar4[3];
        local_2c = pfVar20[2] * fVar22;
        local_8 = *(float *)(iVar10 + (int)pfVar18);
        bVar9 = *local_70;
        if (local_9e < *local_70) {
          bVar9 = local_9e;
        }
        iVar17 = 0;
        if (0 < iVar1) {
          fVar25 = (*(float *)(iVar12 + (int)pfVar16) + fVar23) * fVar24;
          fVar29 = (*pfVar16 + fVar23) * fVar24;
          fVar28 = (pfVar18[-2] + fVar23) * fVar24;
          fVar26 = (local_8 + fVar23) * fVar24;
          fVar27 = (local_c + fVar23) * fVar24;
          fVar30 = (*(float *)((iVar2 - iVar3) + (int)pfVar18) + fVar23) * fVar24;
          pbVar19 = output + 10;
          iVar14 = (int)pfVar15 - piVar4[1];
          local_1c[1] = 0.0;
          local_1c[2] = 0.0;
          pfVar21 = (float *)(piVar4[1] + 8);
          do {
            local_40 = pfVar21[-2] * fVar22;
            local_3c = pfVar21[-1] * fVar22;
            local_38 = *pfVar21 * fVar22;
            fVar22 = *pfVar15;
            fVar23 = pfVar15[1];
            fVar24 = *(float *)(iVar14 + (int)pfVar21);
            local_28 = *(float *)(iVar5 + iVar17 * 8);
            local_24 = *(undefined4 *)(iVar5 + 4 + iVar17 * 8);
            local_20 = *local_78;
            local_1c[0] = *local_74;
            FUN_007161c0(&local_40,(undefined2 *)(pbVar19 + -10));
            fVar8 = _DAT_00fe47f0;
            fVar7 = DAT_00f998f8;
            fVar23 = (fVar23 + DAT_00f998f8) * _DAT_00fe47f0;
            *pbVar19 = (byte)(int)((fVar24 + DAT_00f998f8) * _DAT_00fe47f0);
            pbVar19[-1] = (byte)(int)fVar23;
            pbVar19[1] = 0x7f;
            pbVar19[-2] = (byte)(int)((fVar22 + fVar7) * fVar8);
            FUN_007161c0(&local_28,(undefined2 *)(pbVar19 + 2));
            FUN_007161c0(local_1c,(undefined2 *)(pbVar19 + 10));
            pbVar19[0x14] = (byte)(int)fVar29;
            pbVar19[0x13] = (byte)(int)fVar28;
            pbVar19[0x12] = (byte)(int)fVar25;
            pbVar19[0x15] = 0x7f;
            pbVar19[0x18] = (byte)(int)fVar26;
            pbVar19[0x17] = (byte)(int)fVar27;
            pbVar19[0x19] = 0x7f;
            pbVar19[0x16] = (byte)(int)fVar30;
            FUN_007161c0(&local_34,(undefined2 *)(pbVar19 + 0x1a));
            pbVar19[0x22] = bVar9 * '\x03';
            fVar22 = DAT_00ffceb0;
            pbVar19[0x23] = (byte)(local_84 % uVar11);
            pbVar19[0x24] = *flags;
            pbVar19[0x25] = *flags * '\x03';
            *(ushort *)(pbVar19 + 0x26) = local_9c;
            *(undefined2 *)(pbVar19 + 0x28) = local_9a;
            iVar17 = iVar17 + 1;
            pfVar21 = pfVar21 + 3;
            pfVar15 = pfVar15 + 3;
            pbVar19 = pbVar19 + 0x34;
            fVar23 = DAT_00f998f8;
            fVar24 = _DAT_00fe47f0;
          } while (iVar17 < iVar1);
        }
        output = output + iVar1 * 0x34;
      }
      local_74 = local_74 + 1;
      local_78 = local_78 + 1;
      local_70 = local_70 + 1;
      local_7c = local_7c + 1;
      local_84 = local_84 + 1;
      pfVar20 = pfVar20 + 3;
      pfVar18 = pfVar18 + 0xc;
      pfVar16 = pfVar16 + 0xc;
    } while (local_84 < *(uint *)((int)leafSource + 8));
  }
  return output;
}

