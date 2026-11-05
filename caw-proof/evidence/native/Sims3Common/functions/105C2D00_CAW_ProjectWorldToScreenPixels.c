/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* CAW 1.22.10 internal world-to-screen projection helper reached from
   WorldWrap_GetScreenCoordinates at 0x10999FF0. It zeroes a four-float output, rejects failed
   projection, obtains viewport bounds and optionally GetClientRect, then maps normalized
   coordinates to pixel X = width*(x+1)/2 and Y = height*(1-y)/2. The wrapper copies the first two
   floats to the managed Vector2. Failure behavior and display origin are bounded by this static
   path.
   
   Analyst CAW1.22.10 original camera/picking instruction contract. Complete
   body105C2D00..105C2E17,280bytes;cdecl3stackwords,plainRET; meaningfulBooleanAL. Zeroes4-float
   output before calling105C2A90 with ECXcamera,EAXlocaloutput and ONEworld-point stackword.
   Selected projection helper always returnsAL1 for admitted pointers; its conditionalfalse branch
   is retained here but is not a behind-camera rejection policy. Viewport dimensions
   signedright-left,bottom-top; successfulGetClientRect overrides with its width/height, failure
   preservesviewport. Unlike pick-ray helper, no positive-client-size fallback.
   PixelX=width*(normalizedX+1)*0.5;PixelY=height*(1-normalizedY)*0.5, separateMULPS. Fourlane
   output is[X,Y,X,X]. No rectleft/top offset is added; no clipping or pixel-bounds check. Native
   normalized depth producer uses0..1; renderer depth adaptation is outside this helper. */

byte __cdecl
CAW_ProjectWorldToScreenPixels(void *camera,float *worldPosition4,float *screenCoordinates4Out)

{
  byte bVar1;
  void *this;
  BOOL BVar2;
  float fVar3;
  float fVar4;
  int local_40;
  int local_3c;
  int local_38;
  int local_34;
  tagRECT local_30;
  float local_20;
  float fStack_1c;
  
  *screenCoordinates4Out = 0.0;
  screenCoordinates4Out[1] = 0.0;
  screenCoordinates4Out[2] = 0.0;
  screenCoordinates4Out[3] = 0.0;
                    /* EAX is local projection output pointer,ECXcamera; one worldPosition4
                       stackword; callerADD ESP4. CalleeAL always1 after its stores. */
  bVar1 = CAW_ProjectPointToNormalizedCoordinates(camera,&local_20,worldPosition4);
  if (bVar1 == 0) {
    return 0;
  }
  this = (void *)FUN_104094c0();
  FUN_1040b140(this,&local_40);
  fVar3 = (float)(local_38 - local_40);
  fVar4 = (float)(local_34 - local_3c);
  if ((*(HWND *)((int)this + 0x28) != (HWND)0x0) &&
     (BVar2 = GetClientRect(*(HWND *)((int)this + 0x28),&local_30), BVar2 != 0)) {
    fVar3 = (float)(local_30.right - local_30.left);
    fVar4 = (float)(local_30.bottom - local_30.top);
  }
  fVar3 = fVar3 * (local_20 + 1.0) * 0.5;
  *screenCoordinates4Out = fVar3;
  screenCoordinates4Out[1] = fVar4 * (1.0 - fStack_1c) * 0.5;
  screenCoordinates4Out[2] = fVar3;
  screenCoordinates4Out[3] = fVar3;
  return 1;
}

