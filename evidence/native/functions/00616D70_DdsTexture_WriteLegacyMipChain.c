/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. cdecl stream,mipCount,mipRecords. AL Boolean; high
   return-register bits are not part of contract. Constructs128-byte legacy header, sizes124/32,
   flags1007 plus mip flag when count>1. Validates supplied mip dimensions against max(1,base
   logical-shift mip). Source records stride20: bits pointer,width,height,rowPitch,format.
   Descriptor row pitch rounded to4 for output; only actual row bytes copied, zero-filled allocation
   supplies padding. Stream virtual+38 writes one owned buffer, then buffer freed. Reader/writer
   format coverage differs; do not assert universal roundtrip or general overflow safety. */

bool __cdecl DdsTexture_WriteLegacyMipChain(int *param_1,uint param_2,int param_3)

{
  bool bVar1;
  undefined *this;
  uint uVar2;
  int iVar3;
  uint *puVar4;
  uint uVar5;
  uint *puVar6;
  size_t _Size;
  uint uVar7;
  uint *puVar8;
  uint *puVar9;
  void *_Src;
  uint *local_98;
  uint local_94;
  uint local_90;
  uint local_8c;
  uint local_88;
  uint local_84 [4];
  undefined4 local_74;
  uint local_70;
  undefined4 local_6c;
  uint local_68;
  undefined4 local_38;
  uint local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  code *local_18;
  uint *local_4;
  
  memset(local_84,0,0x80);
  local_74 = *(undefined4 *)(param_3 + 4);
  local_84[3] = *(undefined4 *)(param_3 + 8);
  puVar8 = (uint *)(param_3 + 8);
  local_84[0] = 0x20534444;
  local_84[1] = 0x7c;
  local_84[2] = 0x1007;
  local_6c = 1;
  local_68 = param_2;
  local_18 = (code *)0x1000;
  local_38 = 0x20;
  if (1 < param_2) {
    local_84[2] = 0x21007;
    local_18 = FUN_00401000;
  }
  switch(*(uint *)(param_3 + 0x10)) {
  case 2:
    local_30 = 0x31545844;
    uVar7 = 4;
    break;
  default:
    return false;
  case 4:
    local_30 = 0x32545844;
    uVar7 = 4;
    break;
  case 6:
    local_30 = 0x33545844;
    uVar7 = 4;
    break;
  case 8:
    local_30 = 0x34545844;
    uVar7 = 4;
    break;
  case 9:
  case 10:
    local_30 = 0x35545844;
    uVar7 = 4;
    break;
  case 0xe:
    local_2c = 8;
    local_1c = 0xff;
    uVar7 = 2;
    break;
  case 0x10:
    local_2c = 8;
    local_28 = 0xff;
    uVar7 = 0x20000;
    break;
  case 0x12:
    local_2c = 0x10;
    local_28 = 0xf800;
    local_24 = 0x7e0;
    local_20 = 0x1f;
    uVar7 = 0x40;
    break;
  case 0x18:
    local_2c = 0x10;
    local_28 = 0x7c00;
    local_24 = 0x3e0;
    local_20 = 0x1f;
    uVar7 = 0x40;
    break;
  case 0x22:
    uVar7 = 0x80000;
    local_28 = 0xff;
    local_20 = 0xff0000;
    goto LAB_0061703b;
  case 0x24:
    local_2c = 0x10;
    local_28 = 0xff;
    local_1c = 0xff00;
    uVar7 = 0x20001;
    break;
  case 0x28:
    local_2c = 0x10;
    uVar7 = 0x80000;
    local_28 = 0xff;
    local_20 = 0;
    local_1c = 0;
    goto LAB_0061704d;
  case 0x3d:
  case 0x3e:
    local_28 = 0xff0000;
    local_20 = 0xff;
    uVar7 = 0x41;
LAB_0061703b:
    local_1c = 0xff000000;
LAB_00617046:
    local_2c = 0x20;
LAB_0061704d:
    local_24 = 0xff00;
    break;
  case 0x3f:
  case 0x40:
    local_28 = 0xff0000;
    local_20 = 0xff;
    uVar7 = 0x40;
    goto LAB_00617046;
  case 0x5e:
    local_30 = 0x70;
    uVar7 = 4;
    break;
  case 100:
    local_30 = 0x72;
    uVar7 = 4;
    break;
  case 0x66:
    local_30 = 0x24;
    uVar7 = 4;
    break;
  case 0x6a:
    local_30 = 0x71;
    uVar7 = 4;
    break;
  case 0x74:
    local_30 = 0x73;
    uVar7 = 4;
    break;
  case 0x7a:
    local_30 = 0x74;
    uVar7 = 4;
  }
  local_34 = uVar7;
  this = TextureFormat_FindDescriptor(*(uint *)(param_3 + 0x10));
  TextureFormat_TightRowBytes(this,*(int *)(param_3 + 4));
  uVar2 = TextureFormat_AlignedRowBytes(this,*(int *)(param_3 + 4),4);
  FUN_00617eb0(this,*(int *)(param_3 + 4));
  iVar3 = TextureFormat_BlockRowCount(this,*puVar8);
  if ((uVar7 & 4) == 0) {
    local_84[2] = local_84[2] | 8;
    local_70 = uVar2;
  }
  else {
    local_84[2] = local_84[2] | 0x80000;
    local_70 = iVar3 * uVar2;
  }
  uVar7 = 0;
  local_90 = 0x80;
  if (param_2 != 0) {
    local_88 = 1;
    local_8c = 1;
    local_98 = puVar8;
    do {
      local_94 = *(uint *)(param_3 + 4) >> ((byte)uVar7 & 0x1f);
      puVar6 = &local_94;
      if (local_94 < 2) {
        puVar6 = &local_88;
      }
      local_94 = *puVar8 >> ((byte)uVar7 & 0x1f);
      puVar4 = &local_94;
      if (local_94 < 2) {
        puVar4 = &local_8c;
      }
      uVar2 = *puVar4;
      if (local_98[-1] != *puVar6) {
        return false;
      }
      if (*local_98 != uVar2) {
        return false;
      }
      uVar5 = TextureFormat_AlignedRowBytes(this,*puVar6,4);
      iVar3 = TextureFormat_BlockRowCount(this,uVar2);
      local_90 = local_90 + iVar3 * uVar5;
      local_98 = local_98 + 5;
      uVar7 = uVar7 + 1;
    } while (uVar7 < param_2);
  }
  uVar7 = local_90;
  puVar6 = FUN_004e6f70(DAT_011cc864,local_90,0x10,0,0);
  if (puVar6 == (uint *)0x0) {
    return false;
  }
  local_4 = puVar6;
  memset(puVar6,0,uVar7);
  local_98 = puVar6 + 0x20;
  puVar4 = local_84;
  puVar9 = puVar6;
  for (iVar3 = 0x20; iVar3 != 0; iVar3 = iVar3 + -1) {
    *puVar9 = *puVar4;
    puVar4 = puVar4 + 1;
    puVar9 = puVar9 + 1;
  }
  if (param_2 != 0) {
    local_94 = param_2;
    do {
      uVar7 = puVar8[-1];
      _Size = TextureFormat_TightRowBytes(this,uVar7);
      local_8c = TextureFormat_AlignedRowBytes(this,uVar7,4);
      iVar3 = TextureFormat_BlockRowCount(this,*puVar8);
      local_88 = puVar8[1];
      _Src = (void *)puVar8[-2];
      puVar6 = local_4;
      for (; local_4 = puVar6, iVar3 != 0; iVar3 = iVar3 + -1) {
        memcpy(local_98,_Src,_Size);
        local_98 = (uint *)((int)local_98 + local_8c);
        _Src = (void *)((int)_Src + local_88);
        puVar6 = local_4;
      }
      puVar8 = puVar8 + 5;
      local_94 = local_94 - 1;
    } while (local_94 != 0);
    local_94 = 0;
  }
  bVar1 = (**(code **)(*param_1 + 0x38))(param_1,puVar6,local_90);
  FUN_004e5e70(DAT_011cc864,(int)puVar6);
  return bVar1;
}

