/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 static: ECX terrain parameter owner; material,x,y; RET0x0C. Lazily hash
   blendTexMapping/colorTexMapping/posScale names. Blend mapping uses reciprocals of unsigned region
   extents and exact half offsets; color mapping uses existing extent query. Publish actual owner
   scale fields; append terrain_detail DDS key only when parsing succeeds. Not current Vulkan
   cache/fallback arithmetic parity. Role name is descriptive, not a recovered original symbol. */

void __thiscall
Terrain_AppendMappingDetailParameters(void *this,void *param_1,int param_2,int param_3)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  float10 fVar4;
  uint uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  undefined4 uVar9;
  uint local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  float local_50;
  float local_4c;
  undefined4 local_48;
  undefined4 local_44;
  float local_40;
  float local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  if ((_DAT_011ed974 & 1) == 0) {
    _DAT_011ed974 = _DAT_011ed974 | 1;
    DAT_011ed970 = HashLowercasedCStringFNV1("blendTexMapping");
  }
  if ((_DAT_011ed974 & 2) == 0) {
    _DAT_011ed974 = _DAT_011ed974 | 2;
    DAT_011ed96c = HashLowercasedCStringFNV1("colorTexMapping");
  }
  if ((_DAT_011ed974 & 4) == 0) {
    _DAT_011ed974 = _DAT_011ed974 | 4;
    DAT_011ed968 = HashLowercasedCStringFNV1("posScale");
  }
  iVar2 = FUN_00c28f80(*(void **)((int)this + 8),param_2,param_3);
  local_50 = (float)*(int *)(iVar2 + 8);
  if (*(int *)(iVar2 + 8) < 0) {
    local_50 = local_50 + 4.2949673e+09;
  }
  local_50 = 1.0 / local_50;
  local_4c = (float)*(int *)(iVar2 + 0xc);
  if (*(int *)(iVar2 + 0xc) < 0) {
    local_4c = local_4c + 4.2949673e+09;
  }
  local_4c = 1.0 / local_4c;
  local_48 = 0x3f000000;
  local_44 = 0x3f000000;
  FUN_007999d0(param_1,DAT_011ed970,&local_50,4);
  fVar4 = FUN_00c286d0(*(int *)((int)this + 8));
  local_40 = 1.0 / (float)fVar4;
  local_38 = 0;
  local_34 = 0;
  local_3c = local_40;
  FUN_007999d0(param_1,DAT_011ed96c,&local_40,4);
  local_30 = *(undefined4 *)((int)this + 0x10);
  local_2c = *(undefined4 *)((int)this + 0x14);
  local_28 = 0;
  local_20 = *(undefined4 *)((int)this + 0x30);
  local_24 = *(undefined4 *)((int)this + 0x34);
  uStack_18 = *(undefined4 *)((int)this + 0x38);
  uStack_14 = *(undefined4 *)((int)this + 0x3c);
  uStack_1c = local_24;
  FUN_007999d0(param_1,DAT_011ed968,&local_30,4);
  local_60 = 0;
  local_5c = 0;
  local_58 = 0;
  local_54 = 0;
  bVar1 = ResourceKey_ParseWideName(&local_60,(ushort *)L"terrain_detail",0xb2d882,0,(void *)0x0,0);
  if (bVar1) {
    uVar9 = 0;
    uVar5 = local_60;
    uVar6 = local_5c;
    uVar7 = local_58;
    uVar8 = local_54;
    uVar3 = HashLowercasedCStringFNV1("terrain_detail");
    MaterialParams_AppendTextureKey(param_1,uVar3,uVar5,uVar6,uVar7,uVar8,uVar9);
  }
  return;
}

