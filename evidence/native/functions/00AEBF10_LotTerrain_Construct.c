/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX terrain. Initialize cliffIndex+18
   toFFFFFFFF(-1), empty paint/index/alpha/pair state; default MaxPaintsPerLot+E8FFFFFFFF. Hash
   policy constants are load1 atF998F8 and growth2 at103FD88. All fields here are constructor state,
   not inferred absent-resource defaults.
   
   Additional scoped paint-admission fact: constructor sets raw maximum paint count atE8 toFFFFFFFF,
   cliff index18 toFFFFFFFF, and starts empty vectors/maps. Subsequent AE9BF0 Config override is an
   input producer distinct from per-layer capacity. No native16 or32 layer limit is established. */

undefined1 * __fastcall LotTerrain_Construct(undefined1 *param_1)

{
  *(undefined4 *)(param_1 + 0x14) = 0x3e800000;
  *param_1 = 0;
  *(undefined4 *)(param_1 + 4) = 0;
  *(undefined4 *)(param_1 + 8) = 0;
  *(undefined4 *)(param_1 + 0xc) = 0;
  *(undefined4 *)(param_1 + 0x10) = 0;
  *(undefined4 *)(param_1 + 0x18) = 0xffffffff;
  *(undefined4 *)(param_1 + 0x30) = 0;
  *(undefined4 *)(param_1 + 0x34) = 0;
  *(undefined4 *)(param_1 + 0x38) = 0;
  *(char **)(param_1 + 0x3c) = "Lot/Terrain/PaintInfos";
  *(float *)(param_1 + 0x50) = 1.0;
  *(undefined4 *)(param_1 + 0x54) = 0x40000000;
  *(char **)(param_1 + 0x5c) = "Lot/Terrain/PaintToIndexMap";
  *(undefined4 *)(param_1 + 0x48) = 1;
  *(undefined4 **)(param_1 + 0x44) = &DAT_0114d900;
  *(undefined4 *)(param_1 + 0x4c) = 0;
  *(undefined4 *)(param_1 + 0x58) = 0;
  *(undefined4 *)(param_1 + 0x60) = 0;
  *(undefined4 *)(param_1 + 100) = 0;
  *(undefined4 *)(param_1 + 0x68) = 0;
  *(char **)(param_1 + 0x6c) = "Lot/Terrain/AlphaMap";
  FUN_00b63910(param_1 + 0x70,"Lot/Terrain/AlphaSumMap");
  *(undefined4 *)(param_1 + 0xb4) = DAT_011844a8;
  *(undefined4 *)(param_1 + 0xb8) = DAT_011844ac;
  *(undefined4 *)(param_1 + 0xbc) = DAT_011844b0;
  *(undefined4 *)(param_1 + 0xc0) = DAT_011844b4;
  param_1[0xc4] = 0;
  *(undefined4 *)(param_1 + 200) = 0;
  *(undefined4 *)(param_1 + 0xcc) = 0;
  *(undefined4 *)(param_1 + 0xd0) = 0;
  *(undefined4 *)(param_1 + 0xd4) = DAT_011844a8;
  *(undefined4 *)(param_1 + 0xd8) = DAT_011844ac;
  *(undefined4 *)(param_1 + 0xdc) = DAT_011844b0;
  *(undefined4 *)(param_1 + 0xe0) = DAT_011844b4;
  *(undefined4 *)(param_1 + 0xe4) = 0;
  *(undefined4 *)(param_1 + 0xe8) = 0xffffffff;
  *(undefined4 *)(param_1 + 0xf0) = 0;
  *(undefined4 *)(param_1 + 0xf4) = 0;
  *(undefined4 *)(param_1 + 0xf8) = 0;
  *(undefined4 *)(param_1 + 0xfc) = 0;
  *(undefined4 *)(param_1 + 0x100) = 0;
  *(undefined4 *)(param_1 + 0x104) = 0;
  *(undefined4 *)(param_1 + 0x108) = 0;
  *(char **)(param_1 + 0x10c) = "Lot/Terrain/TempWaterHtChangeArray";
  *(float *)(param_1 + 0x120) = 1.0;
  *(undefined4 *)(param_1 + 0x124) = 0x40000000;
  *(char **)(param_1 + 300) = "Lot/Terrain/TempWaterChangeArrayIndexMap";
  *(undefined4 *)(param_1 + 0x118) = 1;
  *(undefined4 **)(param_1 + 0x114) = &DAT_0114d900;
  *(undefined4 *)(param_1 + 0x11c) = 0;
  *(undefined4 *)(param_1 + 0x128) = 0;
  *(undefined4 *)(param_1 + 0x130) = 0;
  *(undefined4 *)(param_1 + 0x134) = 0;
  *(undefined4 *)(param_1 + 0x138) = 0;
  *(char **)(param_1 + 0x13c) = "Lot/Terrain/PendingWaterHtChangeMsgVerts";
  *(undefined4 *)(param_1 + 0x154) = 0;
  *(undefined4 *)(param_1 + 0x158) = 0;
  *(undefined4 *)(param_1 + 0x15c) = 0;
  *(char **)(param_1 + 0x160) = "Lot/Terrain/LotShorelinePoints";
  return param_1;
}

