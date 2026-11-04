/* Final Ghidra decompilation after semantic name/comment readback.
   Original identity is centralized in references/pc-167.md.
   ASM pair records the complete existing owned body; generated C is not a callable replacement.
   Function-local instruction notes explain the saved body/plate; generated statements are unchanged. */

/* Analyst PC1.67 UInt64 enum-field lookup. ECX receiver +0B4C locates the shared
   class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 64-bit values, +0C parallel
   field pointers. Warm path calls 00627330 then rejects end and query<candidate with unsigned
   ordering (64-bit: high word unsigned, low word unsigned); only the low 64 value bits are read.
   Cold path enumerates E70470 fields, skips exact value__ and conditionally _Deleted under
   [field.type+4]&600h, lazily fills field+10/+18 through E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0
   supplies bytes read at width 64. Slot helper 00D792E0 returns the field-pointer location which is
   overwritten; each exact query match updates the cold result. Cache count is E6BA40(class)-1, not
   locally recomputed from copied pairs: duplicate/filter count invariants remain unresolved.
   Returns field pointer or zero; no flags composition, runtime behavior or alias/cache parity
   inferred. */

int * __thiscall EnumFieldCache_FindUInt64(void *this,int *param_1,uint param_2,uint param_3)

{
  /* Instruction contract: Observed value width is 64 bits; warm guard ordering is unsigned on the high word and unsigned on the low word. Operand sizes and branch flags govern, not generated C load casts. */
  /* Instruction contract: Shared cache key supplied by the caller is the raw class-record pointer; no string/name key is passed. */
  /* Instruction contract: The cold match result is overwritten for every exact width-masked match. Iterator order and warm/cold alias parity remain open. */
  /* Instruction contract: Published cache count comes from E6BA40(class)-1, whereas the copy loop visits emitted pairs; equality of those counts is not established. */

  int iVar1;
  undefined4 *puVar2;
  uint *puVar3;
  int iVar4;
  int *piVar5;
  uint uVar6;
  undefined1 *puVar7;
  uint *puVar8;
  int *piVar9;
  undefined4 *puVar10;
  int iVar11;
  char *pcVar12;
  void *this_00;
  uint uVar13;
  char *pcVar14;
  bool bVar15;
  int *local_38;
  uint *local_34;
  uint local_30;
  int *local_2c;
  void *local_28;
  uint local_24;
  uint local_20;
  uint local_1c;
  undefined4 *local_14;
  undefined4 *local_10;
  undefined4 local_c;
  char *local_8;

  piVar9 = param_1;
  this_00 = (void *)((int)this + 0xb4c);
  local_38 = (int *)0x0;
  local_2c = param_1;
  local_28 = this_00;
  FUN_005325c0(this_00,&local_20,(uint *)&local_2c);
  if (local_20 != *(uint *)(*(int *)((int)this + 0xb50) + *(int *)((int)this + 0xb54) * 4)) {
    iVar4 = *(int *)(local_20 + 8);
    puVar8 = (uint *)(iVar4 + *(int *)(local_20 + 4) * 8);
  /* 00D7B3CF; guards 00D7B3E3/00D7B3E6/00D7B3EC/00D7B3F2/00D7B3F4: 64-bit operand comparison; JB unsigned rejection on high DWORD, unsigned low-DWORD tie-break. */
    puVar3 = (uint *)FUN_00627330(iVar4,(int)puVar8,&param_2);
    if (((puVar3 == puVar8) || (param_3 < puVar3[1])) ||
       ((param_3 <= puVar3[1] && (param_2 < *puVar3)))) {
      return (int *)0x0;
    }
    return *(int **)(*(int *)(local_20 + 0xc) + ((int)puVar3 - iVar4 >> 3) * 4);
  }
  local_14 = (undefined4 *)0x0;
  local_10 = (undefined4 *)0x0;
  local_c = 0;
  local_8 = "Scripting/GetEnumSimpleName";
  iVar4 = FUN_00e6ba40((int)param_1);
  uVar13 = iVar4 - 1;
  if (0 < (int)uVar13) {
    local_24 = uVar13;
    FUN_00d75380(&local_14,uVar13);
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
            if (bVar15) goto LAB_00d7b54c;
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
          local_34 = (uint *)piVar5[4];
          FUN_00e9b5b0((byte *)local_34,&local_34);
          uVar13 = *local_34;
          uVar6 = local_34[1];
          local_20 = uVar13;
          local_1c = uVar6;
          puVar8 = UInt64FieldPairs_GetValueSlot(&local_14,&local_20);
          *puVar8 = (uint)piVar5;
          if ((uVar13 == param_2) && (uVar6 == param_3)) {
            local_38 = piVar5;
          }
        }
LAB_00d7b54c:
        piVar5 = (int *)FUN_00e70470(piVar9,&local_30);
      } while (piVar5 != (int *)0x0);
      this_00 = local_28;
      uVar13 = local_24;
    }
    puVar2 = local_10;
    puVar10 = local_14;
    if (local_14 != local_10) {
      FUN_00d73af0(this_00,&local_20,(uint *)&local_2c);
      uVar6 = local_20;
  /* D7B5B9: publishes original field-derived N; this store does not count emitted temporary pairs. */
      *(uint *)(local_20 + 4) = uVar13;
      piVar9 = FUN_004e6f20(DAT_011cc864,uVar13 * 4,0);
      *(int **)(uVar6 + 0xc) = piVar9;
      piVar9 = FUN_004e6f20(DAT_011cc864,uVar13 * 8,0);
      *(int **)(uVar6 + 8) = piVar9;
      iVar11 = 0;
      iVar4 = 0;
      do {
        iVar1 = *(int *)(uVar6 + 8);
        *(undefined4 *)(iVar4 + iVar1) = *puVar10;
        *(undefined4 *)(iVar4 + 4 + iVar1) = puVar10[1];
        *(undefined4 *)(iVar11 + *(int *)(uVar6 + 0xc)) = puVar10[2];
        puVar10 = puVar10 + 4;
        iVar4 = iVar4 + 8;
        iVar11 = iVar11 + 4;
      } while (puVar10 != puVar2);
      if (local_14 == (undefined4 *)0x0) {
        return local_38;
      }
      Memory_FreeIfNonNull(local_14);
      return local_38;
    }
    if (local_14 != (undefined4 *)0x0) {
      Memory_FreeIfNonNull(local_14);
    }
  }
  return (int *)0x0;
}
