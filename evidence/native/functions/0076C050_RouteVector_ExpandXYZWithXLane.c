/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst static routing contract: ECX points to managed XYZ float triple; stack arg points to
   aligned16-byte native output, returned in EAX. Stores lanes(x,y,z,x), NOT(x,y,z,1) or(x,y,z,0).
   RET4 confirms one stack parameter. Fourth lane is usually ignored by XYZ geometry consumers. */

float * __thiscall RouteVector_ExpandXYZWithXLane(void *this,undefined4 *param_1)

{
  undefined4 uVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  uVar1 = *(undefined4 *)((int)this + 8);
  uVar2 = *(undefined4 *)this;
  uVar3 = *(undefined4 *)((int)this + 4);
  *param_1 = uVar2;
  param_1[1] = uVar3;
  param_1[2] = uVar1;
  param_1[3] = uVar2;
  return (float *)param_1;
}

