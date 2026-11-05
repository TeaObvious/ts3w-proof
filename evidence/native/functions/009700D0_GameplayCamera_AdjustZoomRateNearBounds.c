/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name, original PC 1.67 TS3W.exe. Main-frame zoom speed helper, not a yaw
   smoother. Base rate=((camera+8E0-1)*distanceFraction+1)*(camera+800). Lower-bound proximity uses
   (zoom-min)<camera+990 AND inputZoomRate<0; upper uses (max-zoom)<camera+994 AND inputZoomRate>0.
   On first proximity frame cache base rate+8AC and set+8B0; interpolation uses that cached rate
   toward-.1 at lower bound or+.1 at upper bound. Outside these conditions clear+8B0 and return
   base. Return is x87 float, RET14 consumes five stack float arguments. Bound-distance and input
   roles are confirmed by frame's integration/clamp calls; named fields are analyst inference. */

float10 __thiscall
GameplayCamera_AdjustZoomRateNearBounds
          (void *param_1,float inputZoomRate,float zoomDistance,float distanceFraction,
          float minimumZoom,float maximumZoom)

{
  float fVar1;

  fVar1 = ((*(float *)((int)param_1 + 0x8e0) - 1.0) * distanceFraction + 1.0) *
          *(float *)((int)param_1 + 0x800);
  if ((zoomDistance - minimumZoom < *(float *)((int)param_1 + 0x990)) && (inputZoomRate < 0.0)) {
                    /* Entering lower-bound region caches base rate only if+8B0 was false. Return
                       lerp(-.1,cachedRate,(zoom-min)/lowerWidth). Original-.1 binary32 at01072FB4
                       isCDCCCCBD. */
    if (*(char *)((int)param_1 + 0x8b0) == '\0') {
      *(undefined1 *)((int)param_1 + 0x8b0) = 1;
      *(float *)((int)param_1 + 0x8ac) = fVar1;
    }
    return (float10)((*(float *)((int)param_1 + 0x8ac) - -0.1) *
                     ((zoomDistance - minimumZoom) / *(float *)((int)param_1 + 0x990)) + -0.1);
  }
  if ((maximumZoom - zoomDistance < *(float *)((int)param_1 + 0x994)) && (0.0 < inputZoomRate)) {
                    /* Upper-bound equivalent: lerp(+.1,cachedRate,(max-zoom)/upperWidth), using+.1
                       at0104487C (CDCCCC3D). Existing cache is retained while still in either
                       proximity branch. */
    if (*(char *)((int)param_1 + 0x8b0) == '\0') {
      *(undefined1 *)((int)param_1 + 0x8b0) = 1;
      *(float *)((int)param_1 + 0x8ac) = fVar1;
    }
    return (float10)((*(float *)((int)param_1 + 0x8ac) - 0.1) *
                     ((maximumZoom - zoomDistance) / *(float *)((int)param_1 + 0x994)) + 0.1);
  }
  *(undefined1 *)((int)param_1 + 0x8b0) = 0;
  return (float10)fVar1;
}

