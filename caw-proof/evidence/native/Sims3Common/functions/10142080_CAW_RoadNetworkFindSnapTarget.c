/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Dispatches by moving road-object type. Both splines and
   intersections search matching intersection arrays before spline arrays. Road arrays are
   intersections +78 and splines +30; walkway arrays +9C and +54. The moving-intersection call
   pushes spline +30 before intersection +78, making intersections the first cdecl argument. Helpers
   differ only in which array excludes the moving identity. Empty-port squared-distance threshold is
   binary32 one. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

uint __thiscall
CAW_RoadNetworkFindSnapTarget
          (void *this,int *param_1,undefined4 param_2,int *param_3,undefined4 *param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  undefined1 auStack_28 [8];
  undefined1 local_20 [28];
  
  (**(code **)(*param_1 + 0x28))(local_20,param_2);
  iVar2 = (**(code **)(*param_1 + 0xc))();
  iVar1 = param_1[2];
  switch(iVar2 - 1U) {
  case 0:
    uVar3 = CAW_RoadSnapExcludeSelfInSecondArray
                      ((int *)((int)this + 0x78),(int *)((int)this + 0x30),auStack_28,iVar1,
                       0x3f800000,param_3,param_4);
    return uVar3;
  case 1:
    uVar3 = CAW_RoadSnapExcludeSelfInSecondArray
                      ((int *)((int)this + 0x9c),(int *)((int)this + 0x54),auStack_28,iVar1,
                       0x3f800000,param_3,param_4);
    return uVar3;
  case 2:
    uVar3 = CAW_RoadSnapExcludeSelfInFirstArray
                      ((int *)((int)this + 0x78),(undefined4 *)((int)this + 0x30),auStack_28,iVar1,
                       0x3f800000,param_3,param_4);
    return uVar3;
  case 3:
    uVar3 = CAW_RoadSnapExcludeSelfInFirstArray
                      ((int *)((int)this + 0x9c),(undefined4 *)((int)this + 0x54),auStack_28,iVar1,
                       0x3f800000,param_3,param_4);
    return uVar3;
  default:
    return iVar2 - 1U & 0xffffff00;
  }
}

