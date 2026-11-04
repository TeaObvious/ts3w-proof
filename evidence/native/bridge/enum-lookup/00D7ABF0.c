/* Final Ghidra decompilation after semantic name/comment readback.
   Original identity is centralized in references/pc-167.md.
   ASM pair records the complete existing owned body; generated C is not a callable replacement.
   Function-local instruction notes explain the saved body/plate; generated statements are unchanged. */

/* Analyst PC1.67 Int16 enum-field lookup. ECX receiver +0B4C locates the shared
   class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 16-bit values, +0C parallel
   field pointers. Warm path calls 00ABA600 then rejects end and query<candidate with signed
   ordering; only the low 16 value bits are read. Cold path enumerates E70470 fields, skips exact
   value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through
   E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 16. Slot helper 00D79130
   returns the field-pointer location which is overwritten; each exact query match updates the cold
   result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs:
   duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags
   composition, runtime behavior or alias/cache parity inferred. */

int * __thiscall EnumFieldCache_FindInt16(void *this,int *param_1,uint param_2)

{
  /* Instruction contract: Observed value width is 16 bits; warm guard ordering is signed. Operand sizes and branch flags govern, not generated C load casts. */
  /* Instruction contract: Shared cache key supplied by the caller is the raw class-record pointer; no string/name key is passed. */
  /* Instruction contract: The cold match result is overwritten for every exact width-masked match. Iterator order and warm/cold alias parity remain open. */
  /* Instruction contract: Published cache count comes from E6BA40(class)-1, whereas the copy loop visits emitted pairs; equality of those counts is not established. */

  ushort uVar1;
  undefined2 *puVar2;
  short *psVar3;
  int iVar4;
  int *piVar5;
  uint uVar6;
  undefined1 *puVar7;
  short *psVar8;
  int *piVar9;
  undefined2 *puVar10;
  int iVar11;
  char *pcVar12;
  void *this_00;
  uchar unaff_DI;
  uint uVar13;
  char *pcVar14;
  bool bVar15;
  int *local_38;
  ushort *local_34;
  uint local_30;
  int *local_2c;
  uint local_28;
  void *local_24;
  uint local_20 [3];
  undefined2 *local_14;
  undefined2 *local_10;
  undefined4 local_c;
  char *local_8;

  piVar9 = param_1;
  this_00 = (void *)((int)this + 0xb4c);
  local_38 = (int *)0x0;
  local_2c = param_1;
  local_24 = this_00;
  FUN_005325c0(this_00,local_20,(uint *)&local_2c);
  if (local_20[0] != *(uint *)(*(int *)((int)this + 0xb50) + *(int *)((int)this + 0xb54) * 4)) {
    psVar8 = *(short **)(local_20[0] + 8);
    iVar4 = *(int *)(local_20[0] + 4);
  /* 00D7AC3F; guards 00D7AC54/00D7AC57: 16-bit operand comparison; JL signed rejection. */
  /* D7AC35..D7AC3F: three stack words are pushed; displayed fourth unaff_DI argument is an unused inherited prototype artifact. */
    psVar3 = RoomIdRange_LowerBoundSigned16(psVar8,psVar8 + iVar4,(short *)&param_2,unaff_DI);
    if ((psVar3 == psVar8 + iVar4) || ((short)(ushort)param_2 < *psVar3)) {
      return (int *)0x0;
    }
    return *(int **)(*(int *)(local_20[0] + 0xc) + ((int)psVar3 - (int)psVar8 >> 1) * 4);
  }
  local_14 = (undefined2 *)0x0;
  local_10 = (undefined2 *)0x0;
  local_c = 0;
  local_8 = "Scripting/GetEnumSimpleName";
  iVar4 = FUN_00e6ba40((int)param_1);
  uVar13 = iVar4 - 1;
  if (0 < (int)uVar13) {
    local_20[0] = uVar13;
    FUN_00d75320(&local_14,uVar13);
    local_30 = 0;
    param_1 = (int *)0xffffffff;
    piVar5 = (int *)FUN_00e70470(piVar9,&local_30);
    if (piVar5 != (int *)0x0) {
      do {
        iVar4 = 8;
        bVar15 = true;
        pcVar12 = "value__";
        pcVar14 = (char *)piVar5[3];
        do {
          if (iVar4 == 0) break;
          iVar4 = iVar4 + -1;
          bVar15 = *pcVar12 == *pcVar14;
          pcVar12 = pcVar12 + 1;
          pcVar14 = pcVar14 + 1;
        } while (bVar15);
        if (!bVar15) {
          if ((*(uint *)(*piVar5 + 4) & 0x600) != 0) {
            iVar4 = 9;
            bVar15 = true;
            pcVar12 = (char *)piVar5[3];
            pcVar14 = "_Deleted";
            do {
              if (iVar4 == 0) break;
              iVar4 = iVar4 + -1;
              bVar15 = *pcVar12 == *pcVar14;
              pcVar12 = pcVar12 + 1;
              pcVar14 = pcVar14 + 1;
            } while (bVar15);
            if (bVar15) goto LAB_00d7ada1;
          }
          if (piVar5[4] == 0) {
            uVar13 = (int)param_1 + 1;
            uVar6 = FUN_00e6faa0((int)piVar5);
            uVar13 = FUN_00e9cd80(*piVar9,uVar6,uVar13);
            uVar6 = FUN_00e9b500((int *)(*piVar9 + 0xe8),uVar13 - 1,0);
            piVar5[6] = uVar6;
            param_1 = (int *)FUN_00e9b500((int *)(*piVar9 + 0xe8),uVar13 - 1,3);
            puVar7 = FUN_00e9b3f0(*piVar9,(uint)param_1);
            piVar5[4] = (int)puVar7;
          }
          local_34 = (ushort *)piVar5[4];
          FUN_00e9b5b0((byte *)local_34,&local_34);
          uVar1 = *local_34;
          local_28 = (uint)uVar1;
          psVar8 = FUN_00d79130(&local_14,(short *)&local_28);
          *(int **)psVar8 = piVar5;
          if (uVar1 == (ushort)param_2) {
            local_38 = piVar5;
          }
        }
LAB_00d7ada1:
        piVar5 = (int *)FUN_00e70470(piVar9,&local_30);
      } while (piVar5 != (int *)0x0);
      this_00 = local_24;
      uVar13 = local_20[0];
    }
    puVar2 = local_10;
    puVar10 = local_14;
    if (local_14 != local_10) {
      param_2 = param_2 & 0xffffff00;
      FUN_00d73af0(this_00,local_20,(uint *)&local_2c);
      uVar6 = local_20[0];
  /* D7AE0E: publishes original field-derived N; this store does not count emitted temporary pairs. */
      *(uint *)(local_20[0] + 4) = uVar13;
      piVar9 = FUN_004e6f20(DAT_011cc864,uVar13 * 4,0);
      *(int **)(uVar6 + 0xc) = piVar9;
      piVar9 = FUN_004e6f20(DAT_011cc864,uVar13 * 2,0);
      *(int **)(uVar6 + 8) = piVar9;
      iVar11 = 0;
      iVar4 = 0;
      do {
        *(undefined2 *)(iVar4 + *(int *)(uVar6 + 8)) = *puVar10;
        *(undefined4 *)(iVar11 + *(int *)(uVar6 + 0xc)) = *(undefined4 *)(puVar10 + 2);
        puVar10 = puVar10 + 4;
        iVar4 = iVar4 + 2;
        iVar11 = iVar11 + 4;
      } while (puVar10 != puVar2);
      if (local_14 == (undefined2 *)0x0) {
        return local_38;
      }
      Memory_FreeIfNonNull(local_14);
      return local_38;
    }
    if (local_14 != (undefined2 *)0x0) {
      Memory_FreeIfNonNull(local_14);
    }
  }
  return (int *)0x0;
}
