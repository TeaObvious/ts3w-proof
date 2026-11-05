/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX terrain owner; region,force,layerIDs,count,extraUpdate; RET0x14. Group
   unsigned requested IDs in chunks max4, create/replace referenced mask textures if forced or
   missing, retain new before releasing old, then write group mask. Caller ignores local mask-writer
   Boolean and may invoke separate extra update. No diffuse RGBA cache here. Role name is
   descriptive, not a recovered original symbol. */

void __thiscall
Terrain_UpdateBlendMaskTextures
          (void *this,int param_1,char param_2,int param_3,uint param_4,char param_5)

{
  int *piVar1;
  uint *puVar2;
  undefined4 *puVar3;
  int *piVar4;
  byte *pbVar5;
  uint uVar6;
  int *piVar7;
  int local_28;
  uint local_20;
  uint local_1c;
  int local_18;
  int local_14;
  uint local_10 [4];
  
  local_14 = *(int *)(param_1 + 0xc);
  local_18 = *(int *)(param_1 + 0x10);
  uVar6 = 0;
  if (param_4 != 0) {
    local_20 = 4;
    local_28 = 0;
    do {
      local_1c = param_4 - uVar6;
      puVar2 = &local_20;
      if (param_4 - uVar6 < 5) {
        puVar2 = &local_1c;
      }
      local_1c = *puVar2;
      if ((param_2 != '\0') || (*(int *)(*(int *)(param_1 + 0xc0) + local_28) == 0)) {
        puVar3 = (undefined4 *)FUN_004e4500(0x34,"Terrain/BlendLayerTexture",0);
        if (puVar3 == (undefined4 *)0x0) {
          piVar4 = (int *)0x0;
        }
        else {
          piVar4 = Texture_Construct(puVar3);
        }
        piVar7 = (int *)(*(int *)(param_1 + 0xc0) + local_28);
        piVar1 = (int *)*piVar7;
        if (piVar4 != piVar1) {
          if (piVar4 != (int *)0x0) {
            (**(code **)(*piVar4 + 4))();
          }
          *piVar7 = (int)piVar4;
          if (piVar1 != (int *)0x0) {
            (**(code **)(*piVar1 + 8))();
          }
        }
        puVar2 = local_10;
        for (pbVar5 = (byte *)(uVar6 + param_3); pbVar5 != (byte *)(local_1c + uVar6 + param_3);
            pbVar5 = pbVar5 + 1) {
          *puVar2 = (uint)*pbVar5;
          puVar2 = puVar2 + 1;
        }
        Terrain_WriteBlendMaskTexture
                  (*(void **)((int)this + 0x68),*(void **)(local_28 + *(int *)(param_1 + 0xc0)),
                   local_14,local_18,(int)local_10,local_1c);
      }
      local_28 = local_28 + 4;
      uVar6 = uVar6 + 4;
    } while (uVar6 < param_4);
  }
  if (param_5 != '\0') {
    FUN_00c7e6b0(this,param_1,param_2);
  }
  return;
}

