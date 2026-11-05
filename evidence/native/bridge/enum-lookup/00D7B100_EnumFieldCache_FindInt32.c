/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: EnumFieldCache_FindInt32.
 * Executable tokens are unchanged from this saved export.
 * Generated types and signatures remain projections; consult the paired ASM.
 */

/* Retained original instruction qualifications:
 * Instruction contract: Observed value width is 32 bits; warm guard ordering is signed. Operand sizes and branch flags govern, not generated C load casts.
 * Instruction contract: Shared cache key supplied by the caller is the raw class-record pointer; no string/name key is passed.
 * Instruction contract: The cold match result is overwritten for every exact width-masked match. Iterator order and warm/cold alias parity remain open.
 * Instruction contract: Published cache count comes from E6BA40(class)-1, whereas the copy loop visits emitted pairs; equality of those counts is not established.
 * 00D7B14F; guards 00D7B163/00D7B165: 32-bit operand comparison; JL signed rejection.
 * D7B312: publishes original field-derived N; this store does not count emitted temporary pairs.
 */



/* Analyst PC1.67 Int32 enum-field lookup. ECX receiver +0B4C locates the shared
   class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 32-bit values, +0C parallel
   field pointers. Warm path calls 0082A5E0 then rejects end and query<candidate with signed
   ordering; only the low 32 value bits are read. Cold path enumerates E70470 fields, skips exact
   value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through
   E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 32. Slot helper 00D79250
   returns the field-pointer location which is overwritten; each exact query match updates the cold
   result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs:
   duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags
   composition, runtime behavior or alias/cache parity inferred. */

int * __thiscall EnumFieldCache_FindInt32(void *this,int *param_1,uint param_2)

{
  undefined4 *allocation;
  undefined4 *puVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  undefined1 *puVar5;
  int *piVar6;
  int *piVar7;
  undefined4 *puVar8;
  char *pcVar9;
  void *this_00;
  uint uVar10;
  char *pcVar11;
  bool bVar12;
  int *local_38;
  uint *local_34;
  uint local_30;
  int *local_2c;
  uint local_28;
  void *local_24;
  uint local_20 [3];
  undefined4 *local_14;
  undefined4 *local_10;
  undefined4 local_c;
  char *local_8;
  
  piVar7 = param_1;
  this_00 = (void *)((int)this + 0xb4c);
  local_38 = (int *)0x0;
  local_2c = param_1;
  local_24 = this_00;
  FUN_005325c0(this_00,local_20,(uint *)&local_2c);
  if (local_20[0] != *(uint *)(*(int *)((int)this + 0xb50) + *(int *)((int)this + 0xb54) * 4)) {
    iVar3 = *(int *)(local_20[0] + 8);
    piVar7 = (int *)(iVar3 + *(int *)(local_20[0] + 4) * 4);
    piVar2 = (int *)FUN_0082a5e0(iVar3,(int)piVar7,(int *)&param_2);
    if ((piVar2 == piVar7) || ((int)param_2 < *piVar2)) {
      return (int *)0x0;
    }
    return *(int **)(*(int *)(local_20[0] + 0xc) + ((int)piVar2 - iVar3 >> 2) * 4);
  }
  local_14 = (undefined4 *)0x0;
  local_10 = (undefined4 *)0x0;
  local_c = 0;
  local_8 = "Scripting/GetEnumSimpleName";
  iVar3 = RuntimeClass_GetFieldRecordCount((int)param_1);
  uVar10 = iVar3 - 1;
  if (0 < (int)uVar10) {
    local_20[0] = uVar10;
    FUN_00d75320(&local_14,uVar10);
    local_30 = 0;
    param_1 = (int *)0xffffffff;
    piVar2 = (int *)RuntimeClass_NextFieldRecord(piVar7,&local_30);
    if (piVar2 != (int *)0x0) {
      do {
        iVar3 = 8;
        bVar12 = true;
        pcVar9 = "value__";
        pcVar11 = (char *)piVar2[3];
        do {
          if (iVar3 == 0) break;
          iVar3 = iVar3 + -1;
          bVar12 = *pcVar9 == *pcVar11;
          pcVar9 = pcVar9 + 1;
          pcVar11 = pcVar11 + 1;
        } while (bVar12);
        if (!bVar12) {
          if ((*(uint *)(*piVar2 + 4) & 0x600) != 0) {
            iVar3 = 9;
            bVar12 = true;
            pcVar9 = (char *)piVar2[3];
            pcVar11 = "_Deleted";
            do {
              if (iVar3 == 0) break;
              iVar3 = iVar3 + -1;
              bVar12 = *pcVar9 == *pcVar11;
              pcVar9 = pcVar9 + 1;
              pcVar11 = pcVar11 + 1;
            } while (bVar12);
            if (bVar12) goto LAB_00d7b2ae;
          }
          if (piVar2[4] == 0) {
            uVar10 = (int)param_1 + 1;
            uVar4 = RuntimeField_GetFieldDefToken((int)piVar2);
            uVar10 = MetadataConstant_FindRowForOwnerToken(*piVar7,uVar4,uVar10);
            uVar4 = MetadataTable_ReadColumn((int *)(*piVar7 + 0xe8),uVar10 - 1,0);
            piVar2[6] = uVar4;
            param_1 = (int *)MetadataTable_ReadColumn((int *)(*piVar7 + 0xe8),uVar10 - 1,3);
            puVar5 = MetadataBlobHeap_GetEntry(*piVar7,(uint)param_1);
            piVar2[4] = (int)puVar5;
          }
          local_34 = (uint *)piVar2[4];
          MetadataBlob_DecodeCompressedLength((byte *)local_34,&local_34);
          uVar10 = *local_34;
          local_28 = uVar10;
          piVar6 = FUN_00d79250(&local_14,(int *)&local_28);
          *piVar6 = (int)piVar2;
          if (uVar10 == param_2) {
            local_38 = piVar2;
          }
        }
LAB_00d7b2ae:
        piVar2 = (int *)RuntimeClass_NextFieldRecord(piVar7,&local_30);
      } while (piVar2 != (int *)0x0);
      this_00 = local_24;
      uVar10 = local_20[0];
    }
    puVar1 = local_10;
    allocation = local_14;
    if (local_14 != local_10) {
      param_2 = param_2 & 0xffffff00;
      FUN_00d73af0(this_00,local_20,(uint *)&local_2c);
      uVar4 = local_20[0];
      *(uint *)(local_20[0] + 4) = uVar10;
      piVar7 = FUN_004e6f20(DAT_011cc864,uVar10 * 4,0);
      *(int **)(uVar4 + 0xc) = piVar7;
      piVar7 = FUN_004e6f20(DAT_011cc864,uVar10 * 4,0);
      *(int **)(uVar4 + 8) = piVar7;
      iVar3 = 0;
      puVar8 = allocation;
      do {
        *(undefined4 *)(iVar3 + *(int *)(uVar4 + 8)) = *puVar8;
        *(undefined4 *)(iVar3 + *(int *)(uVar4 + 0xc)) = puVar8[1];
        puVar8 = puVar8 + 2;
        iVar3 = iVar3 + 4;
      } while (puVar8 != puVar1);
      if (allocation == (undefined4 *)0x0) {
        return local_38;
      }
      Memory_FreeIfNonNull(allocation);
      return local_38;
    }
    if (local_14 != (undefined4 *)0x0) {
      Memory_FreeIfNonNull(local_14);
    }
  }
  return (int *)0x0;
}

