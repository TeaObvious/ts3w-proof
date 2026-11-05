/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): ECX render owner; authored position/settings stack
   args. Set projection selector, perspective FOV or orthographic width1, request aspect, normalized
   axes and authored position, then near-min and far-max. Does not reuse bounds-fit distance
   clipping. Native00D57100 selected this when PositionFromScale false. */

void __thiscall ThumbnailCamera_ApplyFixedPosition(void *this,undefined4 *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  
  Camera_SetProjectionMode(*(void **)((int)this + 0x10),param_2[0xd]);
  if (param_2[0xd] == 0.0) {
    Camera_SetHorizontalFieldOfViewDegrees(*(void **)((int)this + 0x10),param_2[0xc]);
  }
  else {
    Camera_SetOrthographicWidth(*(void **)((int)this + 0x10),1.0);
  }
  fVar1 = (float)*(int *)((int)this + 0x24);
  if (*(int *)((int)this + 0x24) < 0) {
    fVar1 = fVar1 + 4.2949673e+09;
  }
  fVar2 = (float)*(int *)((int)this + 0x28);
  if (*(int *)((int)this + 0x28) < 0) {
    fVar2 = fVar2 + 4.2949673e+09;
  }
  FUN_00960ef0(*(void **)((int)this + 0x10),fVar1 / fVar2);
  FUN_00961bd0(*(void **)((int)this + 0x10),param_1,param_2 + 4,param_2);
  FUN_0095fd80(*(void **)((int)this + 0x10),param_2[8]);
  FUN_00535ac0(*(void **)((int)this + 0x10),param_2[0xb]);
  FUN_009612e0(*(void **)((int)this + 0x10),'\0');
  return;
}

