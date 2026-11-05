/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 COMPLETE106-byte cdecl THREE stackwords, plainRET; caller cleans12bytes. Physical
   lotpointer+4, LotPaintPointpointer+8, outputFloat4pointer+C. EBP prologue preservesoriginal stack
   while ESP aligns16. Copies point rawFloat32X tooutput+0 and Z to+8 usingMOVSS/MOVAPS;
   preservesother components initially. Pushes SAME pointpointer, loads lot+290 as ECX and calls
   existing A8C690 LotLevelHeight_SampleLocalPosition. That sampler reads RAW SIGNED Int32
   point.level+8; it is not forced0, no rounding or globalfloor read here. FSTPFloat32 replaces
   output+4 height while preservingoutput0/8/C. Returnsvoid; no reliable separateEAX result. The
   result is a lot-local position at the requested level; this helper itself does no lot-to-world
   X/Z transformation. Host shared BuildFeedback currently uses ground ConstructionVertex(Vector2),
   so correcting waterlevel admission alone DOES NOT establish feedbackposition parity. World/error
   event conversion and fullsampler exceptional/outside rules retain their own owners. */

void __cdecl
LotPoint_ResolveLevelPosition(undefined *lot,LotPaintPoint *point,float *outputPosition)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float10 fVar5;
  
  fVar3 = outputPosition[1];
  fVar4 = outputPosition[3];
  fVar1 = point->x;
  *outputPosition = fVar1;
  outputPosition[1] = fVar3;
  outputPosition[2] = outputPosition[2];
  outputPosition[3] = fVar4;
  fVar2 = point->z;
  *outputPosition = fVar1;
  outputPosition[1] = fVar3;
  outputPosition[2] = fVar2;
  outputPosition[3] = fVar4;
  fVar5 = LotLevelHeight_SampleLocalPosition(*(void **)(lot + 0x290),(LotXZLevel *)point);
  *outputPosition = *outputPosition;
  outputPosition[1] = (float)fVar5;
  outputPosition[2] = outputPosition[2];
  outputPosition[3] = outputPosition[3];
  return;
}

