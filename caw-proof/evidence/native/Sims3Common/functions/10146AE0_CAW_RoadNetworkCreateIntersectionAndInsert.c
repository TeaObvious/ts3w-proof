/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Constructs a RoadIntersection and inserts road squares into
   network+0x78 or walkway squares into+0x9C. Complements the spline constructor arrays+0x30/+0x54
   and establishes the snap-dispatch candidate kinds. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

int * __thiscall
CAW_RoadNetworkCreateIntersectionAndInsert
          (void *this,int *param_1,int param_2,int *param_3,undefined4 param_4)

{
  void *pvVar1;
  undefined4 *puVar2;
  char cVar3;
  
  pvVar1 = (void *)FUN_10918eb0(0xc0,"World/RoadNetwork/RoadIntersection",0);
  cVar3 = (char)param_3;
  if (pvVar1 == (void *)0x0) {
    param_3 = (int *)0x0;
  }
  else {
    param_3 = FUN_1013cbb0(pvVar1,param_1,param_2,cVar3,(char)param_4,
                           *(undefined2 *)((int)this + 0x110));
  }
  if (cVar3 == '\0') {
    puVar2 = *(undefined4 **)((int)this + 0x7c);
    pvVar1 = (void *)((int)this + 0x78);
    if (puVar2 < *(undefined4 **)((int)this + 0x80)) goto LAB_10146b6a;
  }
  else {
    puVar2 = *(undefined4 **)((int)this + 0xa0);
    pvVar1 = (void *)((int)this + 0x9c);
    if (puVar2 < *(undefined4 **)((int)this + 0xa4)) {
LAB_10146b6a:
      *(undefined4 **)((int)pvVar1 + 4) = puVar2 + 1;
      if (puVar2 == (undefined4 *)0x0) {
        return param_3;
      }
      *puVar2 = param_3;
      return param_3;
    }
  }
  FUN_105ee480(pvVar1,puVar2,&param_3);
  return param_3;
}

