/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst note (PC1.67 SACS migration contract): ECX camera,float width RET4.
   Storewidth+0C,height=width/aspect+10, cache2*atan(width*.5)+14. Thumbnail fixed/fit orthographic
   callers pass1.0; bounds radius affects distance, not this width. */

void __thiscall Camera_SetOrthographicWidth(void *this,float param_1)

{
  float10 fVar1;
  float fVar2;
  
  *(float *)((int)this + 0xc) = param_1;
  fVar2 = param_1 * _DAT_00f9b5b4;
  *(float *)((int)this + 0x10) = param_1 / *(float *)((int)this + 0x18);
  fVar1 = (float10)fpatan((float10)fVar2,(float10)1);
  *(float *)((int)this + 0x14) = (float)fVar1 * DAT_0103fd88;
  return;
}

