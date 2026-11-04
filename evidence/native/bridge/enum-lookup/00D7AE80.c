/* Final Ghidra decompilation after semantic name/comment readback.
   Original identity is centralized in references/pc-167.md.
   ASM pair records the complete existing owned body; generated C is not a callable replacement.
   Function-local instruction notes explain the saved body/plate; generated statements are unchanged. */

/* Analyst PC1.67 UInt32 enum-field lookup. ECX receiver +0B4C locates the shared
   class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 32-bit values, +0C parallel
   field pointers. Warm path calls 00B09680 then rejects end and query<candidate with unsigned
   ordering; only the low 32 value bits are read. Cold path enumerates E70470 fields, skips exact
   value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through
   E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 32. Slot helper 00D791C0
   returns the field-pointer location which is overwritten; each exact query match updates the cold
   result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs:
   duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags
   composition, runtime behavior or alias/cache parity inferred. */

int * __thiscall EnumFieldCache_FindUInt32(void *this,int *param_1,uint param_2)

{
  /* Instruction contract: Observed value width is 32 bits; warm guard ordering is unsigned. Operand sizes and branch flags govern, not generated C load casts. */
  /* Instruction contract: Shared cache key supplied by the caller is the raw class-record pointer; no string/name key is passed. */
  /* Instruction contract: The cold match result is overwritten for every exact width-masked match. Iterator order and warm/cold alias parity remain open. */
  /* Instruction contract: Published cache count comes from E6BA40(class)-1, whereas the copy loop visits emitted pairs; equality of those counts is not established. */

  undefined4 *allocation;
  undefined4 *puVar1;
  uint *puVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  undefined1 *puVar6;
  uint *puVar7;
  int *piVar8;
  undefined4 *puVar9;
  char *pcVar10;
  void *this_00;
  uint uVar11;
  char *pcVar12;
  bool bVar13;
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

  piVar8 = param_1;
  this_00 = (void *)((int)this + 0xb4c);
  local_38 = (int *)0x0;
  local_2c = param_1;
  local_24 = this_00;
  FUN_005325c0(this_00,local_20,(uint *)&local_2c);
  if (local_20[0] != *(uint *)(*(int *)((int)this + 0xb50) + *(int *)((int)this + 0xb54) * 4)) {
    puVar7 = *(uint **)(local_20[0] + 8);
    iVar3 = *(int *)(local_20[0] + 4);
  /* 00D7AECF; guards 00D7AEE3/00D7AEE5: 32-bit operand comparison; JB unsigned rejection. */
    puVar2 = UInt32Range_LowerBound(puVar7,puVar7 + iVar3,&param_2);
    if ((puVar2 == puVar7 + iVar3) || (param_2 < *puVar2)) {
      return (int *)0x0;
    }
    return *(int **)(*(int *)(local_20[0] + 0xc) + ((int)puVar2 - (int)puVar7 >> 2) * 4);
  }
  local_14 = (undefined4 *)0x0;
  local_10 = (undefined4 *)0x0;
  local_c = 0;
  local_8 = "Scripting/GetEnumSimpleName";
  iVar3 = FUN_00e6ba40((int)param_1);
  uVar11 = iVar3 - 1;
  if (0 < (int)uVar11) {
    local_20[0] = uVar11;
    FUN_00d75320(&local_14,uVar11);
    local_30 = 0;
    param_1 = (int *)0xffffffff;
    piVar4 = (int *)FUN_00e70470(piVar8,&local_30);
    if (piVar4 != (int *)0x0) {
      do {
        iVar3 = 8;
        bVar13 = true;
        pcVar10 = "value__";
        pcVar12 = (char *)piVar4[3];
        do {
          if (iVar3 == 0) break;
          iVar3 = iVar3 + -1;
          bVar13 = *pcVar10 == *pcVar12;
          pcVar10 = pcVar10 + 1;
          pcVar12 = pcVar12 + 1;
        } while (bVar13);
        if (!bVar13) {
          if ((*(uint *)(*piVar4 + 4) & 0x600) != 0) {
            iVar3 = 9;
            bVar13 = true;
            pcVar10 = (char *)piVar4[3];
            pcVar12 = "_Deleted";
            do {
              if (iVar3 == 0) break;
              iVar3 = iVar3 + -1;
              bVar13 = *pcVar10 == *pcVar12;
              pcVar10 = pcVar10 + 1;
              pcVar12 = pcVar12 + 1;
            } while (bVar13);
            if (bVar13) goto LAB_00d7b02e;
          }
          if (piVar4[4] == 0) {
            uVar11 = (int)param_1 + 1;
            uVar5 = FUN_00e6faa0((int)piVar4);
            uVar11 = FUN_00e9cd80(*piVar8,uVar5,uVar11);
            uVar5 = FUN_00e9b500((int *)(*piVar8 + 0xe8),uVar11 - 1,0);
            piVar4[6] = uVar5;
            param_1 = (int *)FUN_00e9b500((int *)(*piVar8 + 0xe8),uVar11 - 1,3);
            puVar6 = FUN_00e9b3f0(*piVar8,(uint)param_1);
            piVar4[4] = (int)puVar6;
          }
          local_34 = (uint *)piVar4[4];
          FUN_00e9b5b0((byte *)local_34,&local_34);
          uVar11 = *local_34;
          local_28 = uVar11;
          puVar7 = FUN_00d791c0(&local_14,&local_28);
          *puVar7 = (uint)piVar4;
          if (uVar11 == param_2) {
            local_38 = piVar4;
          }
        }
LAB_00d7b02e:
        piVar4 = (int *)FUN_00e70470(piVar8,&local_30);
      } while (piVar4 != (int *)0x0);
      this_00 = local_24;
      uVar11 = local_20[0];
    }
    puVar1 = local_10;
    allocation = local_14;
    if (local_14 != local_10) {
      param_2 = param_2 & 0xffffff00;
      FUN_00d73af0(this_00,local_20,(uint *)&local_2c);
      uVar5 = local_20[0];
  /* D7B092: publishes original field-derived N; this store does not count emitted temporary pairs. */
      *(uint *)(local_20[0] + 4) = uVar11;
      piVar8 = FUN_004e6f20(DAT_011cc864,uVar11 * 4,0);
      *(int **)(uVar5 + 0xc) = piVar8;
      piVar8 = FUN_004e6f20(DAT_011cc864,uVar11 * 4,0);
      *(int **)(uVar5 + 8) = piVar8;
      iVar3 = 0;
      puVar9 = allocation;
      do {
        *(undefined4 *)(iVar3 + *(int *)(uVar5 + 8)) = *puVar9;
        *(undefined4 *)(iVar3 + *(int *)(uVar5 + 0xc)) = puVar9[1];
        puVar9 = puVar9 + 2;
        iVar3 = iVar3 + 4;
      } while (puVar9 != puVar1);
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
