/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: EnumFieldCache_FindUInt64.
 * Executable tokens are unchanged from this saved export.
 * Generated types and signatures remain projections; consult the paired ASM.
 */

/* Retained original instruction qualifications:
 * Instruction contract: Observed value width is 64 bits; warm guard ordering is unsigned on the high word and unsigned on the low word. Operand sizes and branch flags govern, not generated C load casts.
 * Instruction contract: Shared cache key supplied by the caller is the raw class-record pointer; no string/name key is passed.
 * Instruction contract: The cold match result is overwritten for every exact width-masked match. Iterator order and warm/cold alias parity remain open.
 * Instruction contract: Published cache count comes from E6BA40(class)-1, whereas the copy loop visits emitted pairs; equality of those counts is not established.
 * 00D7B3CF; guards 00D7B3E3/00D7B3E6/00D7B3EC/00D7B3F2/00D7B3F4: 64-bit operand comparison; JB unsigned rejection on high DWORD, unsigned low-DWORD tie-break.
 * D7B5B9: publishes original field-derived N; this store does not count emitted temporary pairs.
 */



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
  int iVar1;
  undefined4 *puVar2;
  uint *puVar3;
  int iVar4;
  int *fieldRecord;
  uint uVar5;
  undefined1 *puVar6;
  uint *puVar7;
  int *piVar8;
  undefined4 *puVar9;
  int iVar10;
  char *pcVar11;
  void *this_00;
  uint uVar12;
  char *pcVar13;
  bool bVar14;
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
  
  piVar8 = param_1;
  this_00 = (void *)((int)this + 0xb4c);
  local_38 = (int *)0x0;
  local_2c = param_1;
  local_28 = this_00;
  FUN_005325c0(this_00,&local_20,(uint *)&local_2c);
  if (local_20 != *(uint *)(*(int *)((int)this + 0xb50) + *(int *)((int)this + 0xb54) * 4)) {
    iVar4 = *(int *)(local_20 + 8);
    puVar7 = (uint *)(iVar4 + *(int *)(local_20 + 4) * 8);
    puVar3 = (uint *)FUN_00627330(iVar4,(int)puVar7,&param_2);
    if (((puVar3 == puVar7) || (param_3 < puVar3[1])) ||
       ((param_3 <= puVar3[1] && (param_2 < *puVar3)))) {
      return (int *)0x0;
    }
    return *(int **)(*(int *)(local_20 + 0xc) + ((int)puVar3 - iVar4 >> 3) * 4);
  }
  local_14 = (undefined4 *)0x0;
  local_10 = (undefined4 *)0x0;
  local_c = 0;
  local_8 = "Scripting/GetEnumSimpleName";
  iVar4 = RuntimeClass_GetFieldRecordCount((int)param_1);
  uVar12 = iVar4 - 1;
  if (0 < (int)uVar12) {
    local_24 = uVar12;
    FUN_00d75380(&local_14,uVar12);
    local_30 = 0;
    param_1 = (int *)0xffffffff;
    fieldRecord = (int *)RuntimeClass_NextFieldRecord(piVar8,&local_30);
    if (fieldRecord != (int *)0x0) {
      do {
        iVar4 = 8;
        bVar14 = true;
        pcVar11 = "value__";
        pcVar13 = (char *)fieldRecord[3];
        do {
          if (iVar4 == 0) break;
          iVar4 = iVar4 + -1;
          bVar14 = *pcVar11 == *pcVar13;
          pcVar11 = pcVar11 + 1;
          pcVar13 = pcVar13 + 1;
        } while (bVar14);
        if (!bVar14) {
          if ((*(uint *)(*fieldRecord + 4) & 0x600) != 0) {
            iVar4 = 9;
            bVar14 = true;
            pcVar11 = (char *)fieldRecord[3];
            pcVar13 = "_Deleted";
            do {
              if (iVar4 == 0) break;
              iVar4 = iVar4 + -1;
              bVar14 = *pcVar11 == *pcVar13;
              pcVar11 = pcVar11 + 1;
              pcVar13 = pcVar13 + 1;
            } while (bVar14);
            if (bVar14) goto LAB_00d7b54c;
          }
          if (fieldRecord[4] == 0) {
            uVar12 = (int)param_1 + 1;
            uVar5 = RuntimeField_GetFieldDefToken((int)fieldRecord);
            uVar12 = MetadataConstant_FindRowForOwnerToken(*piVar8,uVar5,uVar12);
            uVar5 = MetadataTable_ReadColumn((int *)(*piVar8 + 0xe8),uVar12 - 1,0);
            fieldRecord[6] = uVar5;
            param_1 = (int *)MetadataTable_ReadColumn((int *)(*piVar8 + 0xe8),uVar12 - 1,3);
            puVar6 = MetadataBlobHeap_GetEntry(*piVar8,(uint)param_1);
            fieldRecord[4] = (int)puVar6;
          }
          local_34 = (uint *)fieldRecord[4];
          MetadataBlob_DecodeCompressedLength((byte *)local_34,&local_34);
          uVar12 = *local_34;
          uVar5 = local_34[1];
          local_20 = uVar12;
          local_1c = uVar5;
          puVar7 = UInt64FieldPairs_GetValueSlot(&local_14,&local_20);
          *puVar7 = (uint)fieldRecord;
          if ((uVar12 == param_2) && (uVar5 == param_3)) {
            local_38 = fieldRecord;
          }
        }
LAB_00d7b54c:
        fieldRecord = (int *)RuntimeClass_NextFieldRecord(piVar8,&local_30);
      } while (fieldRecord != (int *)0x0);
      this_00 = local_28;
      uVar12 = local_24;
    }
    puVar2 = local_10;
    puVar9 = local_14;
    if (local_14 != local_10) {
      FUN_00d73af0(this_00,&local_20,(uint *)&local_2c);
      uVar5 = local_20;
      *(uint *)(local_20 + 4) = uVar12;
      piVar8 = FUN_004e6f20(DAT_011cc864,uVar12 * 4,0);
      *(int **)(uVar5 + 0xc) = piVar8;
      piVar8 = FUN_004e6f20(DAT_011cc864,uVar12 * 8,0);
      *(int **)(uVar5 + 8) = piVar8;
      iVar10 = 0;
      iVar4 = 0;
      do {
        iVar1 = *(int *)(uVar5 + 8);
        *(undefined4 *)(iVar4 + iVar1) = *puVar9;
        *(undefined4 *)(iVar4 + 4 + iVar1) = puVar9[1];
        *(undefined4 *)(iVar10 + *(int *)(uVar5 + 0xc)) = puVar9[2];
        puVar9 = puVar9 + 4;
        iVar4 = iVar4 + 8;
        iVar10 = iVar10 + 4;
      } while (puVar9 != puVar2);
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

