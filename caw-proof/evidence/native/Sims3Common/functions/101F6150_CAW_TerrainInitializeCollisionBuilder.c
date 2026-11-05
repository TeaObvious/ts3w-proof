/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Copies terrain data height quantum into axis scale, sets
   X/Z scales1/64 and inverses64; Y inverse is1/quantum. Collision builder placement is(0,unsigned
   heightRange*.5,0,0). Initializes per-sector builder ownership from terrain chunks and original
   authored extents. This placement is distinct from sector world placement. Analyst-assigned helper
   names are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

undefined4 __thiscall
CAW_TerrainInitializeCollisionBuilder(void *this,undefined4 *param_1,undefined4 param_2)

{
  int iVar1;
  float fVar2;
  undefined4 uVar3;
  float fVar4;
  undefined4 *puVar5;
  undefined4 uVar6;
  int *piVar7;
  int *piVar8;
  uint uVar9;
  uint uStack_30;
  int *piStack_28;
  uint uStack_24;
  undefined4 local_20;
  float fStack_1c;
  undefined4 uStack_18;
  undefined4 uStack_14;
  
  *(undefined4 *)((int)this + 100) = param_2;
  puVar5 = *(undefined4 **)((int)this + 8);
  if (param_1 != puVar5) {
    if (param_1 != (undefined4 *)0x0) {
      LOCK();
      param_1[1] = param_1[1] + 1;
      UNLOCK();
    }
    *(undefined4 **)((int)this + 8) = param_1;
    if (puVar5 != (undefined4 *)0x0) {
      piVar7 = puVar5 + 1;
      LOCK();
      iVar1 = *piVar7;
      *piVar7 = *piVar7 + -1;
      UNLOCK();
      if (iVar1 == 1) {
        LOCK();
        puVar5[1] = 1;
        UNLOCK();
        (**(code **)*puVar5)(1);
      }
    }
  }
  fVar4 = DAT_10acb0d4;
  uVar3 = _DAT_10abfb38;
  uVar6 = param_1[9];
  *(undefined4 *)((int)this + 0x10) = _DAT_10abfb38;
  *(undefined4 *)((int)this + 0x14) = uVar6;
  *(undefined4 *)((int)this + 0x18) = uVar3;
  *(undefined4 *)((int)this + 0x1c) = uVar3;
  uVar6 = _DAT_10b13e50;
  fVar2 = (float)param_1[9];
  *(undefined4 *)((int)this + 0x20) = _DAT_10b13e50;
  *(float *)((int)this + 0x24) = fVar4 / fVar2;
  *(undefined4 *)((int)this + 0x28) = uVar6;
  *(undefined4 *)((int)this + 0x2c) = uVar6;
  uVar6 = DAT_10aae18c;
  fStack_1c = (float)(int)param_1[0xd];
  uStack_14 = DAT_10aae18c;
  uStack_18 = DAT_10aae18c;
  if ((int)param_1[0xd] < 0) {
    fStack_1c = fStack_1c + _DAT_10aae190;
  }
  fStack_1c = fStack_1c * _DAT_10b310ec;
  local_20 = DAT_10aae18c;
  *(undefined4 *)((int)this + 0x30) = DAT_10aae18c;
  *(float *)((int)this + 0x34) = fStack_1c;
  *(undefined4 *)((int)this + 0x38) = uVar6;
  *(undefined4 *)((int)this + 0x3c) = uVar6;
  puVar5 = (undefined4 *)FUN_10918eb0(0x38,"Terrain/QuadMesh",0);
  if (puVar5 == (undefined4 *)0x0) {
    uVar6 = 0;
  }
  else {
    uVar6 = FUN_1025d840(puVar5);
  }
  *(undefined4 *)((int)this + 0x68) = uVar6;
  uStack_24 = FUN_101fa240(*(int *)((int)this + 8));
  uStack_30 = 0;
  uVar9 = 0;
  if (uStack_24 != 0) {
    do {
      piVar7 = (int *)FUN_101fa270(*(void **)((int)this + 8),uStack_30);
      piVar8 = (int *)FUN_10918ed0(0x6c,4,0,"Terrain/TerrainBuilder/ChunkInfo",0);
      if (piVar8 == (int *)0x0) {
        piVar8 = (int *)0x0;
      }
      else {
        *piVar8 = (int)&PTR_FUN_10ab7be8;
        LOCK();
        piVar8[1] = 0;
        UNLOCK();
        *piVar8 = (int)&PTR_FUN_10ac6a94;
        piVar8[6] = 0;
        piVar8[7] = 0;
        piVar8[8] = 0;
        piVar8[9] = (int)"Terrain/Builder";
        piVar8[10] = 0;
        piVar8[0xb] = 0;
        piVar8[0xc] = 0;
        piVar8[0xd] = (int)"Terrain/Builder";
        piVar8[0xe] = 0;
        piVar8[0xf] = 0;
        piVar8[0x10] = 0;
        piVar8[0x11] = (int)"Terrain/Builder";
        piVar8[0x12] = 0;
        piVar8[0x13] = 0;
        piVar8[0x14] = 0;
        piVar8[0x15] = (int)"Terrain/Builder";
        piVar8[0x16] = 0;
        piVar8[0x17] = 0;
        piVar8[0x18] = 0;
        piVar8[0x19] = (int)"Terrain/Builder";
        *(undefined1 *)(piVar8 + 0x1a) = 0;
      }
      piStack_28 = piVar8;
      if (piVar8 != (int *)0x0) {
        (**(code **)*piVar8)();
      }
      piVar8[2] = *piVar7;
      piVar8[3] = piVar7[1];
      piVar8[4] = piVar7[2];
      piVar8[5] = piVar7[3];
      *(char *)(piVar8 + 0x1a) = (char)piVar7[0x13];
      piVar7 = *(int **)((int)this + 0x70);
      if (piVar7 < *(int **)((int)this + 0x74)) {
        *(int **)((int)this + 0x70) = piVar7 + 1;
        if (piVar7 != (int *)0x0) {
          *piVar7 = (int)piVar8;
          (**(code **)*piVar8)();
        }
      }
      else {
        FUN_1032ad40((void *)((int)this + 0x6c),piVar7,(int *)&piStack_28);
      }
      if (piStack_28 != (int *)0x0) {
        (**(code **)(*piStack_28 + 4))();
      }
      uVar9 = uStack_30 + 1;
      uStack_30 = uVar9;
    } while (uVar9 < uStack_24);
  }
  return CONCAT31((int3)(uVar9 >> 8),1);
}

