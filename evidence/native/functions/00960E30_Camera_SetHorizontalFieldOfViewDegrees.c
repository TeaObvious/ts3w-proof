/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 SACS migration contract): ECX camera, float stack argument RET4. Convert
   degrees using data01045B14, tan(fov*.5), width2*tan, height=width/aspect, cache2*atan(width*.5)
   radians. Horizontal FOV differs from aspect-dependent vertical projection. */

void __thiscall Camera_SetHorizontalFieldOfViewDegrees(void *this,float param_1)

{
  float fVar1;
  float fVar2;
  float10 fVar3;
  float fVar4;
  
  fVar2 = DAT_0103fd88;
  fVar1 = _DAT_00f9b5b4;
  fVar3 = (float10)fptan((float10)(param_1 * DAT_01045b14 * _DAT_00f9b5b4));
  fVar4 = (float)fVar3 * DAT_0103fd88;
  *(float *)((int)this + 0xc) = fVar4;
  *(float *)((int)this + 0x10) = fVar4 / *(float *)((int)this + 0x18);
  fVar3 = (float10)fpatan((float10)(fVar4 * fVar1),(float10)1);
  *(float *)((int)this + 0x14) = (float)fVar3 * fVar2;
  return;
}

