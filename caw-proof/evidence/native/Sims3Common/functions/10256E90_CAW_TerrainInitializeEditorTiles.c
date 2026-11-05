/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Copies serialized terrain owner startX/startZ and
   sizeX/sizeZ into tile indices1/2 and5/6; tile center indices3/4 are start plus unsigned size
   shifted right one. Tile centers feed 0x10259B80 then 0x101F69C0, which subtracts center X/Z from
   optimizer float coordinates before collision packing. Copies owner raster bounds and initializes
   tile state/dirty flags. Copies each serialized terrain chunk startX/startZ and dimensions into
   tile metadata; sets centreX=startX+(sizeX>>1), centreZ=startZ+(sizeZ>>1). These integer centres
   are the arguments later passed by10259B80 to101F69C0. They establish the ordinary256-sector
   centre offset128 rather than a guessed vertex origin. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __fastcall CAW_TerrainInitializeEditorTiles(int param_1)

{
  uint uVar1;
  uint uVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint *puVar6;
  undefined4 *puVar7;
  int local_c;
  uint local_8;
  
  FUN_102562b0(*(int *)(param_1 + 0x17c),*(uint *)(param_1 + 0x180));
  *(undefined4 *)(param_1 + 0x184) = 0;
  uVar5 = FUN_101fa240(*(int *)(param_1 + 100));
  *(undefined4 *)(param_1 + 0xc0) = *(undefined4 *)(*(int *)(param_1 + 100) + 0xcc);
  *(undefined4 *)(param_1 + 0xc4) = *(undefined4 *)(*(int *)(param_1 + 100) + 0xd0);
  *(undefined4 *)(param_1 + 200) = 0x100;
  FUN_105066d0((void *)(param_1 + 0xb0),uVar5);
  puVar6 = FUN_1091b860(DAT_10cabc54,uVar5 * 0x140,0x10,0,1);
  *(uint **)(param_1 + 0xcc) = puVar6;
  if ((puVar6 != (uint *)0x0) && (local_8 = 0, uVar5 != 0)) {
    local_c = 0;
    do {
      puVar6 = (uint *)FUN_101fa270(*(void **)(param_1 + 100),local_8);
      puVar7 = (undefined4 *)(*(int *)(param_1 + 0xcc) + local_c);
      if (puVar7 == (undefined4 *)0x0) {
        puVar7 = (undefined4 *)0x0;
      }
      else {
        puVar7 = FUN_1025be00(puVar7);
      }
      *(undefined4 **)
       (*(int *)(param_1 + 0xb0) +
       ((puVar6[1] / *(uint *)(param_1 + 200)) * *(int *)(param_1 + 0xc0) +
       *puVar6 / *(uint *)(param_1 + 200)) * 4) = puVar7;
      puVar7[1] = *puVar6;
      puVar7[2] = puVar6[1];
      puVar7[5] = puVar6[2];
      puVar7[6] = puVar6[3];
      puVar7[3] = (puVar6[2] >> 1) + *puVar6;
      puVar7[4] = (puVar6[3] >> 1) + puVar6[1];
      uVar1 = *puVar6;
      uVar2 = puVar6[2];
      uVar3 = puVar6[1];
      puVar7[0x13] = puVar6[3] + puVar6[1];
      puVar7[0x10] = uVar1;
      puVar7[0x11] = uVar3;
      puVar7[0x12] = uVar2 + uVar1;
      *(bool *)(puVar7 + 0x14) = *(int *)(*(int *)(param_1 + 0x14) + 0x1b4) == 0;
      *(undefined1 *)((int)puVar7 + 0x51) = 1;
      *(undefined1 *)((int)puVar7 + 0x52) = 1;
      *(undefined1 *)((int)puVar7 + 0x53) = 1;
      iVar4 = *(int *)(*(int *)(param_1 + 0x14) + 0x1b4);
      *(undefined1 *)((int)puVar7 + 0x57) = 0;
      local_c = local_c + 0x140;
      *(bool *)(puVar7 + 0x15) = iVar4 == 0;
      local_8 = local_8 + 1;
      puVar7[0x17] = 0;
    } while (local_8 < uVar5);
  }
  return;
}

