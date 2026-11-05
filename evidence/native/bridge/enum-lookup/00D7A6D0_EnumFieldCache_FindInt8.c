/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: EnumFieldCache_FindInt8.
 * Executable tokens are unchanged from this saved export.
 * Generated types and signatures remain projections; consult the paired ASM.
 */

/* Retained original instruction qualifications:
 * Instruction contract: The preserved pointer-looking value parameter denotes scalar stack storage. It is not dereferenced as an input pointer.
 * Instruction contract: Observed value width is 8 bits; warm guard ordering is signed. Operand sizes and branch flags govern, not generated C load casts.
 * Instruction contract: Shared cache key supplied by the caller is the raw class-record pointer; no string/name key is passed.
 * Instruction contract: The cold match result is overwritten for every exact width-masked match. Iterator order and warm/cold alias parity remain open.
 * Instruction contract: Published cache count comes from E6BA40(class)-1, whereas the copy loop visits emitted pairs; equality of those counts is not established.
 * 00D7A71E; guards 00D7A732/00D7A734: 8-bit operand comparison; JL signed rejection.
 * D7A8EF: publishes original field-derived N; this store does not count emitted temporary pairs.
 */



/* Analyst PC1.67 Int8 enum-field lookup. Value words are scalar stack storage; the preserved
   pointer-looking decompiler parameter is not dereferenced. ECX receiver +0B4C locates the shared
   class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 8-bit values, +0C parallel
   field pointers. Warm path calls 00D73250 then rejects end and query<candidate with signed
   ordering; only the low 8 value bits are read. Cold path enumerates E70470 fields, skips exact
   value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through
   E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 8. Slot helper 00D79010
   returns the field-pointer location which is overwritten; each exact query match updates the cold
   result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs:
   duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags
   composition, runtime behavior or alias/cache parity inferred. */

int * __thiscall EnumFieldCache_FindInt8(void *this,int *param_1,undefined1 *param_2)

{
  undefined1 *puVar1;
  char *pcVar2;
  int iVar3;
  int *fieldRecord;
  uint uVar4;
  undefined1 *puVar5;
  int *piVar6;
  undefined1 *puVar7;
  char *pcVar8;
  void *this_00;
  uint uVar9;
  bool bVar10;
  int *local_38;
  uint local_34;
  byte *local_30;
  uint local_2c;
  int *local_28;
  void *local_24;
  uint local_20 [3];
  undefined1 *local_14;
  undefined1 *local_10;
  undefined4 local_c;
  char *local_8;
  
  piVar6 = param_1;
  this_00 = (void *)((int)this + 0xb4c);
  local_38 = (int *)0x0;
  local_28 = param_1;
  local_24 = this_00;
  FUN_005325c0(this_00,local_20,(uint *)&local_28);
  if (local_20[0] != *(uint *)(*(int *)((int)this + 0xb50) + *(int *)((int)this + 0xb54) * 4)) {
    iVar3 = *(int *)(local_20[0] + 8);
    pcVar8 = (char *)(*(int *)(local_20[0] + 4) + iVar3);
    pcVar2 = (char *)FUN_00d73250(iVar3,(int)pcVar8,(char *)&param_2);
    if ((pcVar2 == pcVar8) || ((char)param_2 < *pcVar2)) {
      return (int *)0x0;
    }
    return *(int **)(*(int *)(local_20[0] + 0xc) + ((int)pcVar2 - iVar3) * 4);
  }
  local_14 = (undefined1 *)0x0;
  local_10 = (undefined1 *)0x0;
  local_c = 0;
  local_8 = "Scripting/GetEnumSimpleName";
  iVar3 = RuntimeClass_GetFieldRecordCount((int)piVar6);
  uVar9 = iVar3 - 1;
  if (0 < (int)uVar9) {
    local_20[0] = uVar9;
    FUN_00d75320(&local_14,uVar9);
    local_2c = 0;
    local_34 = 0xffffffff;
    fieldRecord = (int *)RuntimeClass_NextFieldRecord(piVar6,&local_2c);
    if (fieldRecord != (int *)0x0) {
      do {
        iVar3 = 8;
        bVar10 = true;
        pcVar2 = "value__";
        pcVar8 = (char *)fieldRecord[3];
        do {
          if (iVar3 == 0) break;
          iVar3 = iVar3 + -1;
          bVar10 = *pcVar2 == *pcVar8;
          pcVar2 = pcVar2 + 1;
          pcVar8 = pcVar8 + 1;
        } while (bVar10);
        if (!bVar10) {
          if ((*(uint *)(*fieldRecord + 4) & 0x600) != 0) {
            iVar3 = 9;
            bVar10 = true;
            pcVar2 = (char *)fieldRecord[3];
            pcVar8 = "_Deleted";
            do {
              if (iVar3 == 0) break;
              iVar3 = iVar3 + -1;
              bVar10 = *pcVar2 == *pcVar8;
              pcVar2 = pcVar2 + 1;
              pcVar8 = pcVar8 + 1;
            } while (bVar10);
            if (bVar10) goto LAB_00d7a882;
          }
          if (fieldRecord[4] == 0) {
            local_34 = local_34 + 1;
            uVar9 = RuntimeField_GetFieldDefToken((int)fieldRecord);
            uVar9 = MetadataConstant_FindRowForOwnerToken(*piVar6,uVar9,local_34);
            uVar4 = MetadataTable_ReadColumn((int *)(*piVar6 + 0xe8),uVar9 - 1,0);
            fieldRecord[6] = uVar4;
            local_34 = MetadataTable_ReadColumn((int *)(*piVar6 + 0xe8),uVar9 - 1,3);
            puVar5 = MetadataBlobHeap_GetEntry(*piVar6,local_34);
            fieldRecord[4] = (int)puVar5;
          }
          local_30 = (byte *)fieldRecord[4];
          MetadataBlob_DecodeCompressedLength(local_30,&local_30);
          param_1 = (int *)CONCAT31(param_1._1_3_,*local_30);
          pcVar2 = FUN_00d79010(&local_14,(char *)&param_1);
          *(int **)pcVar2 = fieldRecord;
          if ((char)param_1 == (char)param_2) {
            local_38 = fieldRecord;
          }
        }
LAB_00d7a882:
        fieldRecord = (int *)RuntimeClass_NextFieldRecord(piVar6,&local_2c);
      } while (fieldRecord != (int *)0x0);
      this_00 = local_24;
      uVar9 = local_20[0];
    }
    puVar1 = local_10;
    puVar5 = local_14;
    if (local_14 != local_10) {
      param_2 = (undefined1 *)((uint)param_2 & 0xffffff00);
      FUN_00d73af0(this_00,local_20,(uint *)&local_28);
      uVar4 = local_20[0];
      *(uint *)(local_20[0] + 4) = uVar9;
      piVar6 = FUN_004e6f20(DAT_011cc864,uVar9 * 4,0);
      *(int **)(uVar4 + 0xc) = piVar6;
      piVar6 = FUN_004e6f20(DAT_011cc864,uVar9,0);
      *(int **)(uVar4 + 8) = piVar6;
      iVar3 = 0;
      puVar7 = puVar5;
      do {
        *(undefined1 *)(iVar3 + *(int *)(uVar4 + 8)) = *puVar7;
        *(undefined4 *)(*(int *)(uVar4 + 0xc) + iVar3 * 4) = *(undefined4 *)(puVar7 + 4);
        puVar7 = puVar7 + 8;
        iVar3 = iVar3 + 1;
      } while (puVar7 != puVar1);
      if (puVar5 == (undefined1 *)0x0) {
        return local_38;
      }
      param_2 = puVar5;
      Memory_FreeIfNonNull(puVar5);
      return local_38;
    }
    if (local_14 != (undefined1 *)0x0) {
      Memory_FreeIfNonNull(local_14);
    }
  }
  return (int *)0x0;
}

