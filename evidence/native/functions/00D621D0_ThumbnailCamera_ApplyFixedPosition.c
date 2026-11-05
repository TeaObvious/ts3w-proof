/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX render owner; authored position/settings stack
   args. Set projection selector, perspective FOV or orthographic width1, request aspect, normalized
   axes and authored position, then near-min and far-max. Does not reuse bounds-fit distance
   clipping. Native00D57100 selected this when PositionFromScale false. */

void __thiscall ThumbnailCamera_ApplyFixedPosition(void *this,undefined4 *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  
  FUN_004dac30(*(void **)((int)this + 0x10),param_2[0xd]);
  if (param_2[0xd] == 0.0) {
    FUN_00960e30(*(void **)((int)this + 0x10),param_2[0xc]);
  }
  else {
    FUN_0095ff10(*(void **)((int)this + 0x10),1.0);
  }
  fVar1 = (float)*(int *)((int)this + 0x24);
  if (*(int *)((int)this + 0x24) < 0) {
    fVar1 = fVar1 + FLOAT_00f99948;
  }
  fVar2 = (float)*(int *)((int)this + 0x28);
  if (*(int *)((int)this + 0x28) < 0) {
    fVar2 = fVar2 + FLOAT_00f99948;
  }
  FUN_00960ef0(*(void **)((int)this + 0x10),fVar1 / fVar2);
  FUN_00961bd0(*(void **)((int)this + 0x10),param_1,param_2 + 4,param_2);
  FUN_0095fd80(*(void **)((int)this + 0x10),param_2[8]);
  FUN_00535ac0(*(void **)((int)this + 0x10),param_2[0xb]);
  FUN_009612e0(*(void **)((int)this + 0x10),'\0');
  return;
}

