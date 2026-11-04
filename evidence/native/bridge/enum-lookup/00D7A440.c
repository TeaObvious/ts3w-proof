/* Final Ghidra decompilation after semantic name/comment readback.
   Original identity is centralized in references/pc-167.md.
   ASM pair records the complete existing owned body; generated C is not a callable replacement.
   Function-local instruction notes explain the saved body/plate; generated statements are unchanged. */

/* Analyst PC1.67 UInt8 enum-field lookup. Value words are scalar stack storage; the preserved
   pointer-looking decompiler parameter is not dereferenced. ECX receiver +0B4C locates the shared
   class-record-pointer-keyed cache; stored entry +4 is count, +8 packed 8-bit values, +0C parallel
   field pointers. Warm path calls 00D73210 then rejects end and query<candidate with unsigned
   ordering; only the low 8 value bits are read. Cold path enumerates E70470 fields, skips exact
   value__ and conditionally _Deleted under [field.type+4]&600h, lazily fills field+10/+18 through
   E6FAA0/E9CD80/E9B500/E9B3F0, then E9B5B0 supplies bytes read at width 8. Slot helper 00D78F80
   returns the field-pointer location which is overwritten; each exact query match updates the cold
   result. Cache count is E6BA40(class)-1, not locally recomputed from copied pairs:
   duplicate/filter count invariants remain unresolved. Returns field pointer or zero; no flags
   composition, runtime behavior or alias/cache parity inferred. */

int * __thiscall EnumFieldCache_FindUInt8(void *this,int *param_1,undefined1 *param_2)

{
  /* Instruction contract: The preserved pointer-looking value parameter denotes scalar stack storage. It is not dereferenced as an input pointer. */
  /* Instruction contract: Observed value width is 8 bits; warm guard ordering is unsigned. Operand sizes and branch flags govern, not generated C load casts. */
  /* Instruction contract: Shared cache key supplied by the caller is the raw class-record pointer; no string/name key is passed. */
  /* Instruction contract: The cold match result is overwritten for every exact width-masked match. Iterator order and warm/cold alias parity remain open. */
  /* Instruction contract: Published cache count comes from E6BA40(class)-1, whereas the copy loop visits emitted pairs; equality of those counts is not established. */

  undefined1 *puVar1;
  byte *pbVar2;
  int iVar3;
  int *piVar4;
  uint uVar5;
  undefined1 *puVar6;
  int *piVar7;
  undefined1 *puVar8;
  byte *pbVar9;
  char *pcVar10;
  void *this_00;
  uint uVar11;
  char *pcVar12;
  bool bVar13;
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

  piVar7 = param_1;
  this_00 = (void *)((int)this + 0xb4c);
  local_38 = (int *)0x0;
  local_28 = param_1;
  local_24 = this_00;
  FUN_005325c0(this_00,local_20,(uint *)&local_28);
  if (local_20[0] != *(uint *)(*(int *)((int)this + 0xb50) + *(int *)((int)this + 0xb54) * 4)) {
    iVar3 = *(int *)(local_20[0] + 8);
    pbVar9 = (byte *)(*(int *)(local_20[0] + 4) + iVar3);
  /* 00D7A48E; guards 00D7A4A2/00D7A4A4: 8-bit operand comparison; JB unsigned rejection. */
    pbVar2 = (byte *)FUN_00d73210(iVar3,(int)pbVar9,(byte *)&param_2);
    if ((pbVar2 == pbVar9) || ((byte)param_2 < *pbVar2)) {
      return (int *)0x0;
    }
    return *(int **)(*(int *)(local_20[0] + 0xc) + ((int)pbVar2 - iVar3) * 4);
  }
  local_14 = (undefined1 *)0x0;
  local_10 = (undefined1 *)0x0;
  local_c = 0;
  local_8 = "Scripting/GetEnumSimpleName";
  iVar3 = FUN_00e6ba40((int)piVar7);
  uVar11 = iVar3 - 1;
  if (0 < (int)uVar11) {
    local_20[0] = uVar11;
    FUN_00d75320(&local_14,uVar11);
    local_2c = 0;
    local_34 = 0xffffffff;
    piVar4 = (int *)FUN_00e70470(piVar7,&local_2c);
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
            if (bVar13) goto LAB_00d7a5f2;
          }
          if (piVar4[4] == 0) {
            local_34 = local_34 + 1;
            uVar11 = FUN_00e6faa0((int)piVar4);
            uVar11 = FUN_00e9cd80(*piVar7,uVar11,local_34);
            uVar5 = FUN_00e9b500((int *)(*piVar7 + 0xe8),uVar11 - 1,0);
            piVar4[6] = uVar5;
            local_34 = FUN_00e9b500((int *)(*piVar7 + 0xe8),uVar11 - 1,3);
            puVar6 = FUN_00e9b3f0(*piVar7,local_34);
            piVar4[4] = (int)puVar6;
          }
          local_30 = (byte *)piVar4[4];
          FUN_00e9b5b0(local_30,&local_30);
          param_1 = (int *)CONCAT31(param_1._1_3_,*local_30);
          pbVar2 = UInt8FieldPairs_GetValueSlot(&local_14,(byte *)&param_1);
          *(int **)pbVar2 = piVar4;
          if ((char)param_1 == (byte)param_2) {
            local_38 = piVar4;
          }
        }
LAB_00d7a5f2:
        piVar4 = (int *)FUN_00e70470(piVar7,&local_2c);
      } while (piVar4 != (int *)0x0);
      this_00 = local_24;
      uVar11 = local_20[0];
    }
    puVar1 = local_10;
    puVar6 = local_14;
    if (local_14 != local_10) {
      param_2 = (undefined1 *)((uint)param_2 & 0xffffff00);
      FUN_00d73af0(this_00,local_20,(uint *)&local_28);
      uVar5 = local_20[0];
  /* D7A65F: publishes original field-derived N; this store does not count emitted temporary pairs. */
      *(uint *)(local_20[0] + 4) = uVar11;
      piVar7 = FUN_004e6f20(DAT_011cc864,uVar11 * 4,0);
      *(int **)(uVar5 + 0xc) = piVar7;
      piVar7 = FUN_004e6f20(DAT_011cc864,uVar11,0);
      *(int **)(uVar5 + 8) = piVar7;
      iVar3 = 0;
      puVar8 = puVar6;
      do {
        *(undefined1 *)(iVar3 + *(int *)(uVar5 + 8)) = *puVar8;
        *(undefined4 *)(*(int *)(uVar5 + 0xc) + iVar3 * 4) = *(undefined4 *)(puVar8 + 4);
        puVar8 = puVar8 + 8;
        iVar3 = iVar3 + 1;
      } while (puVar8 != puVar1);
      if (puVar6 == (undefined1 *)0x0) {
        return local_38;
      }
      param_2 = puVar6;
      Memory_FreeIfNonNull(puVar6);
      return local_38;
    }
    if (local_14 != (undefined1 *)0x0) {
      Memory_FreeIfNonNull(local_14);
    }
  }
  return (int *)0x0;
}
