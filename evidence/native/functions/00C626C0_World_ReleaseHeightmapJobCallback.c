/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 heightmap lifecycle. cdecl callback(job,context,event) returns true inAL for all
   events; work only event4. Context acquire006e3010 may return a dependency job; failure attaches
   dependency and does not dereference caller context. On acquire success context+0 is world
   manager. If manager and manager+54 exist, clears optimizer via manager+58->+68->+68, deletes
   heightmap owner+8 through00c28630, and writes owner+8!=0 to context+4. Pops/releases acquired
   world context and temporary dependency reference. Output is remaining-pointer test, not bytes
   released. */

bool __cdecl World_ReleaseHeightmapJobCallback(void *job,void *context,uint event)

{
  int iVar1;
  void *this;
  void *this_00;
  bool bVar2;
  
  this_00 = DAT_011d2530;
  if (event == 4) {
    event = 0;
    bVar2 = WorldContext_TryAcquireForJob(DAT_011d2530,job,(void **)&event);
    if (bVar2) {
      iVar1 = *(int *)context;
      if ((iVar1 != 0) && (this = *(void **)(iVar1 + 0x54), this != (void *)0x0)) {
        TerrainOptimizerOwner_ReleaseVertices(*(void **)(*(int *)(iVar1 + 0x58) + 0x68));
        TerrainData_ReleaseHeightMap(this);
        *(bool *)((int)context + 4) = *(int *)((int)this + 8) != 0;
      }
      WorldContext_ReleaseFrontJob(this_00);
    }
    else {
      Job_AddDependency(job,(void *)event);
    }
    if (event != 0) {
      Job_ReleaseReference((void *)event);
    }
  }
  return true;
}

