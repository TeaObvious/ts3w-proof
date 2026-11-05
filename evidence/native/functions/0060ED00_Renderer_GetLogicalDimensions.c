/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note. Renderer dimension getter used by input conversion. Returns three integer
   fields+2C/+30/+34 through three output pointers, this in ECX, original ret0C. Input conversion
   uses first two as logical dimensions. */

void __thiscall
Renderer_GetLogicalDimensions
          (void *this,undefined4 *param_1,undefined4 *param_2,undefined4 *param_3)

{
  *param_1 = *(undefined4 *)((int)this + 0x2c);
  *param_2 = *(undefined4 *)((int)this + 0x30);
  *param_3 = *(undefined4 *)((int)this + 0x34);
  return;
}

