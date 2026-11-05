/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 variation/leaf metadata contract. cdecl three stack pointers, returns advanced
   output EAX, RET. Selected metadata contract only: source DWORD+8 count compared UNSIGNED<5.
   Otherwise MOVSX EDX,CX then UNSIGNED MUL CCCCCCCD and SHR EDX2 = uint32(signextend16(count))/5,
   retain LOW16; UNSIGNED cap10. This is NOT signed Int16 division. Renderer pointer0115C488 nonnull
   and either byte+1D8/+1D9 nonzero enables variation; if resulting group WORD signedpositive,
   seed=LOW16(Lookup1999(UInt32 leafOrdinal)); initial seed0 otherwise. For card representation only
   (selected per-leaf +20 null), writes four40-byte vertices, groups UInt16 at vertex+36, seed
   UInt16+38; advances output160. No count/buffer containment is added. Other packed
   normal/half/position semantics and ambient conversion modes remain separate. */

byte * __cdecl TreeLeaves_WriteCardVertices(byte *output,void *leafSource,byte *flags)

{
  float *pfVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  int iVar5;
  bool bVar6;
  float fVar7;
  byte bVar8;
  int iVar9;
  uint uVar10;
  uint uVar11;
  byte bVar12;
  float *pfVar13;
  float *pfVar14;
  byte *pbVar15;
  float *pfVar16;
  float fVar17;
  float fVar18;
  float fVar19;
  byte local_79;
  ushort local_78;
  undefined2 local_76;
  byte *local_70;
  byte *local_6c;
  undefined4 *local_68;
  float *local_64;
  float *local_60;
  undefined2 local_5c;
  undefined2 local_54;
  uint local_50;
  float local_24;
  float local_20;
  float local_1c;
  float local_18;
  float local_14;
  undefined4 local_10;
  float local_c;
  float local_8;
  undefined4 local_4;
  
  local_64 = *(float **)((int)leafSource + 0x34);
  local_70 = *(byte **)((int)leafSource + 0x3c);
  pfVar13 = *(float **)((int)leafSource + 0x1c);
  local_6c = *(byte **)((int)leafSource + 0x18);
  local_68 = *(undefined4 **)((int)leafSource + 0x24);
  iVar5 = *(int *)((int)leafSource + 0x28);
  iVar9 = FUN_007c2920(0x11d3780);
  uVar10 = FUN_007c2960(0x11d3780);
  if ((PTR_DAT_0115c488 == (undefined *)0x0) ||
     ((PTR_DAT_0115c488[0x1d8] == '\0' && (PTR_DAT_0115c488[0x1d9] == '\0')))) {
    bVar6 = false;
  }
  else {
    bVar6 = true;
  }
  uVar11 = *(uint *)((int)leafSource + 8);
  if (uVar11 < 5) {
    local_78 = 0;
  }
  else {
                    /* MOVSX16 followed by UNSIGNED MUL/SHR: uint32(int32(int16(count)))/5, truncate
                       quotient LOW16, then unsigned cap10. Preserve cast and division signedness
                       separately. */
    local_78 = (ushort)((uint)(int)(short)uVar11 / 5);
  }
  local_76 = 0;
  if (10 < local_78) {
    local_78 = 10;
  }
  if (iVar9 < 1) {
    local_79 = 0;
  }
  else {
    local_79 = (char)iVar9 - 1;
  }
  local_50 = 0;
  if (uVar11 != 0) {
    local_60 = (float *)(iVar5 + 8);
    do {
      pfVar1 = (float *)(*(int *)((int)leafSource + 0x44) + (uint)*local_6c * 0x24);
      if ((bVar6) && (0 < (short)local_78)) {
        uVar11 = VariationWords_Lookup1999(local_50);
        local_76 = (undefined2)uVar11;
      }
      if (pfVar1[8] == 0.0) {
        pfVar14 = (float *)pfVar1[6];
        local_18 = pfVar1[2] - _DAT_00f9b5b4;
        local_14 = pfVar1[3] - _DAT_00f9b5b4;
        bVar8 = *local_70;
        if (local_79 < *local_70) {
          bVar8 = local_79;
        }
        local_24 = *pfVar13 * DAT_00ffceb0;
        local_20 = pfVar13[1] * DAT_00ffceb0;
        local_1c = pfVar13[2] * DAT_00ffceb0;
        bVar12 = 0;
        local_10 = 0;
        pbVar15 = output + 10;
        pfVar16 = local_60;
        do {
          fVar19 = pfVar16[-2];
          fVar18 = pfVar16[-1];
          fVar17 = *pfVar16;
          fVar2 = *local_64;
          fVar3 = *pfVar14;
          fVar4 = pfVar14[1];
          local_c = pfVar1[1] * DAT_00ffceb0;
          local_8 = *pfVar1 * DAT_00ffceb0;
          local_4 = *local_68;
          FUN_007161c0(&local_24,(undefined2 *)(pbVar15 + -10));
          fVar7 = _DAT_00ffcee8;
          fVar17 = (fVar17 + DAT_00f998f8) * _DAT_00fe47f0;
          fVar18 = (fVar18 + DAT_00f998f8) * _DAT_00fe47f0;
          fVar19 = (fVar19 + DAT_00f998f8) * _DAT_00fe47f0;
          pbVar15[1] = (byte)(int)((fVar2 + DAT_00f998f8) * _DAT_00fe47f0);
          *pbVar15 = (byte)(int)fVar17;
          pbVar15[-1] = (byte)(int)fVar18;
          pbVar15[-2] = (byte)(int)fVar19;
          local_54 = (undefined2)(int)ROUND(fVar3 * fVar7);
          *(undefined2 *)(pbVar15 + 2) = local_54;
          local_5c = (undefined2)(int)ROUND(fVar4 * fVar7);
          *(undefined2 *)(pbVar15 + 4) = local_5c;
          FUN_007161c0(&local_c,(undefined2 *)(pbVar15 + 6));
          FUN_007161c0(&local_18,(undefined2 *)(pbVar15 + 0xe));
          pbVar15[0x16] = bVar8 * '\x03';
          pbVar15[0x17] = (byte)(local_50 % uVar10);
          pbVar15[0x18] = bVar12;
          pbVar15[0x19] = *flags;
                    /* ESI points vertex+10: WORD at ESI+1A -> vertex+36 groups; WORD ESI+1C ->
                       vertex+38 low16 deterministic seed; output stride40. */
          *(ushort *)(pbVar15 + 0x1a) = local_78;
          *(undefined2 *)(pbVar15 + 0x1c) = local_76;
          bVar12 = bVar12 + 1;
          pfVar16 = pfVar16 + 3;
          pfVar14 = pfVar14 + 2;
          pbVar15 = pbVar15 + 0x28;
        } while (bVar12 < 4);
        output = output + 0xa0;
      }
      local_60 = local_60 + 0xc;
      local_70 = local_70 + 1;
      local_6c = local_6c + 1;
      local_64 = local_64 + 1;
      local_68 = local_68 + 1;
      local_50 = local_50 + 1;
      pfVar13 = pfVar13 + 3;
    } while (local_50 < *(uint *)((int)leafSource + 8));
  }
  return output;
}

