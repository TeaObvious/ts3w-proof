/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX context, RET 8: reader and low-byte regenerate flag;
   AL Boolean. Read UInt16 version, admit only 1..3. Invalid version returns false without clearing
   reader status. Only v3 reads the normalized width Boolean; v1/v2 retain configured width. Clear
   four maps, read UInt32 count and loop unsigned. Rows are 16-byte TGI key plus UInt32 or
   zero-extended UInt16 handle. No count-dependent width branch. Find/insert handle node then
   overwrite its 16-byte key unconditionally: duplicate handle is LAST ROW WINS. V2/v3 require
   UInt32 local-set count and UInt16 members; v1 has no trailer. Optional local-key regeneration
   records remaps, then rebuild key-to-handle map. Final true does not test accumulated read status.
   No up-front byte-product bound or exact EOF check appears here. Decompiled pointer/count aliases
   reflect stack-slot reuse.
   
   Analyst note (PC1.67 construction persistence contract): Version1..3 reader; version3 alone
   supplies handle-width byte. Duplicate handles overwrite; reverse map is rebuilt through native
   traversal. Versions2/3 local handles form a set. No count-dependent width heuristic or exact-EOF
   contract. Project save table accepts its narrow3-byte header and preserves source rows/tail, a
   bounded subset. */

bool __thiscall ReferenceStore_ReadPayload(void *this,void *reader,byte regenerateLocalKeys)

{
  int *piVar1;
  ushort uVar2;
  int iVar3;
  uint *puVar4;
  undefined4 *puVar5;
  void *this_00;
  bool bVar6;
  uint **ppuVar7;
  uint *puVar8;
  undefined4 *puVar9;
  ushort *puVar10;
  undefined3 in_stack_00000009;
  uint *local_54;
  uint *local_50;
  uint *local_4c;
  undefined4 *local_48;
  uint *local_44;
  int *local_40;
  uint local_3c;
  int *local_38;
  ushort *local_34 [3];
  int local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  uint local_18;
  uint local_14;
  uint local_10;
  uint local_c;
  undefined4 local_8;
  
  this_00 = reader;
  bVar6 = Stream_ReadUInt16(*(void **)((int)reader + 8),(ushort *)((int)this + 0x80),
                            *(uint *)((int)reader + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar6);
  uVar2 = *(ushort *)((int)this + 0x80);
  if ((uVar2 == 0) || (3 < uVar2)) {
    return false;
  }
                    /* JB from version<3 skips width-byte read. Versions1/2 preserve configured
                       context width; no width flag is present here in their serialized header. */
  if (2 < uVar2) {
    bVar6 = Stream_ReadBoolean(*(void **)((int)this_00 + 8),(void *)((int)this + 0x82));
    StreamReader_AccumulateStatus(this_00,bVar6);
  }
  FUN_009d67f0(*(int *)((int)this + 0x24),*(uint *)((int)this + 0x28));
  *(undefined4 *)((int)this + 0x2c) = 0;
  FUN_009d67f0(*(int *)((int)this + 4),*(uint *)((int)this + 8));
  *(undefined4 *)((int)this + 0xc) = 0;
  FUN_00ae0410(*(int *)((int)this + 0x44),*(uint *)((int)this + 0x48));
  *(undefined4 *)((int)this + 0x4c) = 0;
  FUN_009ac1f0(*(int *)((int)this + 100),*(uint *)((int)this + 0x68));
  *(undefined4 *)((int)this + 0x6c) = 0;
  reader = (void *)0x0;
  bVar6 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&reader,
                            *(uint *)((int)this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar6);
                    /* Unsigned count/JBE/JB loop. No signed negative-count-empty rule or
                       count-derived wide-handle branch. Defensive limits are separate
                       implementation policy. */
  local_4c = (uint *)0x0;
  if (reader != (void *)0x0) {
    do {
      local_28 = 0;
      local_24 = 0;
      local_20 = 0;
      local_1c = 0;
      local_54 = (uint *)0x0;
      bVar6 = Stream_ReadResourceKeyTGI
                        (*(void **)((int)this_00 + 8),&local_28,*(uint *)((int)this_00 + 0x10));
      StreamReader_AccumulateStatus(this_00,bVar6);
      ReferenceStore_ReadHandle(this,this_00,(uint *)&local_54);
      local_44 = (uint *)((uint)local_44 & 0xffffff00);
      HandleKeyMap_FindOrInsert
                ((void *)((int)this + 0x20),local_34,(uint *)&local_54,(uint)local_44);
                    /* After FindOrInsert returns existing/new handle node, copy16-byte resource key
                       unconditionally: repeated handle is LAST ROW WINS. */
      *(int *)(local_34[0] + 4) = local_28;
      *(undefined4 *)(local_34[0] + 6) = local_24;
      *(undefined4 *)(local_34[0] + 8) = local_20;
      *(undefined4 *)(local_34[0] + 10) = local_1c;
      local_4c = (uint *)((int)local_4c + 1);
    } while (local_4c < reader);
  }
  if (1 < *(ushort *)((int)this + 0x80)) {
    local_54 = (uint *)0x0;
    bVar6 = Stream_ReadUInt32(*(void **)((int)this_00 + 8),(uint *)&local_54,
                              *(uint *)((int)this_00 + 0x10));
    StreamReader_AccumulateStatus(this_00,bVar6);
    local_44 = (uint *)0x0;
    if (local_54 != (uint *)0x0) {
      do {
        local_4c = (uint *)0x0;
        bVar6 = Stream_ReadUInt16(*(void **)((int)this_00 + 8),(ushort *)&local_4c,
                                  *(uint *)((int)this_00 + 0x10));
        StreamReader_AccumulateStatus(this_00,bVar6);
        local_3c = local_3c & 0xffffff00;
        LocalHandleSet_InsertUnique
                  ((void *)((int)this + 0x40),&local_28,(ushort *)&local_4c,local_3c);
        local_44 = (uint *)((int)local_44 + 1);
      } while (local_44 < local_54);
    }
  }
  if (regenerateLocalKeys != 0) {
    local_40 = *(int **)((int)this + 0x44);
    puVar10 = (ushort *)*local_40;
    if (puVar10 == (ushort *)0x0) {
      local_40 = local_40 + 1;
      iVar3 = *local_40;
      while (iVar3 == 0) {
        local_40 = local_40 + 1;
        iVar3 = *local_40;
      }
      puVar10 = (ushort *)*local_40;
    }
    local_34[0] = *(ushort **)(*(int *)((int)this + 0x44) + *(int *)((int)this + 0x48) * 4);
    if (puVar10 != local_34[0]) {
      do {
        _regenerateLocalKeys =
             (undefined4 *)
             (*(int *)((int)this + 0x24) + ((uint)*puVar10 % *(uint *)((int)this + 0x28)) * 4);
        for (puVar4 = (uint *)*_regenerateLocalKeys; puVar4 != (uint *)0x0;
            puVar4 = (uint *)puVar4[6]) {
          if ((uint)*puVar10 == *puVar4) {
            local_4c = puVar4;
            local_48 = _regenerateLocalKeys;
            ppuVar7 = &local_4c;
            goto LAB_007d6f10;
          }
        }
        local_50 = (uint *)(*(int *)((int)this + 0x24) + *(uint *)((int)this + 0x28) * 4);
        local_54 = (uint *)*local_50;
        ppuVar7 = &local_54;
LAB_007d6f10:
        puVar4 = *ppuVar7;
        if (puVar4 != *(uint **)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4)) {
          puVar8 = puVar4 + 2;
          DownloadContent_GenerateSimRecordKey(&local_18,puVar8);
          local_3c = local_3c & 0xffffff00;
          FUN_007d6690((void *)((int)this + 0x60),&local_28,puVar8);
          *(uint *)(local_28 + 0x10) = local_18;
          *(uint *)(local_28 + 0x14) = local_14;
          *(uint *)(local_28 + 0x18) = local_10;
          *(uint *)(local_28 + 0x1c) = local_c;
          *puVar8 = local_18;
          puVar4[3] = local_14;
          puVar4[4] = local_10;
          puVar4[5] = local_c;
        }
        puVar10 = *(ushort **)(puVar10 + 2);
        while (puVar10 == (ushort *)0x0) {
          piVar1 = local_40 + 1;
          local_40 = local_40 + 1;
          puVar10 = (ushort *)*piVar1;
        }
      } while (puVar10 != local_34[0]);
    }
  }
  local_38 = *(int **)((int)this + 0x24);
  puVar9 = (undefined4 *)*local_38;
  if (puVar9 == (undefined4 *)0x0) {
    local_38 = local_38 + 1;
    iVar3 = *local_38;
    while (iVar3 == 0) {
      local_38 = local_38 + 1;
      iVar3 = *local_38;
    }
    puVar9 = (undefined4 *)*local_38;
  }
  puVar5 = *(undefined4 **)(*(int *)((int)this + 0x24) + *(int *)((int)this + 0x28) * 4);
  while (puVar9 != puVar5) {
    local_18 = puVar9[2];
    local_14 = puVar9[3];
    local_8 = *puVar9;
    local_10 = puVar9[4];
    local_c = puVar9[5];
    _regenerateLocalKeys = (undefined4 *)((uint)_regenerateLocalKeys & 0xffffff00);
    FUN_00700890(this,&local_28,&local_18);
    puVar9 = (undefined4 *)puVar9[6];
    while (puVar9 == (undefined4 *)0x0) {
      piVar1 = local_38 + 1;
      local_38 = local_38 + 1;
      puVar9 = (undefined4 *)*piVar1;
    }
  }
  return true;
}

