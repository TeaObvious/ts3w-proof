/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Returns caller output
   buffer in EAX (00957a46), RET4. Calls world quaternion/translation getter, copies second aligned
   float4, rather than returning this+20 local translation. */

float * __thiscall TransformComponent_GetWorldPosition(void *this,undefined4 *param_1)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float *pfVar4;
  float local_30 [11];
  
  pfVar4 = TransformComponent_GetWorldQuaternionTranslation(this,local_30);
  fVar1 = pfVar4[5];
  fVar2 = pfVar4[6];
  fVar3 = pfVar4[7];
  *param_1 = pfVar4[4];
  param_1[1] = fVar1;
  param_1[2] = fVar2;
  param_1[3] = fVar3;
  return (float *)param_1;
}

