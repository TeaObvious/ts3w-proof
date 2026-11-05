/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* ECX lot owner; two aligned four-float input/output pointer stack arguments; RET8. AB1E10 fills
   two stack-local four-float values. Shuffle/multiply/subtract/add forms quaternion-style cross
   products, doubles the second cross product, then adds input and the second returned value.
   Captures input before storing all four output lanes. AB1E10 pose producer, coordinate-frame
   direction and pose lifetime remain child/caller boundaries. */

void __thiscall Lot_TransformPositionByResolvedPose(void *this,float *param_1,float *param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float fVar7;
  float fVar8;
  float fVar9;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  FUN_00ab1e10(this,&local_30);
  fVar1 = *param_1;
  fVar2 = param_1[1];
  fVar3 = param_1[2];
  fVar4 = param_1[3];
  fVar5 = (fVar3 * fStack_2c - fVar2 * fStack_28) + fStack_24 * fVar1;
  fVar6 = (fVar1 * fStack_28 - fVar3 * local_30) + fStack_24 * fVar2;
  fVar7 = (fVar2 * local_30 - fVar1 * fStack_2c) + fStack_24 * fVar3;
  fVar8 = (fVar5 * fStack_28 - fVar7 * local_30) * DAT_0103fd88;
  fVar9 = (fVar6 * local_30 - fVar5 * fStack_2c) * DAT_0103fd88;
  fVar5 = (fVar5 * local_30 - fVar5 * local_30) * DAT_0103fd88;
  *param_2 = (fVar7 * fStack_2c - fVar6 * fStack_28) * DAT_0103fd88 + fVar1 + local_20;
  param_2[1] = fVar8 + fVar2 + fStack_1c;
  param_2[2] = fVar9 + fVar3 + fStack_18;
  param_2[3] = fVar5 + fVar4 + fStack_14;
  return;
}

