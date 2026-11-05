/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 floor geometry preparation comparison.
   Stores lot/renderer/floor-manager and selected level/dimensions, configures partition/query level
   and flags, with a level-1 path when the input flag is false. Establishes scale4 / power-of-two
   spatial bounds, vertex-declaration cache selection and floor grid/lot paint/paint-map resources.
   Physical ECX receiver plus four stack slots, RET0x10; stored undefined4 result remains unchanged.
   Child partition, shader, allocation, resource lifetime and complete native geometry/room domains
   are not inferred from this setup body. It does not itself establish current per-triangle
   UV/material/normal parity.
   Static original-code observations; preserve function ID, ABI/types, stored body, original bytes
   and flow. */

undefined4 __thiscall
FloorGeometry_InitializeLotLevelResources
          (void *this,int param_1,int param_2,char param_3,undefined4 param_4)

{
  int *piVar1;
  float fVar2;
  uint uVar3;
  void *pvVar4;
  int iVar5;
  undefined4 uVar6;
  uint uVar7;
  int iVar8;
  float afStack_60 [3];
  float fStack_54;
  undefined4 uStack_50;
  undefined4 uStack_4c;
  undefined4 uStack_48;
  char *pcStack_44;
  char *pcStack_40;
  undefined1 *puStack_3c;
  char acStack_34 [32];
  undefined1 auStack_14 [16];
  
  *(undefined1 *)((int)this + 0x210) = 1;
  *(undefined4 *)((int)this + 0x1b0) = *(undefined4 *)(param_1 + 0x10);
  *(undefined4 *)((int)this + 0x1b4) = *(undefined4 *)(param_1 + 0x14);
  *(int *)((int)this + 0x1b8) = param_2;
  if (param_3 == '\0') {
    *(uint *)((int)this + 0x44) = *(uint *)((int)this + 0x44) & 0xffbfffff | 0x8000000;
  }
  *(int *)((int)this + 0x214) = param_1;
  *(undefined4 *)((int)this + 0x218) = param_4;
  *(undefined4 *)((int)this + 0x21c) = *(undefined4 *)(param_1 + 0x230);
  *(undefined4 *)((int)this + 0x220) = *(undefined4 *)(param_1 + 0x60);
  uVar7 = *(uint *)(param_1 + 100);
  uVar3 = *(uint *)((int)this + 0x220) * 4 | (*(uint *)((int)this + 0x220) & 0x3fffffff) >> 0xe;
  uVar3 = uVar3 | uVar3 >> 8;
  uVar3 = uVar3 | uVar3 >> 4;
  *(uint *)((int)this + 0x224) = uVar7;
  uVar3 = uVar3 | uVar3 >> 2;
  uVar7 = uVar7 * 4 | (uVar7 & 0x3fffffff) >> 0xe;
  uVar7 = uVar7 | uVar7 >> 8;
  uVar7 = uVar7 | uVar7 >> 4;
  uVar7 = uVar7 | uVar7 >> 2;
  iVar8 = (uVar3 >> 1 | uVar3) + 1;
  fVar2 = (float)iVar8;
  if (iVar8 < 0) {
    fVar2 = fVar2 + 4.2949673e+09;
  }
  iVar8 = (uVar7 >> 1 | uVar7) + 1;
  *(float *)((int)this + 0x228) = 4.0 / fVar2;
  fVar2 = (float)iVar8;
  if (iVar8 < 0) {
    fVar2 = fVar2 + 4.2949673e+09;
  }
  *(float *)((int)this + 0x22c) = 4.0 / fVar2;
  pvVar4 = (void *)FUN_0061abf0();
  piVar1 = *(int **)((int)this + 0x304);
  if (piVar1 != (int *)0x0) {
    *(void **)((int)this + 0x304) = (void *)0x0;
    (**(code **)(*piVar1 + 8))();
  }
  VertexFormatCache_GetOrCreate
            (pvVar4,(NativeVertexElement8 *)&DAT_010638c4,2,(void **)((int)this + 0x304));
  piVar1 = *(int **)((int)this + 0x308);
  if (piVar1 != (int *)0x0) {
    *(void **)((int)this + 0x308) = (void *)0x0;
    (**(code **)(*piVar1 + 8))();
  }
  VertexFormatCache_GetOrCreate
            (pvVar4,(NativeVertexElement8 *)&DAT_010638b4,2,(void **)((int)this + 0x308));
  piVar1 = *(int **)((int)this + 0x30c);
  if (piVar1 != (int *)0x0) {
    *(void **)((int)this + 0x30c) = (void *)0x0;
    (**(code **)(*piVar1 + 8))();
  }
  VertexFormatCache_GetOrCreate
            (pvVar4,(NativeVertexElement8 *)&DAT_0106389c,3,(void **)((int)this + 0x30c));
  piVar1 = *(int **)((int)this + 0x310);
  if (piVar1 != (int *)0x0) {
    *(void **)((int)this + 0x310) = (void *)0x0;
    (**(code **)(*piVar1 + 8))();
  }
  VertexFormatCache_GetOrCreate
            (pvVar4,(NativeVertexElement8 *)&DAT_01063884,3,(void **)((int)this + 0x310));
  afStack_60[0] = (float)*(int *)((int)this + 0x220);
  uStack_50 = 0;
  uStack_4c = 0;
  uStack_48 = 0;
  pcStack_44 = (char *)0x0;
  if (*(int *)((int)this + 0x220) < 0) {
    afStack_60[0] = afStack_60[0] + 4.2949673e+09;
  }
  afStack_60[2] = (float)*(int *)((int)this + 0x224);
  if (*(int *)((int)this + 0x224) < 0) {
    afStack_60[2] = afStack_60[2] + 4.2949673e+09;
  }
  afStack_60[1] = 0.05;
  fStack_54 = afStack_60[0];
  FUN_006fccb0(this,&uStack_50,afStack_60);
  iVar8 = *(int *)this;
  *(undefined4 *)((int)this + 0x40) = 0x200;
  *(undefined4 *)((int)this + 0x19c) = 0;
  *(undefined4 *)((int)this + 0x1a0) = 0;
  iVar5 = FUN_00adf630(*(int *)((int)this + 0x214));
  (**(code **)(iVar8 + 0x20))(iVar5);
  *(int *)((int)this + 0x230) = param_2;
  *(char *)((int)this + 0x234) = param_3;
  pvVar4 = *(void **)(*(int *)((int)this + 0x214) + 0x23c);
  if (pvVar4 != (void *)0x0) {
    if (param_3 == '\0') {
      param_2 = param_2 + -1;
    }
    param_2 = FUN_00adad60(pvVar4,param_2);
    *(int *)((int)this + 0x238) = param_2;
  }
  pvVar4 = DAT_011d853c;
  if (DAT_011ec2c4 == '\0') {
    DAT_011ec2c4 = 1;
    if (DAT_011d853c != (void *)0x0) {
      DAT_011ec2c8 = ShaderLibrary_FindByName(DAT_011d853c,"FloorGrid",0,'\0');
      param_2 = ShaderLibrary_FindByName(pvVar4,"LotPaint",0,'\0');
      DAT_011ec2cc = param_2;
    }
    pvVar4 = DAT_011d8530;
    uVar7 = 0;
    if (DAT_011d8530 != (void *)0x0) {
      DAT_011ec2c0 = ShaderParameterRegistry_RegisterNamedRow(DAT_011d8530,"FloorGridTexture",1,5);
      DAT_011ec2bc = ShaderParameterRegistry_RegisterNamedRow(pvVar4,"LocToPaintWeightUV",2,1);
      DAT_011ec2b8 = ShaderParameterRegistry_RegisterNamedRow(pvVar4,"WeightMap",1,5);
      pcStack_44 = acStack_34;
      puStack_3c = auStack_14;
      acStack_34[0] = '\0';
      pcStack_40 = pcStack_44;
      do {
        FUN_00930fa0(&pcStack_44,"PaintMap_%d");
        uVar6 = ShaderParameterRegistry_RegisterNamedRow(pvVar4,pcStack_44,1,5);
        (&DAT_011ec2a8)[uVar7] = uVar6;
        uVar7 = uVar7 + 1;
      } while (uVar7 < 4);
      *(undefined4 *)((int)this + 0x300) = 0;
      return CONCAT31((int3)((uint)uVar6 >> 8),1);
    }
    *(undefined4 *)((int)this + 0x300) = 0;
    return CONCAT31((int3)((uint)param_2 >> 8),1);
  }
  *(undefined4 *)((int)this + 0x300) = 0;
  return CONCAT31((int3)((uint)param_2 >> 8),1);
}

