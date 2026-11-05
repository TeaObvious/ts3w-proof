/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* CAW 1.22.10 Sims3Common.dll PE export identity: TransformComponent_GetAbsoluteEulerRotation.
   Export ordinal(s): 2531. Entry VA: 0x10980b00. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000006. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence.
   
   Analyst CAW1.22.10 transform/Euler instruction contract. Complete253-byte original exported cdecl
   wrapper. Two physical stackwords outputVector3 and transformComponent; plainRET, writes
   exactly3Float32 values externally. Calls1074A2E0 with ECX component and local quaternion4 output.
   Builds3 aligned matrix rows using all4 quaternion lanes multiplied by binary32 sqrt2
   approximation0x3FB504F3 from10B963A8, negative squares plus0.5 from10B310EC, pair-product
   sums/differences and original SIMD shuffle/add order. No explicit normalization/identity
   fallback. Calls10763C30 with localFloat4 output and matrixRows12, then copies only XYZ12bytes to
   external output; helper's fourth angle lane remains internal. Not bit-identical by assumption to
   a Matrix4x4.CreateFromQuaternion implementation using other arithmetic grouping. Parent/link
   admission comes from the pose producer, not serialized ContainingGuid alone. */

void __cdecl TransformComponent_GetAbsoluteEulerRotation(float *euler3Out,void *transformComponent)

{
  float *pfVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float local_50 [4];
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x980b00  2531  TransformComponent_GetAbsoluteEulerRotation */
  pfVar1 = CAW_TransformCopyAbsoluteQuaternion(transformComponent,local_50);
  fVar2 = *pfVar1 * 1.4142135;
  fVar3 = pfVar1[1] * 1.4142135;
  fVar4 = pfVar1[2] * 1.4142135;
  fVar5 = pfVar1[3] * 1.4142135;
  fStack_2c = (0.0 - fVar2) * fVar2 + 0.5;
  local_40 = (0.0 - fVar3) * fVar3 + 0.5;
  fVar6 = (0.0 - fVar4) * fVar4 + 0.5;
  fStack_3c = fVar5 * fVar4 + fVar3 * fVar2;
  fStack_28 = fVar5 * fVar2 + fVar4 * fVar3;
  local_20 = fVar5 * fVar3 + fVar2 * fVar4;
  fStack_34 = fVar3 * fVar2 - fVar5 * fVar4;
  fStack_1c = fVar4 * fVar3 - fVar5 * fVar2;
  fStack_38 = fVar2 * fVar4 - fVar5 * fVar3;
  fStack_18 = local_40 + fStack_2c;
  local_40 = fVar6 + local_40;
  fStack_2c = fStack_2c + fVar6;
  local_30 = fStack_34;
  fStack_24 = fStack_3c;
  fStack_14 = fStack_18;
  CAW_MatrixRowsToEulerXyz(&local_60,&local_40);
  *euler3Out = local_60;
  euler3Out[1] = fStack_5c;
  euler3Out[2] = fStack_58;
  return;
}

