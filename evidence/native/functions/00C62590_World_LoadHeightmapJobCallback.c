/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: PC 1.67 heightmap lifecycle. cdecl callback returns trueAL; event4 acquires serialized
   world context or attaches dependency. Missing heightmap calls
   TerrainData_LoadHeightMap(manager+54,database+80,manager+43==0,true). Successful load or existing
   map with missing optimizer data rebuilds blend data, auxiliary terrain data and optimizer
   vertices/budgets. Writes heightmap pointer presence into context+4, then releases
   world-context/dependency references. Blend-map loader result gates auxiliary setup, not heightmap
   pointer presence. */

bool __cdecl World_LoadHeightmapJobCallback(void *job,void *context,uint event)

{
  int iVar1;
  void *this;
  void *pvVar2;
  void *this_00;
  bool bVar3;
  undefined1 local_18 [24];
  
  this_00 = DAT_011d2530;
  if (event != 4) {
    return true;
  }
  event = 0;
  bVar3 = WorldContext_TryAcquireForJob(DAT_011d2530,job,(void **)&event);
  if (!bVar3) {
    Job_AddDependency(job,(void *)event);
    goto LAB_00c6269e;
  }
  iVar1 = *(int *)context;
  if ((iVar1 != 0) && (this = *(void **)(iVar1 + 0x54), this != (void *)0x0)) {
    if (*(int *)((int)this + 8) == 0) {
      bVar3 = TerrainData_LoadHeightMap
                        (this,*(void **)(iVar1 + 0x80),(uint)(*(char *)(iVar1 + 0x43) == '\0'),true)
      ;
      if (bVar3) {
LAB_00c62627:
        TerrainData_ReleaseBlendMap(this);
        bVar3 = TerrainData_LoadBlendMap
                          (this,*(void **)(iVar1 + 0x80),(uint)(*(char *)(iVar1 + 0x43) == '\0'));
        if (bVar3) {
          FUN_007d7920(local_18,*(undefined4 *)(iVar1 + 0x80),
                       (uint)(*(char *)(iVar1 + 0x43) == '\0'));
          FUN_00c28740(this,local_18);
          StreamReader_ReleaseAuxiliary(local_18);
        }
        pvVar2 = *(void **)(*(int *)(iVar1 + 0x58) + 0x68);
        TerrainOptimizerOwner_BuildVerticesFromHeightMap(pvVar2);
        TerrainOptimizerOwner_RefreshBudgets(pvVar2);
      }
    }
    else {
      pvVar2 = *(void **)(*(int *)(iVar1 + 0x58) + 0x68);
      if ((pvVar2 != (void *)0x0) && (bVar3 = TerrainOptimizerOwner_HasVertices(pvVar2), !bVar3))
      goto LAB_00c62627;
    }
    *(bool *)((int)context + 4) = *(int *)((int)this + 8) != 0;
  }
  WorldContext_ReleaseFrontJob(this_00);
LAB_00c6269e:
  if (event != 0) {
    Job_ReleaseReference((void *)event);
  }
  return true;
}

