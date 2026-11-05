/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC1.67 static Road material/pass production: ECX owner, four stack words, RET0x10; inferred
   stored prototype/return is not success. Descriptor/key/provider resolution prepares
   normalMap/terrainLightMap: independently nonzero-handle and byte-zero branch or four-key-word
   plus0 payload through799A30. posScale uses binary32(1/64), owner+0x18 times binary32(2^-16);
   roads/layerOffset and hash0x209B1C8E vector bindings. First selectors0,1,2 map4,2,3 throughB75750
   and dispatchB84350/B849E0/B84C80 over0x250-byte sets with full32-bit index bound. Second
   selectors0,1,2 map1,0,5 throughB75910 and dispatchB844E0/B84B20/B84DC0; count truncates16bits
   with unsigned word bound. First physical pushed index is32bits, not established truncated by
   child inferred ushort. B86CC3 compares selector byte itself with5, not mapped1/0/5; do not claim
   third-pass .01 lift. Material init/clone/setup/draw/cleanup order visible; lower
   provider/pass-builder/render/lifetime semantics unexpanded. Descriptive analyst name, not
   recovered symbol. Complete441Listing/1502ownedbytes in two exact ranges plus7unowned alignment
   bytes. Preserve ID/ABI/types/body/flow/bytes; no native average-color fallback or current proxy
   parity established. */

void __thiscall
RoadNetwork_DrawMaterialPassSets
          (void *this,void *param_1,undefined4 param_2,int param_3,char param_4)

{
  uint *puVar1;
  void *this_00;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  char cVar6;
  undefined4 *puVar7;
  int *piVar8;
  ushort uVar9;
  int iVar10;
  undefined4 uVar11;
  byte local_a3 [3];
  int local_a0;
  int local_9c;
  uint local_98;
  int local_94;
  int local_90;
  undefined4 local_8c;
  uint local_88;
  uint local_84;
  float local_80 [4];
  int local_70;
  undefined4 local_6c;
  undefined4 local_68;
  undefined4 local_64;
  undefined4 local_60;
  undefined4 local_5c;
  undefined4 local_58;
  undefined4 local_54;
  int local_50 [8];
  undefined4 local_30;
  float local_2c;
  undefined4 local_28;
  undefined4 local_24;
  int local_20 [8];
  
  local_30 = 0x3c800000;
  local_2c = *(float *)((int)this + 0x18) * 1.5258789e-05;
  local_28 = 0;
  local_24 = 0;
  FUN_00799680(local_50);
  puVar1 = (uint *)FUN_00c28910(*(void **)((int)this + 0xc),param_3);
  this_00 = (void *)FUN_00c60a50(*(int *)((int)this + 8));
  iVar2 = FUN_00c800b0(this_00,*puVar1,puVar1[1]);
  FUN_00c30c80((longlong *)&local_60,*puVar1,puVar1[1],'\x01');
  iVar3 = FUN_00c80110(this_00,*puVar1,puVar1[1],(float *)0x0);
  FUN_00c31210(&local_70,*puVar1,puVar1[1]);
  iVar10 = 4;
  puVar7 = &local_30;
  uVar4 = HashLowercasedCStringFNV1("posScale");
  FUN_007999d0(local_50,uVar4,puVar7,iVar10);
  local_80[0] = 1.0;
  local_80[1] = 0.0;
  local_80[2] = 0.0;
  local_80[3] = 0.0;
  if ((iVar2 == 0) || (param_4 != '\0')) {
    uVar11 = 0;
    uVar4 = HashLowercasedCStringFNV1("normalMap");
    MaterialParams_AppendTextureKey(local_50,uVar4,local_60,local_5c,local_58,local_54,uVar11);
  }
  else {
    uVar4 = HashLowercasedCStringFNV1("normalMap");
    FUN_00799ab0(local_50,uVar4);
  }
  FUN_007999d0(local_50,0x209b1c8e,local_80,4);
  if ((iVar3 == 0) || (param_4 != '\0')) {
    uVar11 = 0;
    uVar4 = HashLowercasedCStringFNV1("terrainLightMap");
    MaterialParams_AppendTextureKey(local_50,uVar4,local_70,local_6c,local_68,local_64,uVar11);
  }
  else {
    uVar4 = HashLowercasedCStringFNV1("terrainLightMap");
    FUN_00799ab0(local_50,uVar4);
  }
  local_84 = HashLowercasedCStringFNV1("roads");
  local_a3[0] = 0;
  FUN_006d6370(param_1,1,local_a3);
  FUN_006d7330((int)param_1);
  FUN_006d4360(param_1,0,7,0);
  FUN_006d4360(param_1,5,5,0);
  FUN_006d4360(param_1,2,3,0);
  FUN_006d4360(param_1,2,7,1);
  FUN_006d4360(param_1,2,1,2);
  FUN_006d4360(param_1,2,7,3);
  FUN_006d5fe0((int)param_1);
  local_90 = 0;
  local_94 = 3;
  do {
    uVar4 = 0;
    if (local_90 == 0) {
      local_98 = 4;
LAB_00b86aa0:
      local_a0 = 0;
    }
    else {
      if (local_90 == 1) {
        local_98 = 2;
        goto LAB_00b86aa0;
      }
      if (local_90 == 2) {
        local_98 = 3;
        goto LAB_00b86aa0;
      }
    }
    iVar3 = *(int *)((int)this + 0x118) - *(int *)((int)this + 0x114);
    iVar2 = iVar3 >> 0x1f;
    cVar6 = (char)param_2;
    if (iVar3 / 0x250 + iVar2 != iVar2) {
      local_9c = 0;
      do {
        FUN_00b7b9e0(local_20,local_50);
        FUN_00b75750((void *)(*(int *)((int)this + 0x114) + local_9c),local_20,param_2,local_a0,
                     local_98,local_90);
        iVar2 = 1;
        puVar1 = &local_88;
        local_88 = 0;
        uVar5 = HashLowercasedCStringFNV1("layerOffset");
        FUN_007999d0(local_20,uVar5,puVar1,iVar2);
        FUN_006d44c0(param_1,local_84,local_20);
        local_a3[0] = 1;
        local_a3[1] = 1;
        local_8c = 3;
        FUN_006d73b0(param_1,&local_8c,(char *)(local_a3 + 1),local_a3,0,0);
        uVar9 = (ushort)uVar4;
        if (local_90 == 0) {
          FUN_00b84350(this,param_1,cVar6,param_3,uVar9);
        }
        else if (local_90 == 1) {
          FUN_00b849e0(this,param_1,cVar6,param_3,uVar9);
        }
        else if (local_90 == 2) {
          FUN_00b84c80(this,param_1,cVar6,param_3,uVar9);
        }
        FUN_006d1a70((int)param_1);
        FUN_007996b0(local_20);
        local_9c = local_9c + 0x250;
        uVar4 = uVar4 + 1;
      } while (uVar4 < (uint)((*(int *)((int)this + 0x118) - *(int *)((int)this + 0x114)) / 0x250));
    }
    local_90 = local_90 + 1;
    local_94 = local_94 + -1;
    if (local_94 == 0) {
      local_a3[0] = 0;
      local_94 = 0;
      do {
        local_98 = (uint)local_a3[0];
        if (local_98 == 0) {
          local_9c = 1;
        }
        else if (local_98 == 1) {
          local_9c = 0;
        }
        else if (local_98 == 2) {
          local_9c = 5;
        }
        uVar4 = (*(int *)((int)this + 0x118) - *(int *)((int)this + 0x114)) / 0x250;
        local_88 = uVar4 & 0xffff;
        uVar9 = 0;
        if ((short)uVar4 != 0) {
          local_a0 = 0;
          do {
            FUN_00b7b9e0(local_20,local_50);
            FUN_00b75910((void *)(*(int *)((int)this + 0x114) + local_a0),local_20,param_2,local_9c,
                         local_98);
            if (local_a3[0] == 5) {
              local_94 = 0x3c23d70a;
            }
            else {
              local_94 = 0;
            }
            iVar2 = 1;
            piVar8 = &local_94;
            uVar4 = HashLowercasedCStringFNV1("layerOffset");
            FUN_007999d0(local_20,uVar4,piVar8,iVar2);
            FUN_006d44c0(param_1,local_84,local_20);
            local_a3[1] = 1;
            local_a3[2] = 1;
            local_8c = 3;
            FUN_006d73b0(param_1,&local_8c,(char *)(local_a3 + 2),local_a3 + 1,0,0);
            if (local_98 == 0) {
              FUN_00b844e0(this,param_1,cVar6,param_3,uVar9);
            }
            else if (local_98 == 1) {
              FUN_00b84b20(this,param_1,cVar6,param_3,uVar9);
            }
            else if (local_98 == 2) {
              FUN_00b84dc0(this,param_1,cVar6,param_3,uVar9);
            }
            FUN_006d1a70((int)param_1);
            FUN_007996b0(local_20);
            local_a0 = local_a0 + 0x250;
            uVar9 = uVar9 + 1;
          } while (uVar9 < (ushort)local_88);
        }
        local_a3[0] = local_a3[0] + 1;
      } while (local_a3[0] < 3);
      FUN_006d7320((int)param_1);
      FUN_007996b0(local_50);
      return;
    }
  } while( true );
}

