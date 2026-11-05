/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. Reads TerrainData via owner+8 and HeightMap
   viaTerrainData+8. Passes HeightMap+38 ushort payload, width*2 row stride, width-1 side argument,
   and TerrainData+24 height scale to00c88330 on owner+68 optimizer. Producer for separately
   allocated optimizer copy freed by00c88250. */

void __thiscall TerrainOptimizerOwner_BuildVerticesFromHeightMap(void *this)

{
  void *this_00;
  int iVar1;
  void *heightSamples;
  
  this_00 = *(void **)(*(int *)((int)this + 8) + 8);
  heightSamples = HeightMap_GetSamplePayload(this_00);
  iVar1 = *(int *)((int)this_00 + 0x14);
  TerrainOptimizer_BuildVertices
            (*(void **)((int)this + 0x68),heightSamples,iVar1 * 2,iVar1 - 1,
             *(float *)(*(int *)((int)this + 8) + 0x24));
  return;
}

