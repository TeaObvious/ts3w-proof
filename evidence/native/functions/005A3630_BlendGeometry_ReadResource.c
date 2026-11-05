/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. Physical ECX BGEO resource, one stream word, RET4, AL status.
   Magic4F454742 retains little-endian mode, reversed4247454F switches byte order. Unsigned
   version-100<=2FF admits100..3FF; exactly four LODs. Header owns region count, map/vector counts,
   LOD offset/stride and independent region/map/vector offsets. Version<300 uses DWORD maps;
   version100 float3 vectors are quantized, other versions use ushort3. At5A3A46..60 low-two flags
   ZERO skip accumulator update; flagged entries add raw-minus-flags then truncate to16-bit storage.
   Legacy100 divides accumulated byte offset by12 before shifting to packed pointer units.
   Accumulator spans LOD/region boundaries. Present counts/offsets are consumed, not required to
   equal the current writer layout. Native allocation/partial failure differs from managed checked
   bounds. */

char __thiscall BlendGeometry_ReadResource(void *this,int *param_1)

{
  bool bVar1;
  uint uVar2;
  void *pvVar3;
  int *piVar4;
  ushort *puVar5;
  ushort uVar6;
  int iVar7;
  uint uVar8;
  uint *puVar9;
  uint uVar10;
  ushort *puVar11;
  short sVar12;
  uint local_7c;
  uint local_78;
  uint local_74;
  uint local_70;
  uint local_6c;
  uint local_68;
  uint local_64;
  uint local_60;
  uint local_5c;
  int local_58;
  uint local_54;
  uint local_50;
  void *local_4c;
  uint local_48;
  uint local_44;
  uint local_40;
  ushort *local_3c;
  uint local_38;
  uint local_34;
  uint local_30;
  uint local_2c;
  uint local_28;
  float local_24;
  float local_20;
  float local_1c;
  undefined1 local_18 [8];
  void *local_10;
  uint local_8;
  char local_4;
  
  local_4c = this;
  if (*(int *)((int)this + 0x30) != 0) {
    FUN_004e5e70(DAT_011cc864,*(int *)((int)this + 0x30));
    *(undefined4 *)((int)this + 0x30) = 0;
  }
  if (*(void **)((int)this + 0x28) != (void *)0x0) {
    Memory_FreeIfNonNull(*(void **)((int)this + 0x28));
    *(undefined4 *)((int)this + 0x28) = 0;
  }
  *(undefined4 *)((int)this + 0x2c) = 0;
  StreamReader_Construct(local_18,param_1,1);
  local_48 = 0;
  bVar1 = Stream_ReadUInt32(local_10,&local_48,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  if (local_4 == '\0') goto LAB_005a36ae;
  if (local_48 == 0x4247454f) {
    local_8 = 0;
  }
  else if (local_48 != 0x4f454742) goto LAB_005a36ae;
  local_70 = 0;
  bVar1 = Stream_ReadUInt32(local_10,&local_70,local_8);
  StreamReader_AccumulateStatus(local_18,bVar1);
  if ((local_4 == '\0') || (0x2ff < local_70 - 0x100)) goto LAB_005a36ae;
  local_74 = 0;
  local_68 = 0;
  local_7c = 0;
  local_78 = 0;
  local_40 = 0;
  local_64 = 0;
  local_44 = 0;
  local_54 = 0;
  local_38 = 0;
  StreamReader_ReadUInt32Into(local_18,&local_74);
  StreamReader_ReadUInt32Into(local_18,&local_68);
  StreamReader_ReadUInt32Into(local_18,&local_7c);
  StreamReader_ReadUInt32Into(local_18,&local_78);
  StreamReader_ReadUInt32Into(local_18,&local_40);
  StreamReader_ReadUInt32Into(local_18,&local_64);
  StreamReader_ReadUInt32Into(local_18,&local_44);
  StreamReader_ReadUInt32Into(local_18,&local_54);
  StreamReader_ReadUInt32Into(local_18,&local_38);
  if ((local_4 == '\0') || (local_68 != 4)) goto LAB_005a36ae;
  if (local_70 == 0x100) {
    local_50 = 0xc;
LAB_005a37f8:
    uVar2 = 4;
  }
  else {
    local_50 = 6;
    uVar2 = 2;
    if (local_70 < 0x300) goto LAB_005a37f8;
  }
  bVar1 = StreamReader_CheckArrayBytes(local_18,local_7c,uVar2);
  if (((bVar1) && (bVar1 = StreamReader_CheckArrayBytes(local_18,local_78,local_50), bVar1)) &&
     (bVar1 = StreamReader_CheckArrayBytes(local_18,local_68 * local_74,local_64), uVar2 = local_74,
     bVar1)) {
    pvVar3 = (void *)FUN_004e4500(-(uint)((int)((ulonglong)local_74 * 0x58 >> 0x20) != 0) |
                                  (uint)((ulonglong)local_74 * 0x58),
                                  "CAS/BlendGeometryResource/BlendRegionData",0);
    if (pvVar3 == (void *)0x0) {
      pvVar3 = (void *)0x0;
    }
    else {
      _vector_constructor_iterator_(pvVar3,0x58,uVar2,(_func_void_ptr_void_ptr *)&LAB_005a35f0);
    }
    *(void **)((int)this + 0x28) = pvVar3;
    if (pvVar3 != (void *)0x0) {
      *(uint *)((int)this + 0x2c) = local_74;
      local_28 = (local_7c + local_78 * 3) * 2;
      piVar4 = FUN_004e6f20(DAT_011cc864,local_28,0);
      *(int **)((int)this + 0x30) = piVar4;
      if (piVar4 != (int *)0x0) {
        uVar2 = (int)piVar4 + local_7c * 2;
        local_60 = local_7c;
        local_5c = local_78;
        local_3c = (ushort *)0x0;
        if (local_74 != 0) {
          local_58 = 0;
          uVar8 = local_44;
          do {
            puVar9 = (uint *)(*(int *)((int)this + 0x28) + local_58);
            StreamContext_SeekWithSignedAbsoluteGuard(local_18,uVar8,0);
            StreamReader_ReadUInt32Into(local_18,puVar9);
            StreamReader_ReadUInt32Into(local_18,puVar9 + 1);
            local_6c = uVar8 + local_40;
            iVar7 = 0;
            puVar9 = puVar9 + 4;
            do {
              StreamContext_SeekWithSignedAbsoluteGuard(local_18,local_6c,0);
              local_6c = local_6c + local_64;
              StreamReader_ReadUInt32Into(local_18,&local_2c);
              StreamReader_ReadUInt32Into(local_18,&local_34);
              StreamReader_ReadUInt32Into(local_18,&local_30);
              if ((local_60 < local_34) || (local_5c < local_30)) goto LAB_005a38cd;
              local_5c = local_5c - local_30;
              local_60 = local_60 - local_34;
              *puVar9 = local_30;
              puVar9[1] = (uint)piVar4;
              puVar9[2] = uVar2;
              puVar9[-2] = local_2c;
              puVar9[-1] = local_34;
              iVar7 = iVar7 + 1;
              puVar9 = puVar9 + 5;
              piVar4 = (int *)((int)piVar4 + local_34 * 2);
              uVar2 = uVar2 + local_30 * 6;
            } while (iVar7 < 4);
            local_58 = local_58 + 0x58;
            local_3c = (ushort *)((int)local_3c + 1);
            uVar8 = local_6c;
            this = local_4c;
          } while (local_3c < local_74);
        }
        puVar11 = *(ushort **)((int)this + 0x30);
        local_3c = puVar11;
        if (local_70 < 0x300) {
          puVar9 = (uint *)FUN_004e6f20(DAT_011cc864,local_7c * 4,0);
          StreamContext_SeekWithSignedAbsoluteGuard(local_18,local_54,0);
          BlendGeometry_ReadUInt32Bank(local_18,puVar9,local_7c);
          uVar2 = 0;
          if (local_7c != 0) {
            uVar8 = 0;
            do {
              uVar10 = puVar9[uVar2] & 3;
              if (uVar10 != 0) {
                uVar8 = uVar8 + (puVar9[uVar2] - uVar10);
                if (local_70 == 0x100) {
                  puVar9[uVar2] = uVar10 + (uVar8 / local_50) * 4;
                }
                else {
                  puVar9[uVar2] = uVar10 + uVar8;
                }
              }
              local_3c[uVar2] = (ushort)puVar9[uVar2];
              uVar2 = uVar2 + 1;
              puVar11 = local_3c;
            } while (uVar2 < local_7c);
          }
          FUN_004e5e70(DAT_011cc864,(int)puVar9);
        }
        else {
          StreamContext_SeekWithSignedAbsoluteGuard(local_18,local_54,0);
          BlendGeometry_ReadUInt16Bank(local_18,puVar11,local_7c);
          sVar12 = 0;
          for (puVar5 = puVar11; puVar5 != puVar11 + local_7c; puVar5 = puVar5 + 1) {
            uVar6 = *puVar5 & 3;
            if (uVar6 != 0) {
              sVar12 = sVar12 + (*puVar5 - uVar6);
              *puVar5 = uVar6 + sVar12;
            }
          }
        }
        StreamContext_SeekWithSignedAbsoluteGuard(local_18,local_38,0);
        puVar11 = puVar11 + local_7c;
        memset(puVar11,0,local_78 * 6);
        if (local_70 == 0x100) {
          uVar2 = 0;
          if (local_78 != 0) {
            do {
              FUN_0057b600(local_18,(uint *)&local_24,3);
              BlendGeometry_QuantizeVector(puVar11,local_24,local_20,local_1c);
              uVar2 = uVar2 + 1;
              puVar11 = puVar11 + 3;
            } while (uVar2 < local_78);
          }
        }
        else {
          BlendGeometry_ReadUInt16Bank(local_18,puVar11,local_78 * 3);
        }
        FUN_00731be0(local_4c,local_74 * 0x58 + 0x38 + local_28);
        StreamReader_ReleaseAuxiliary(local_18);
        return local_4;
      }
      FUN_005a3080((int)this);
    }
LAB_005a38cd:
    StreamReader_ReleaseAuxiliary(local_18);
    return '\0';
  }
LAB_005a36ae:
  StreamReader_ReleaseAuxiliary(local_18);
  return '\0';
}

