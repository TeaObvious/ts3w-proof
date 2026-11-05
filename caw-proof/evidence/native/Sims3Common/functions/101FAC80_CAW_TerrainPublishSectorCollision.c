/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: With a supplied fine KD creates a KDTreeShape and places it
   at owner center plus caller placement. Without KD creates a live257x257 HeightFieldShape over the
   owner start in the raw ushort raster, scales by tile size and terrain height quantum, and places
   it at owner start. This installer distinguishes actual shape selection from the ray consumer.
   Installs KD data owners and shape at the selected floor-coordinate sector. For KD mode adds
   sector centre at chunk+10/+14 to builder placement to obtain shape world X/Z; adds zero to Y and
   copies heightRange*.5. The alternative height-field path remains a separate original branch.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

void __thiscall
CAW_TerrainPublishSectorCollision
          (void *this,int param_1,int param_2,int *param_3,int *param_4,float *param_5)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  undefined4 *puVar8;
  int iVar9;
  int iVar10;
  void *this_00;
  float fStack_20;
  undefined4 uStack_1c;
  float fStack_18;
  float fStack_14;
  
  if ((((uint)(param_1 >> 8) < *(uint *)((int)this + 0xcc)) &&
      ((uint)(param_2 >> 8) < *(uint *)((int)this + 0xd0))) &&
     (piVar1 = *(int **)(*(int *)((int)this + 0xbc) +
                        (*(uint *)((int)this + 0xcc) * (param_2 >> 8) + (param_1 >> 8)) * 4),
     piVar1 != (int *)0x0)) {
    if ((undefined4 *)piVar1[0xe] != (undefined4 *)0x0) {
      FUN_10479a60((undefined4 *)piVar1[0xe]);
      piVar1[0xe] = 0;
    }
    piVar2 = (int *)piVar1[0xc];
    if (param_3 != piVar2) {
      if (param_3 != (int *)0x0) {
        (**(code **)*param_3)();
      }
      piVar1[0xc] = (int)param_3;
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
    }
    piVar2 = (int *)piVar1[0xd];
    if (param_4 != piVar2) {
      if (param_4 != (int *)0x0) {
        (**(code **)*param_4)();
      }
      piVar1[0xd] = (int)param_4;
      if (piVar2 != (int *)0x0) {
        (**(code **)(*piVar2 + 4))();
      }
    }
    if (param_3 != (int *)0x0) {
      fStack_18 = (float)piVar1[5];
      fStack_20 = (float)piVar1[4];
      uStack_1c = 0;
      fVar5 = param_5[1];
      fVar6 = param_5[2];
      fVar7 = param_5[3];
      piVar1[8] = (int)(fStack_20 + *param_5);
      piVar1[9] = (int)(fVar5 + 0.0);
      piVar1[10] = (int)(fStack_18 + fVar6);
      piVar1[0xb] = (int)(fStack_20 + fVar7);
      fStack_14 = fStack_20;
      puVar8 = (undefined4 *)FUN_10918ed0(0x70,0x10,0,"Terrain/TerrainData/KDTreeShape",0);
      if (puVar8 == (undefined4 *)0x0) {
        puVar8 = (undefined4 *)0x0;
      }
      else {
        FUN_10479ba0(puVar8);
        *puVar8 = &PTR_FUN_10ac6fec;
        puVar8[0x18] = 0;
      }
      FUN_10479a50((int)puVar8);
      FUN_104754d0(puVar8,(int *)piVar1[0xc]);
      puVar8[0xd] = (puVar8[0xd] & 0xffff0000) + 1;
      iVar3 = piVar1[9];
      iVar4 = piVar1[10];
      iVar9 = piVar1[0xb];
      puVar8[4] = piVar1[8];
      puVar8[5] = iVar3;
      puVar8[6] = iVar4;
      puVar8[7] = iVar9;
      piVar1[0xe] = (int)puVar8;
      return;
    }
    iVar9 = FUN_100688c0(*(int *)((int)this + 8));
    iVar10 = FUN_100688b0(*(int *)((int)this + 8));
    iVar3 = piVar1[1];
    iVar4 = *piVar1;
    fStack_18 = (float)iVar3;
    fStack_20 = (float)iVar4;
    uStack_1c = 0;
    piVar1[8] = (int)fStack_20;
    piVar1[9] = 0;
    piVar1[10] = (int)fStack_18;
    piVar1[0xb] = (int)fStack_20;
    fStack_14 = fStack_20;
    this_00 = (void *)FUN_10918ed0(0xa0,0x10,0,"Terrain/TerrainData/HeightFieldShape",0);
    if (this_00 == (void *)0x0) {
      puVar8 = (undefined4 *)0x0;
    }
    else {
      puVar8 = FUN_101f9eb0(this_00,iVar3 * iVar9 + iVar10 + iVar4 * 2,iVar9,0x101,0x101);
    }
    fStack_20 = *(float *)((int)this + 0x28);
    uStack_1c = *(undefined4 *)((int)this + 0x24);
    fStack_18 = fStack_20;
    fStack_14 = fStack_20;
    FUN_1047b230(puVar8,&fStack_20);
    iVar3 = piVar1[9];
    iVar4 = piVar1[10];
    iVar9 = piVar1[0xb];
    puVar8[4] = piVar1[8];
    puVar8[5] = iVar3;
    puVar8[6] = iVar4;
    puVar8[7] = iVar9;
    FUN_10479af0(puVar8,0x101,0x101,0x7fffffff);
    FUN_10479a50((int)puVar8);
    piVar1[0xe] = (int)puVar8;
  }
  return;
}

