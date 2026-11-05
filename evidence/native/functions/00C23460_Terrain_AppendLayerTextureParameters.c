/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX terrain parameter owner;
   material,x,y,firstMask,layerIDs,optionalMasks,count; RET0x1C. Per unsigned layer fetch selected
   key/fallback0 then append kind4/count5. Mask groups use wrapping(count+3)>>2 and supplied direct
   textures or generated regional keys. Does not decompress diffuse pixels or create a CPU RGBA
   array. Role name is descriptive, not a recovered original symbol. */

void __thiscall
Terrain_AppendLayerTextureParameters
          (void *this,void *param_1,int param_2,int param_3,int param_4,int param_5,int param_6,
          uint param_7)

{
  int iVar1;
  int iVar2;
  int *piVar3;
  undefined4 *puVar4;
  uint uVar5;
  uint uVar6;
  undefined8 local_10;
  undefined4 local_8;
  undefined4 local_4;
  
  piVar3 = (int *)FUN_00c28f80(*(void **)((int)this + 8),param_2,param_3);
  iVar1 = *piVar3;
  iVar2 = piVar3[1];
  uVar5 = 0;
  if (param_7 != 0) {
    do {
      TerrainKey_SelectLayerFallback
                ((undefined4 *)&local_10,*(void **)((int)this + 8),*(uint *)(param_5 + uVar5 * 4));
      MaterialParams_AppendTextureKey
                (param_1,(&DAT_010773ec)[uVar5],(undefined4)local_10,local_10._4_4_,local_8,local_4,
                 0);
      uVar5 = uVar5 + 1;
    } while (uVar5 < param_7);
  }
  uVar5 = param_7 + 3 >> 2;
  uVar6 = 0;
  if (uVar5 != 0) {
    do {
      if (param_6 == 0) {
        puVar4 = (undefined4 *)TerrainKey_MakeBlendMask(&local_10,iVar1,iVar2,uVar6 + param_4);
        MaterialParams_AppendTextureKey
                  (param_1,(&DAT_010773e4)[uVar6],*puVar4,puVar4[1],puVar4[2],puVar4[3],0);
      }
      else {
        FUN_00799ab0(param_1,(&DAT_010773e4)[uVar6]);
      }
      uVar6 = uVar6 + 1;
    } while (uVar6 < uVar5);
  }
  return;
}

