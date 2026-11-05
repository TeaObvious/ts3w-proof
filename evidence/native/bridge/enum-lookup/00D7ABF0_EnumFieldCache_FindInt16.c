/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: EnumFieldCache_FindInt16.
 * Executable tokens are unchanged from this saved export.
 * Generated types and signatures remain projections; consult the paired ASM.
 */

/* Retained original instruction qualifications:
 * Instruction contract: Observed value width is 16 bits; warm guard ordering is signed. Operand sizes and branch flags govern, not generated C load casts.
 * Instruction contract: Shared cache key supplied by the caller is the raw class-record pointer; no string/name key is passed.
 * Instruction contract: The cold match result is overwritten for every exact width-masked match. Iterator order and warm/cold alias parity remain open.
 * Instruction contract: Published cache count comes from E6BA40(class)-1, whereas the copy loop visits emitted pairs; equality of those counts is not established.
 * 00D7AC3F; guards 00D7AC54/00D7AC57: 16-bit operand comparison; JL signed rejection.
 * D7AC35..D7AC3F: three stack words are pushed; displayed fourth unaff_DI argument is an unused inherited prototype artifact.
 * D7AE0E: publishes original field-derived N; this store does not count emitted temporary pairs.
 */



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
  ushort uVar1;
  undefined2 *puVar2;
  short *psVar3;
  int iVar4;
  int *fieldRecord;
  uint uVar5;
  undefined1 *puVar6;
  short *psVar7;
  int *piVar8;
  undefined2 *puVar9;
  int iVar10;
  char *pcVar11;
  void *this_00;
  uchar unaff_DI;
  uint uVar12;
  char *pcVar13;
  bool bVar14;
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
  
  piVar8 = param_1;
  this_00 = (void *)((int)this + 0xb4c);
  local_38 = (int *)0x0;
  local_2c = param_1;
  local_24 = this_00;
  FUN_005325c0(this_00,local_20,(uint *)&local_2c);
  if (local_20[0] != *(uint *)(*(int *)((int)this + 0xb50) + *(int *)((int)this + 0xb54) * 4)) {
    psVar7 = *(short **)(local_20[0] + 8);
    iVar4 = *(int *)(local_20[0] + 4);
    psVar3 = RoomIdRange_LowerBoundSigned16(psVar7,psVar7 + iVar4,(short *)&param_2,unaff_DI);
    if ((psVar3 == psVar7 + iVar4) || ((short)(ushort)param_2 < *psVar3)) {
      return (int *)0x0;
    }
    return *(int **)(*(int *)(local_20[0] + 0xc) + ((int)psVar3 - (int)psVar7 >> 1) * 4);
  }
  local_14 = (undefined2 *)0x0;
  local_10 = (undefined2 *)0x0;
  local_c = 0;
  local_8 = "Scripting/GetEnumSimpleName";
  iVar4 = RuntimeClass_GetFieldRecordCount((int)param_1);
  uVar12 = iVar4 - 1;
  if (0 < (int)uVar12) {
    local_20[0] = uVar12;
    FUN_00d75320(&local_14,uVar12);
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
            if (bVar14) goto LAB_00d7ada1;
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
          local_34 = (ushort *)fieldRecord[4];
          MetadataBlob_DecodeCompressedLength((byte *)local_34,&local_34);
          uVar1 = *local_34;
          local_28 = (uint)uVar1;
          psVar7 = FUN_00d79130(&local_14,(short *)&local_28);
          *(int **)psVar7 = fieldRecord;
          if (uVar1 == (ushort)param_2) {
            local_38 = fieldRecord;
          }
        }
LAB_00d7ada1:
        fieldRecord = (int *)RuntimeClass_NextFieldRecord(piVar8,&local_30);
      } while (fieldRecord != (int *)0x0);
      this_00 = local_24;
      uVar12 = local_20[0];
    }
    puVar2 = local_10;
    puVar9 = local_14;
    if (local_14 != local_10) {
      param_2 = param_2 & 0xffffff00;
      FUN_00d73af0(this_00,local_20,(uint *)&local_2c);
      uVar5 = local_20[0];
      *(uint *)(local_20[0] + 4) = uVar12;
      piVar8 = FUN_004e6f20(DAT_011cc864,uVar12 * 4,0);
      *(int **)(uVar5 + 0xc) = piVar8;
      piVar8 = FUN_004e6f20(DAT_011cc864,uVar12 * 2,0);
      *(int **)(uVar5 + 8) = piVar8;
      iVar10 = 0;
      iVar4 = 0;
      do {
        *(undefined2 *)(iVar4 + *(int *)(uVar5 + 8)) = *puVar9;
        *(undefined4 *)(iVar10 + *(int *)(uVar5 + 0xc)) = *(undefined4 *)(puVar9 + 2);
        puVar9 = puVar9 + 4;
        iVar4 = iVar4 + 2;
        iVar10 = iVar10 + 4;
      } while (puVar9 != puVar2);
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

