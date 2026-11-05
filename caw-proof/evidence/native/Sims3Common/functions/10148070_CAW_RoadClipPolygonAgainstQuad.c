/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Clips a polygon against the four directed quad edges in bit
   order1,2,4,8 via0x10146D10, copying each preceding output to the next input and resetting output
   end. A nonempty final output is the self-overlap acceptance predicate; this helper does not apply
   an area threshold. Analyst-assigned helper names are not recovered original symbols. Original
   instructions govern decompiler ABI/register artifacts. */

void __cdecl CAW_RoadClipPolygonAgainstQuad(float *param_1,int *param_2,int *param_3)

{
  int *piVar1;
  undefined4 local_14;
  undefined4 *local_10;
  int *local_c;
  
  piVar1 = param_3;
  local_14 = 1;
  CAW_RoadClipPolygonAgainstQuadEdge(&local_14,param_1,param_2,param_3);
  FUN_10980f20(&local_10,piVar1[1] - *piVar1 >> 6,piVar1 + 3);
  FUN_1013c130(&param_3,(undefined4 *)*piVar1,(undefined4 *)piVar1[1],local_10);
  local_c = param_3;
  piVar1[1] = *piVar1;
  param_3 = (int *)0x2;
  CAW_RoadClipPolygonAgainstQuadEdge(&param_3,param_1,(int *)&local_10,piVar1);
  FUN_10144b00(&local_10,piVar1);
  piVar1[1] = *piVar1;
  param_3 = (int *)&DAT_00000004;
  CAW_RoadClipPolygonAgainstQuadEdge(&param_3,param_1,(int *)&local_10,piVar1);
  FUN_10144b00(&local_10,piVar1);
  piVar1[1] = *piVar1;
  param_3 = (int *)0x8;
  CAW_RoadClipPolygonAgainstQuadEdge(&param_3,param_1,(int *)&local_10,piVar1);
  if (local_10 != (undefined4 *)0x0) {
    FUN_10918e90((int)local_10);
  }
  return;
}

