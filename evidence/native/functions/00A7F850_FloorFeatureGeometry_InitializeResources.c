/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst contract (original PC1.67; instruction-checked selected branches): Initializes lot and
   level identity, existing drawn tiles and virtual template setup, then vertex/index owners.
   Original alpha textures are 64x64 and, if virtual9C permits, 256x256, one level. Low AL reports
   success; upper EAX can be incidental. Allocation/resource/API failure paths remain part of this
   native owner; this is not evidence that CPU alpha state alone creates GPU textures. */

uint __thiscall FloorFeatureGeometry_InitializeResources(void *this,int param_1,undefined4 param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  uint uVar4;
  int iVar5;
  undefined4 uVar6;
  
  *(int *)((int)this + 0x29c) = param_1;
  *(undefined4 *)((int)this + 0x2a0) = param_2;
  *(undefined4 *)((int)this + 0x1b0) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)((int)this + 0x1b4) = *(undefined4 *)(param_1 + 0x14);
  *(undefined4 *)((int)this + 0x1b8) = param_2;
  FloorFeatureGeometry_InitializeDrawnTiles(this,param_1,(char)param_2);
  (**(code **)(*(int *)this + 0xa0))(param_1,param_2);
  puVar2 = (undefined4 *)FUN_004e4500(0x20,"LotRenderer/FloorFeatureGeometry/VertexBuffer",0);
  if (puVar2 == (undefined4 *)0x0) {
    piVar3 = (int *)0x0;
  }
  else {
    piVar3 = FUN_0061aa60(puVar2);
  }
  *(int **)((int)this + 0x250) = piVar3;
  uVar4 = 0;
  if (piVar3 != (int *)0x0) {
    (**(code **)(*piVar3 + 4))();
    puVar2 = (undefined4 *)FUN_004e4500(0x24,"LotRenderer/FloorFeatureGeometry/IndexBuffer",0);
    if (puVar2 == (undefined4 *)0x0) {
      piVar3 = (int *)0x0;
    }
    else {
      piVar3 = FUN_006176a0(puVar2);
    }
    *(int **)((int)this + 0x254) = piVar3;
    uVar4 = 0;
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 4))();
      uVar4 = FUN_00a7c380((int)this);
      if ((char)uVar4 != '\0') {
        iVar1 = *(int *)this;
        iVar5 = FUN_00adf630(param_1);
        (**(code **)(iVar1 + 0x20))(iVar5);
        puVar2 = (undefined4 *)FUN_004e4500(0x34,"LotRenderer/FloorFeatureGeometry/AlphaTexture",0);
        if (puVar2 == (undefined4 *)0x0) {
          piVar3 = (int *)0x0;
        }
        else {
          piVar3 = Texture_Construct(puVar2);
        }
        FUN_007c8ed0((undefined4 *)((int)this + 0x290),piVar3);
        Texture_Create2D(*(void **)((int)this + 0x290),0x40,0x40,1,0x10,2);
        uVar6 = (**(code **)(*(int *)this + 0x9c))();
        if ((char)uVar6 != '\0') {
          puVar2 = (undefined4 *)
                   FUN_004e4500(0x34,"LotRenderer/FloorFeatureGeometry/AlphaTexturePartial",0);
          if (puVar2 == (undefined4 *)0x0) {
            piVar3 = (int *)0x0;
          }
          else {
            piVar3 = Texture_Construct(puVar2);
          }
          FUN_007c8ed0((undefined4 *)((int)this + 0x294),piVar3);
          uVar6 = Texture_Create2D(*(void **)((int)this + 0x294),0x100,0x100,1,0x10,2);
        }
        return CONCAT31((int3)((uint)uVar6 >> 8),1);
      }
    }
  }
  return uVar4 & 0xffffff00;
}

