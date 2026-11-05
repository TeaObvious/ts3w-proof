/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified CAW 1.22.10 Sims3Common.dll PE export WorldWrap_GetScreenCoordinates (RVA 0x999FF0).
   Pristine CSHostWrap declares int WorldWrap_GetScreenCoordinates(ref Vector3 worldPos, ref Vector2
   screenPos), exposed as a bool via !=0. Native code returns 0 when the scene or camera is
   unavailable. Otherwise it copies three world-position floats, calls projection helper 0x105C2D00,
   writes two output floats at 0x1099A088–0x1099A08A and returns 1. Critically, raw x86 does not
   test the helper's return at 0x1099A051–0x1099A090; the outer success value only proves
   scene/camera availability, not successful projection. The helper maps normalized coordinates
   using current client-rectangle dimensions or a fallback rectangle. This is a static call-path
   proof, not a visual parity test.
   
   Analyst CAW1.22.10 original camera/picking instruction contract. Complete
   body10999FF0..1099A098,169bytes;cdecl2stackwords,plainRET;UInt32EAX0/1. Missing global
   scene10C76170 or scene+24 camera returns0 without touching externalVector2. For validscene/camera
   it reads only inputXYZ12bytes,builds localalignedFloat4 and calls105C2D00. It DOES NOT test
   helperAL: copies exactlytwooutputfloats thenreturns1. InputtemporaryW duplicatesX but105C2A90
   replacesW with1. This wrapper has no viewport/frustum/behind-camera/pixel-bounds/finite
   rejection; projection readiness/camera lifetime are caller contracts. */

uint __cdecl WorldWrap_GetScreenCoordinates(float *worldPosition3,float *screenPosition2Out)

{
  int iVar1;
  void *camera;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  
                    /* 0x999ff0  2651  WorldWrap_GetScreenCoordinates */
  iVar1 = FUN_104de3a0();
  if (iVar1 != 0) {
    camera = (void *)FUN_109a5b50(iVar1);
    if (camera != (void *)0x0) {
      fStack_28 = worldPosition3[2];
      local_30 = *worldPosition3;
      fStack_2c = worldPosition3[1];
      fStack_24 = local_30;
      CAW_ProjectWorldToScreenPixels(camera,&local_30,&local_20);
                    /* Projection helper return is not tested; wrapper proceeds to write two screen
                       floats and returnsUInt32 1. */
      *screenPosition2Out = local_20;
      screenPosition2Out[1] = fStack_1c;
      return 1;
    }
  }
  return 0;
}

