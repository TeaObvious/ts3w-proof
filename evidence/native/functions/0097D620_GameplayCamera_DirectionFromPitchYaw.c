/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC1.67 TS3W.exe. Reconstructs direction from continuous
   pitch/yaw: XYZ=(sin(yaw)*cos(pitch),sin(pitch),-cos(yaw)*cos(pitch)); SIMD laneW repeatsX. Uses
   native x87 FSIN/FCOS; neither angle is normalized or written back. Called from pose commit974DE0
   for pitch sky/base transitions. At0097D642 EAX loads the output pointer and remains unchanged
   throughRET0097D705; caller consumes that pointer. Zero sign loaded00F998F0 bytes00 00 0080 is
   negativezero. No atan2 feedback to native stored yaw+7D4 occurs here. */

float * __cdecl
GameplayCamera_DirectionFromPitchYaw(float *directionOut,float pitchRadians,float yawRadians)

{
  float10 fVar1;
  float10 fVar2;
  float10 fVar3;
  float10 fVar4;
  float fVar5;
  float fVar6;

  fVar1 = (float10)fsin((float10)pitchRadians);
  fVar2 = (float10)fcos((float10)pitchRadians);
  fVar3 = (float10)fsin((float10)yawRadians);
  fVar4 = (float10)fcos((float10)yawRadians);
  fVar5 = (float)fVar3 * (float)fVar2;
  fVar6 = DAT_00f998f0 - (float)fVar4 * (float)fVar2;
  *directionOut = fVar5;
  directionOut[1] = (float)fVar1;
  directionOut[2] = fVar6;
  directionOut[3] = fVar5;
  return directionOut;
}

