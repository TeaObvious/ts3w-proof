/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Builds resource scope, allocates0x88-byte blend owner
   atTerrainData+0c. Reads selected blend resource or creates default data from+3c/+40 dimensions
   when absent. Returns boolAL. This separate allocation is not released by
   TerrainData_ReleaseHeightMap.
   
   Analyst PC1.67 sparse blend instruction contract. Original producer selects blend resource
   type3D8632D0 with instance1 andgroup0, allocates0x88owner atTerrainData+C. Missing stream invokes
   dimension initialization fromTerrainData+3C/+40, not texture-derived grass/blur heuristics.
   Present stream calls reviewed layer-chunk reader. Allocation failure containment/full
   teardown/resource readiness remain outside this leaf. Existing reviewed heightmap lifecycle
   comment retained. */

bool __thiscall TerrainData_LoadBlendMap(void *this,void *database,uint streamMode)

{
  bool bVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  undefined1 local_18 [8];
  void *local_10;
  
  FUN_007d7920(local_18,database,streamMode);
  puVar2 = (undefined4 *)FUN_004e4500(0x88,"Terrain/TerrainData/BlendMap",0);
  if (puVar2 == (undefined4 *)0x0) {
    uVar3 = 0;
  }
  else {
    uVar3 = FUN_00c21050(puVar2);
  }
  *(undefined4 *)((int)this + 0xc) = uVar3;
  local_28 = 1;
  local_24 = 0;
  local_20 = 0x3d8632d0;
  local_1c = 0;
  bVar1 = ResourceStreamContext_OpenRead(local_18,&local_28,0);
  if (!bVar1) {
    bVar1 = TerrainBlend_InitializeDimensions
                      (*(void **)((int)this + 0xc),*(uint *)((int)this + 0x3c),
                       *(uint *)((int)this + 0x40));
    StreamReader_ReleaseAuxiliary(local_18);
    return bVar1;
  }
  bVar1 = TerrainBlend_ReadLayerChunks(*(void **)((int)this + 0xc),local_10);
  if (!bVar1) {
    StreamReader_ReleaseAuxiliary(local_18);
    return false;
  }
  StreamReader_ReleaseAuxiliary(local_18);
  return true;
}

