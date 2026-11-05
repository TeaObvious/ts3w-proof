/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 variation/leaf metadata contract. ECX owner, reader/context stack words, RET8, AL
   returns reader status byte+14. Context UInt16+6 >=14 selects context reference resolver versus
   direct resource read; >=5 has primitive payload. Count preflight calls reader with 0x44
   bytes/item, then resizes 0x50-byte primitive storage. Each transform is read, scale at+48 stored.
   Missing template OR variance within inclusive +/-2^-23 uses raw owner->+4->DWORD+8 identity
   lookup, SIGNED FILD plus conditional DOUBLE2^32 then DOUBLE
   constant01045940(bits3DF0000000100000, rounded reciprocal4294967295, NOT exact2^-32) and final
   FSTPfloat to primitive+4C. Otherwise separate SSE MULSS(scale,size), SUBSS(size),
   DIVSS(variance), ADDSS1, MULSS0.5, finalfloatstore. COMISS unordered takes arithmetic branch.
   Stack slots reused for integer word and floats can produce misleading decompiler casts. Extra
   per-primitive orientation randomization and its producer/control mode are not fully established
   by this selected contract. No global staging/parity claim. */

byte __thiscall TreeComponent_ReadBinaryPrimitives(void *this,void *reader,void *context)

{
  bool bVar1;
  int iVar2;
  int *this_00;
  void *this_01;
  float10 fVar3;
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  float fVar7;
  int local_b0;
  uint local_ac;
  uint local_a8;
  void *local_a4;
  float local_a0;
  undefined4 local_9c;
  ushort local_98 [2];
  int local_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  float local_70;
  float fStack_6c;
  float fStack_68;
  float fStack_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  uint local_50 [19];
  
  local_a4 = this;
  if (*(int *)((int)this + 0x18) != 0) {
    FUN_0095a160((int)this);
  }
  if (*(ushort *)((int)context + 6) < 0xe) {
    bVar1 = Stream_ReadResourceKeyTGI
                      (*(void **)((int)reader + 8),(void *)((int)this + 0x10),
                       *(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar1);
  }
  else {
    bVar1 = Stream_ReadUInt16(*(void **)((int)reader + 8),local_98,*(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar1);
    ResourceReferences_ResolveNarrowHandle
              (*(void **)((int)context + 0x10),local_98,(undefined4 *)((int)this + 0x10));
  }
  bVar1 = Stream_ReadUInt32(*(void **)((int)reader + 8),(uint *)((int)this + 0x20),
                            *(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(reader,bVar1);
  TreeComponent_ReloadTemplateAndInitializePrimitives(this);
  if (4 < *(ushort *)((int)context + 6)) {
    bVar1 = Stream_ReadUInt32(*(void **)((int)reader + 8),&local_ac,*(uint *)((int)reader + 0x10));
    StreamReader_AccumulateStatus(reader,bVar1);
    if ((*(char *)((int)reader + 0x14) == '\0') ||
       (bVar1 = StreamReader_CheckArrayBytes(reader,local_ac,0x44), !bVar1)) goto LAB_0095c474;
    this_00 = (int *)(*(int *)((int)this + 8) + 8);
    FUN_007b7fb0(this_00,local_ac);
    local_a8 = 0;
    if (local_ac != 0) {
      local_b0 = 0;
      do {
        this_01 = (void *)(*this_00 + local_b0);
        FUN_007d7bc0(reader,local_50);
        TreePrimitive_SetYawTranslation(this_01,local_50);
        bVar1 = Stream_ReadUInt32(*(void **)((int)reader + 8),(uint *)((int)this_01 + 0x48),
                                  *(uint *)((int)reader + 0x10));
        StreamReader_AccumulateStatus(reader,bVar1);
        iVar2 = *(int *)((int)local_a4 + 0xc);
                    /* COMISS eps,variance then COMISS variance,-eps: inclusive +/-2^-23 table
                       branch, unordered/NaN arithmetic branch. Arithmetic uses independent SSE
                       binary32 operations. */
        if ((iVar2 == 0) ||
           ((fVar7 = *(float *)(iVar2 + 0x54), fVar7 <= 1.1920929e-07 && (-1.1920929e-07 <= fVar7)))
           ) {
          local_9c = *(undefined4 *)(*(int *)((int)local_a4 + 4) + 0xc);
          local_a0 = (float)VariationWords_Lookup1999(*(uint *)(*(int *)((int)local_a4 + 4) + 8));
                    /* Raw UInt32 word is stored in reused stack DWORD then SIGNED FILD. Add
                       DOUBLE2^32 only for negative signed bits, multiply DOUBLE
                       constant01045940(bits3DF0000000100000, rounded reciprocal4294967295, NOT
                       exact2^-32), FSTPfloat exactly once. Any decompiler float/int cast chain here
                       is not a sequence of early numeric float32 conversions. */
          fVar7 = (float)(int)local_a0;
          if ((int)local_a0 < 0) {
            fVar7 = fVar7 + 4.2949673e+09;
          }
          *(float *)((int)this_01 + 0x4c) = fVar7 * 2.3283064e-10;
        }
        else {
          *(float *)((int)this_01 + 0x4c) =
               ((*(float *)((int)this_01 + 0x48) * *(float *)(iVar2 + 0x50) -
                *(float *)(iVar2 + 0x50)) / fVar7 + 1.0) * 0.5;
        }
        local_b0 = local_b0 + 0x50;
        local_a8 = local_a8 + 1;
        this = local_a4;
      } while (local_a8 < local_ac);
    }
    if ((*(char *)((int)reader + 0x14) != '\0') && (1 < local_ac)) {
      fVar7 = *(float *)(*this_00 + 0x40) - *(float *)(*this_00 + 0x90);
      auVar4._0_4_ = fVar7 * -1.0;
      auVar4._4_4_ = fVar7 * -1.0;
      auVar4._8_4_ = fVar7 * -1.0;
      auVar4._12_4_ = fVar7 * -1.0;
      auVar5._4_4_ = fVar7;
      auVar5._0_4_ = fVar7;
      auVar5._8_4_ = fVar7;
      auVar5._12_4_ = fVar7;
      auVar5 = maxps(auVar4,auVar5);
      auVar6._4_4_ = -(uint)(auVar5._4_4_ <= 1.5258789e-05);
      auVar6._0_4_ = -(uint)(auVar5._0_4_ <= 1.5258789e-05);
      auVar6._8_4_ = -(uint)(auVar5._8_4_ <= 1.5258789e-05);
      auVar6._12_4_ = -(uint)(auVar5._12_4_ <= 1.5258789e-05);
      iVar2 = movmskps(local_a8,auVar6);
      if (iVar2 == 0xf) {
        TreeVariation_Reseed(&local_94,*(int *)(*(int *)((int)this + 4) + 8));
        local_a8 = 1;
        if (1 < local_ac) {
          local_b0 = 0x50;
          do {
            iVar2 = *this_00 + local_b0;
            fVar3 = TreeVariation_DrawUniform(&local_94);
            local_b0 = local_b0 + 0x50;
            local_90 = (float)(fVar3 * (float10)6.2831854820251465);
            local_a8 = local_a8 + 1;
            fVar3 = (float10)fsin((float10)local_90);
            local_60 = (float)fVar3;
            fVar3 = (float10)fcos((float10)local_90);
            *(float *)(iVar2 + 0x40) = local_60;
            local_a0 = (float)fVar3;
            *(float *)(iVar2 + 0x44) = local_a0;
            this = local_a4;
            fStack_8c = local_90;
            fStack_88 = local_90;
            fStack_84 = local_90;
            local_80 = local_90;
            fStack_7c = local_90;
            fStack_78 = local_90;
            fStack_74 = local_90;
            local_70 = local_a0;
            fStack_6c = local_a0;
            fStack_68 = local_a0;
            fStack_64 = local_a0;
            fStack_5c = local_60;
            fStack_58 = local_60;
            fStack_54 = local_60;
          } while (local_a8 < local_ac);
        }
      }
    }
    FUN_0095ab30((int)this);
    TreeComponent_RefreshClusterBounds((int)this);
  }
  FUN_0095af50((int)this);
LAB_0095c474:
  return *(byte *)((int)reader + 0x14);
}

