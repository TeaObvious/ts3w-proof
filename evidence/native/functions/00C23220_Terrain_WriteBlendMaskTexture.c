/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX terrain texture producer; target,x,y,layerSelectors,count; RET0x14;
   ALBoolean. Signed count>4 fails; <=2 uses native format0x28/2byte stride,3or4 format0x22/4byte
   stride. Conditional recreate, map mip0, zero underfilled channels, invoke existing component
   writer with each selector low byte, mapped destination/component offset, row pitch and2/4byte
   pixel stride, XOR0x8080/0x80808080 and unmap. Mapping/allocation failures remain original; no
   RGBA parity claim. Role name is descriptive, not a recovered original symbol. */

uint __thiscall
Terrain_WriteBlendMaskTexture
          (void *this,void *param_1,int param_2,int param_3,int param_4,int param_5)

{
  ushort *puVar1;
  uint *puVar2;
  int iVar3;
  uint uVar4;
  int *piVar5;
  PC167_SurfaceMapping *pPVar6;
  void *this_00;
  uint uVar7;
  undefined4 extraout_EAX;
  uint uVar8;
  int iVar9;
  int iVar10;
  int local_38;
  int local_34;
  int local_30;
  int local_2c;
  PC167_SurfaceMapping local_28;
  
  piVar5 = (int *)FUN_00c28f80(*(void **)((int)this + 8),param_2,param_3);
  iVar10 = *piVar5;
  iVar3 = piVar5[1];
  uVar4 = piVar5[2];
  uVar8 = piVar5[3];
  if (4 < param_5) {
    return uVar8 & 0xffffff00;
  }
  iVar9 = 0x22;
  if (param_5 < 3) {
    iVar9 = 0x28;
  }
  if (((*(uint *)((int)param_1 + 0x14) != uVar4) || (*(uint *)((int)param_1 + 0x18) != uVar8)) ||
     (*(int *)((int)param_1 + 0x28) != iVar9)) {
    FUN_0061a1d0((int)param_1);
    pPVar6 = (PC167_SurfaceMapping *)Texture_Create2D(param_1,uVar4,uVar8,1,iVar9,2);
    if ((char)pPVar6 == '\0') goto LAB_00c232c2;
  }
  pPVar6 = Surface_MapTextureLevel(param_1,&local_28,0,0);
  if (local_28.bits != (void *)0x0) {
    this_00 = (void *)FUN_008c2c70(*(int *)((int)this + 8));
    local_30 = iVar10 + uVar4;
    local_2c = iVar3 + uVar8;
    local_38 = iVar10;
    local_34 = iVar3;
    if (iVar9 == 0x28) {
      if (param_5 < 2) {
        FUN_007d3100(local_28.bits,local_28.rowPitchBytes,0,uVar4 * 2,uVar8);
      }
      iVar10 = 0;
      if (0 < param_5) {
        do {
          FUN_00c20cd0(this_00,*(byte *)(param_4 + iVar10 * 4),&local_38,
                       (undefined1 *)(iVar10 + (int)local_28.bits),local_28.rowPitchBytes,2);
          iVar10 = iVar10 + 1;
        } while (iVar10 < param_5);
      }
      for (; uVar8 != 0; uVar8 = uVar8 - 1) {
        uVar7 = 0;
        if (uVar4 != 0) {
          do {
            puVar1 = (ushort *)((int)local_28.bits + uVar7 * 2);
            *puVar1 = *puVar1 ^ 0x8080;
            uVar7 = uVar7 + 1;
          } while (uVar7 < uVar4);
        }
        local_28.bits = (void *)((int)local_28.bits + local_28.rowPitchBytes);
      }
    }
    else if (iVar9 == 0x22) {
      if (param_5 < 4) {
        FUN_007d3100(local_28.bits,local_28.rowPitchBytes,0,uVar4 * 4,uVar8);
      }
      iVar10 = 0;
      if (0 < param_5) {
        do {
          FUN_00c20cd0(this_00,*(byte *)(param_4 + iVar10 * 4),&local_38,
                       (undefined1 *)(iVar10 + (int)local_28.bits),local_28.rowPitchBytes,4);
          iVar10 = iVar10 + 1;
        } while (iVar10 < param_5);
      }
      for (; uVar8 != 0; uVar8 = uVar8 - 1) {
        uVar7 = 0;
        if (uVar4 != 0) {
          do {
            puVar2 = (uint *)((int)local_28.bits + uVar7 * 4);
            *puVar2 = *puVar2 ^ 0x80808080;
            uVar7 = uVar7 + 1;
          } while (uVar7 < uVar4);
        }
        local_28.bits = (void *)((int)local_28.bits + local_28.rowPitchBytes);
      }
    }
    Surface_UnmapIfMapped(param_1,&local_28);
    return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
  }
LAB_00c232c2:
  return (uint)pPVar6 & 0xffffff00;
}

