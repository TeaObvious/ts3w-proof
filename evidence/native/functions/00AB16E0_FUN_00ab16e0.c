/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Lot-local XZ to world XZ transform; descriptive label, not recovered original symbol.
   ECX lot plus localX/localZ/outputX/outputZ, RET10 void. Original angle+1A0 uses FSIN/FCOS with binary32 stores; MULPS/ADDPS combine separate rounded products, then add originX+190 and originZ+198. worldX=originX+sin*z+cos*x; worldZ=originZ-sin*x+cos*z. No Y/level or edge allowance; no FMA/extended-precision equivalence claim. */

void __thiscall FUN_00ab16e0(void *this,float param_1,float param_2,float *param_3,float *param_4)

{
  float10 fVar1;
  float10 fVar2;
  
  fVar1 = (float10)fsin((float10)*(float *)((int)this + 0x1a0));
  fVar2 = (float10)fcos((float10)*(float *)((int)this + 0x1a0));
  *param_3 = *(float *)((int)this + 400) + (float)fVar1 * param_2 + (float)fVar2 * param_1;
  *param_4 = *(float *)((int)this + 0x198) + (float)-fVar1 * param_1 + (float)fVar2 * param_2;
  return;
}
