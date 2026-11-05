/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 STATIC ORIGINAL. cdecl object, local XZ bounds, placement position, octant and output of
   four XZ pairs. Null object returns AL0 with upper EAX unspecified. Original octant conversion
   AFBEE0 feeds Footprint_BuildOwnerToLotXZMatrix, then transforms four ordered corners. Success
   returns AL1. Matrix coordinate conventions/native rotation and footprint lifetime remain their
   original children; no inferred C pointer type defines an external struct ABI. */

uint __cdecl
Placement_TransformBoundsCornersToLot
          (void *param_1,float *param_2,float *param_3,int param_4,int param_5)

{
  uint in_EAX;
  uint uVar1;
  float10 fVar2;
  float local_2c;
  float local_28;
  float local_24;
  float local_20;
  float local_18;
  float local_14;
  float local_c;
  float local_8;
  
  if (param_1 == (void *)0x0) {
    return in_EAX & 0xffffff00;
  }
  fVar2 = FUN_00afbee0(param_4);
  Footprint_BuildOwnerToLotXZMatrix(param_1,(float)fVar2,*param_3,param_3[1],&local_24);
  uVar1 = 0;
  do {
    switch(uVar1) {
    case 0:
      local_28 = param_2[3];
      goto LAB_00b3dfd0;
    case 1:
      local_2c = param_2[2];
      local_28 = param_2[3];
      break;
    case 2:
      local_2c = param_2[2];
      local_28 = param_2[1];
      break;
    case 3:
      local_28 = param_2[1];
LAB_00b3dfd0:
      local_2c = *param_2;
    }
    *(float *)(param_5 + uVar1 * 8) = local_18 * local_28 + local_24 * local_2c + local_c;
    *(float *)(param_5 + 4 + uVar1 * 8) = local_14 * local_28 + local_20 * local_2c + local_8;
    uVar1 = uVar1 + 1;
    if (3 < uVar1) {
      return CONCAT31((int3)(uVar1 >> 8),1);
    }
  } while( true );
}

