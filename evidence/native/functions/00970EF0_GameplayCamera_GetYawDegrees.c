/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Public yaw wrapper0073D903 reaches this
   accessor. Select native Euler Y at camera+7D4 and multiply binary32 [01046CB4]=57.295780181884766
   (bytesE12E6542), returning through x87. This getter performs no normalization or wrapping; main
   frame owns angle updates and wrapping. Decompiler float10 denotes the x87 return, not a
   stored80-bit angle. */

float10 __fastcall GameplayCamera_GetYawDegrees(int cameraState)

{
  return (float10)(*(float *)(cameraState + 0x7d4) * 57.29578);
}

