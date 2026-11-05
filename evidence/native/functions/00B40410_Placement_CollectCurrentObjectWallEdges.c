/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 STATIC ORIGINAL. cdecl object + required/prohibited output pointers. Resolve placement
   component, refresh yaw C89940, read local position/level C894E0, quantize yaw AFBD00, invoke
   B3FD50 with five DWORD slots. ADD ESP18 after call also cleans earlier yaw argument; do not infer
   a sixth B3FD50 parameter. Missing object/component returns AL0, upper EAX unspecified. Does not
   initialize caller output sets before missing-component exit. */

uint __cdecl Placement_CollectCurrentObjectWallEdges(void *param_1,void *param_2,void *param_3)

{
  uint in_EAX;
  void *this;
  uint uVar1;
  float yaw;
  float local_c;
  float local_8 [2];
  
  if (param_1 != (void *)0x0) {
    this = Object_GetComponentByMask(param_1,DAT_011edf08);
    in_EAX = 0;
    if (this != (void *)0x0) {
      yaw = PlacementLocation_ReadYawWithRefresh(this);
      local_c = -1.0;
      local_8[0] = -1.0;
      local_8[1] = 0.0;
      FUN_00c894e0(this,&local_c,local_8,local_8 + 1);
      uVar1 = Placement_QuantizeYawToOctant(yaw);
      uVar1 = Placement_CollectWallFlagEdgeSets(param_1,&local_c,uVar1,param_2,param_3);
      return uVar1;
    }
  }
  return in_EAX & 0xffffff00;
}

