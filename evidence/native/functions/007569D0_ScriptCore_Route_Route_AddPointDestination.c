/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161918.
   ScriptCore.Route::Route_AddPointDestination [assembly=ScriptCore token=0x060010F7; handle:
   System.UInt32, nTag: System.UInt32, fWeight: System.Single, scoreFunctionWeights:
   System.Single[], destination: Sims3.SimIFace.Vector3, facingDirection: Sims3.SimIFace.Vector3;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst static routing contract: Managed inputs occupy cdecl stack:handle/tag/float
   weight/score-array/12-byte XYZ destination/12-byte XYZ facing. Returns boolean ONLY in AL (MOV
   AL,1 or XOR AL,AL); high EAX not a failure code. Resolves typed route, retains it via vtable+0x10
   and goal via+0, allocates point, copies vectors/tag/weight and up to7 score weights via host
   array extraction+0x78, appends, releases goal/route. No planning occurs here. */

bool __cdecl
ScriptCore.Route::Route_AddPointDestination
          (uint handle,uint tag,float weight,void *scoreWeights,RoutingManagedVector3 destination,
          RoutingManagedVector3 facing)

{
  float fVar1;
  float fVar2;
  float fVar3;
  int *host;
  int *this;
  void *pvVar4;
  float *pfVar5;
  int *api;
  uint uStack_28;
  void *pvStack_24;
  undefined4 auStack_20 [7];
  
  if (DAT_011d50c4 != (void *)0x0) {
    host = (int *)RouteRegistry_ResolveTypedHandle(DAT_011d50c4,handle);
    if (host != (int *)0x0) {
      (**(code **)(*host + 0x10))();
      this = RouteHost_GetOrCreateGoal(host);
      if (this != (int *)0x0) {
        (**(code **)*this)();
        pvVar4 = (void *)FUN_004e4500(0x50,"Routing/PointDestination",0);
        if (pvVar4 != (void *)0x0) {
          pvVar4 = PointDestination_Initialize(pvVar4);
          if (pvVar4 != (void *)0x0) {
            pfVar5 = RouteVector_ExpandXYZWithXLane(&destination,auStack_20);
            fVar1 = pfVar5[1];
            fVar2 = pfVar5[2];
            fVar3 = pfVar5[3];
            *(float *)((int)pvVar4 + 0x30) = *pfVar5;
            *(float *)((int)pvVar4 + 0x34) = fVar1;
            *(float *)((int)pvVar4 + 0x38) = fVar2;
            *(float *)((int)pvVar4 + 0x3c) = fVar3;
            pfVar5 = RouteVector_ExpandXYZWithXLane(&facing,auStack_20);
            fVar1 = pfVar5[1];
            fVar2 = pfVar5[2];
            fVar3 = pfVar5[3];
            *(float *)((int)pvVar4 + 0x40) = *pfVar5;
            *(float *)((int)pvVar4 + 0x44) = fVar1;
            *(float *)((int)pvVar4 + 0x48) = fVar2;
            *(float *)((int)pvVar4 + 0x4c) = fVar3;
            *(uint *)((int)pvVar4 + 0x28) = tag;
            *(float *)((int)pvVar4 + 0x2c) = weight;
            if (scoreWeights != (void *)0x0) {
              api = (int *)GetGlobalInterfacePointer_11D5BBC();
              pvStack_24 = (void *)0x0;
              uStack_28 = 0;
              (**(code **)(*api + 0x78))(api,scoreWeights,&pvStack_24,&uStack_28);
              RouteDestination_CopyScoreWeights(pvVar4,(uint)pvStack_24,uStack_28);
            }
            RouteGoal_AppendDestination(this,(int)pvVar4);
            (**(code **)(*this + 4))();
            (**(code **)(*host + 0x14))();
            return true;
          }
        }
        (**(code **)(*this + 4))();
      }
      (**(code **)(*host + 0x14))();
    }
  }
  return false;
}

