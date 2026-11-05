/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Static PC1.67 original instruction comparison; 201 complete owned bytes/62 actual Listing
   instructions. No runtime execution.
   ECX receiver and three stack inputs, RET0xC. Initializes output+0x20 to binary32 0x7149F2CA
   (about1e30), output+0x24 to null shape, then00681C40. Child AL is tested and remains the physical
   result through SSE work/return despite the inferred void return. On success transforms normal
   using shape quaternion and computes hit position from origin+direction*distance. Shape at
   output+0x24 is a pointer, not a float conversion. Lower collision-tree traversal remains a child
   boundary. */

void __thiscall
CollisionScene_QueryRayAndProjectHit(void *this,float *param_1,uint param_2,float *param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  undefined4 uVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  
  param_3[8] = 1e+30;
  param_3[9] = 0.0;
  uVar7 = FUN_00681c40(*(void **)((int)this + 4),param_1,param_2,(int)param_3);
  if ((char)uVar7 != '\0') {
    fVar1 = param_3[4];
    fVar2 = param_3[5];
    fVar3 = param_3[6];
    fVar10 = param_3[9];
    fVar4 = *(float *)((int)fVar10 + 0x20);
    fVar5 = *(float *)((int)fVar10 + 0x24);
    fVar6 = *(float *)((int)fVar10 + 0x28);
    fVar10 = *(float *)((int)fVar10 + 0x2c);
    fVar8 = (fVar3 * fVar5 - fVar2 * fVar6) + fVar10 * fVar1;
    fVar9 = (fVar1 * fVar6 - fVar3 * fVar4) + fVar10 * fVar2;
    fVar10 = (fVar2 * fVar4 - fVar1 * fVar5) + fVar10 * fVar3;
    param_3[4] = (fVar10 * fVar5 - fVar9 * fVar6) * 2.0 + fVar1;
    param_3[5] = (fVar8 * fVar6 - fVar10 * fVar4) * 2.0 + fVar2;
    param_3[6] = (fVar9 * fVar4 - fVar8 * fVar5) * 2.0 + fVar3;
    param_3[7] = (fVar8 * fVar4 - fVar8 * fVar4) * 2.0 + param_3[7];
    fVar1 = param_1[5];
    fVar2 = param_1[6];
    fVar3 = param_1[7];
    fVar10 = param_3[8];
    fVar4 = param_1[1];
    fVar5 = param_1[2];
    fVar6 = param_1[3];
    *param_3 = fVar10 * param_1[4] + *param_1;
    param_3[1] = fVar10 * fVar1 + fVar4;
    param_3[2] = fVar10 * fVar2 + fVar5;
    param_3[3] = fVar10 * fVar3 + fVar6;
  }
  return;
}

