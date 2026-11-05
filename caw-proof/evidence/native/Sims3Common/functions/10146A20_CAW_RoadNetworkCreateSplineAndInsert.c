/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 internal road-network helper called by WorldTerrainWrap_CreateRoadSpline at
   0x10996C50. Ghidra shows allocation of a World/RoadNetwork/RoadSpline object, constructor call
   0x1013D140, a virtual validation/failure branch, and insertion into one of two road-network
   pointer arrays at this+0x30 or +0x54. It returns the created pointer on the successful insertion
   path and zero on the validation branch. The managed export expects IntPtr; the wrapper leaves
   this helper's EAX intact. Ghidra's argument/stack labels should be checked against raw
   instructions before assigning every flag or ownership rule. */

int * __thiscall
CAW_RoadNetworkCreateSplineAndInsert
          (void *this,int *param_1,int *param_2,int *param_3,int *param_4,int *param_5,
          undefined4 param_6,undefined4 param_7)

{
  undefined4 *puVar1;
  char cVar2;
  void *pvVar3;
  int *piVar4;
  char cVar5;
  
  pvVar3 = (void *)FUN_10918eb0(0x1b0,"World/RoadNetwork/RoadSpline",0);
  cVar5 = (char)param_5;
  if (pvVar3 == (void *)0x0) {
    piVar4 = (int *)0x0;
  }
  else {
    piVar4 = FUN_1013d140(pvVar3,param_1,param_2,param_3,param_4,cVar5,(char)param_6,(char)param_7,
                          *(undefined2 *)((int)this + 0x110));
  }
  param_5 = piVar4;
  cVar2 = (**(code **)(*piVar4 + 0x5c))();
  if (cVar2 != '\0') {
    (**(code **)(*piVar4 + 8))(1);
    return (int *)0x0;
  }
  if (cVar5 == '\0') {
    pvVar3 = (void *)((int)this + 0x30);
  }
  else {
    pvVar3 = (void *)((int)this + 0x54);
  }
  puVar1 = *(undefined4 **)((int)pvVar3 + 4);
  if (puVar1 < *(undefined4 **)((int)pvVar3 + 8)) {
    *(undefined4 **)((int)pvVar3 + 4) = puVar1 + 1;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = piVar4;
    }
    return piVar4;
  }
  FUN_105ee480(pvVar3,puVar1,&param_5);
  return param_5;
}

