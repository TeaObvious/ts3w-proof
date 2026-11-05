/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst CAW1.22.10 transform/Euler instruction contract. Complete33-byte body. ECX transform
   owner, one stackword aligned quaternion4Out; RET4. Calls1074A190 using aligned local pose8,
   copies FIRST16bytes with MOVAPS, sets EAX to caller output and returns it. Prior void prototype
   hid this returned pointer used by10980B00. No normalization, validity check, zero or identity
   fallback in this wrapper; underlying link producer remains separate. */

float * __thiscall CAW_TransformCopyAbsoluteQuaternion(void *this,float *quaternion4Out)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float *pfVar4;
  float local_30 [11];
  
  pfVar4 = CAW_TransformBuildPoseWithLink(this,local_30);
  fVar1 = pfVar4[1];
  fVar2 = pfVar4[2];
  fVar3 = pfVar4[3];
                    /* EAX becomes explicit quaternion4Out, then MOVAPS copies16bytes; RET4. Pointer
                       return is physically present. */
  *quaternion4Out = *pfVar4;
  quaternion4Out[1] = fVar1;
  quaternion4Out[2] = fVar2;
  quaternion4Out[3] = fVar3;
  return quaternion4Out;
}

