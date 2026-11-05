/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: reads four 32-bit height-grid values without bounds checks. Linear
   index=((gridSizeX*level)+x)*gridStrideZ+z; data pointer at this+10. Outputs h00,h01,h10,h11 at
   adjacent z and x-stride addresses. Float interpretation is established by the x87/SSE consumers
   in 00a8c690; callers must supply in-range cell coordinates. */

void __thiscall
HeightGrid_ReadFourCorners(void *this,int param_1,int param_2,int param_3,undefined4 *param_4)

{
  int iVar1;
  
  iVar1 = (*(int *)((int)this + 4) * param_3 + param_1) * *(int *)((int)this + 8) + param_2;
  *param_4 = *(undefined4 *)(*(int *)((int)this + 0x10) + iVar1 * 4);
  param_4[1] = *(undefined4 *)(*(int *)((int)this + 0x10) + 4 + iVar1 * 4);
  param_4[2] = *(undefined4 *)(*(int *)((int)this + 0x10) + (*(int *)((int)this + 8) + iVar1) * 4);
  param_4[3] = *(undefined4 *)
                (*(int *)((int)this + 0x10) + 4 + (*(int *)((int)this + 8) + iVar1) * 4);
  return;
}

