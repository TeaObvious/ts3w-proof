/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst CAW1.22.10 original camera/picking instruction contract. Complete
   body105C2650..105C2809,442bytes; cdecl5stackwords,plainRET. Receives camera,signedInt32pixelX/Y
   and two aligned4-float outputs. Origin copies camera+60..6F, not near-plane unprojection.
   Viewport sizes are signed rect(right-left,bottom-top); a nonnull HWND and successful
   GetClientRect use raw right/bottom, requiring both signedpositive. Nonpositive client dimensions
   instead use3.0x3.0 and replace pixelX/Y with1, giving a centered pick. Missing
   HWND/failedGetClientRect retains viewport values. X=((Float32(pixelX)+0.5)/width-0.5)*camera+0C;
   Y=(0.5-(Float32(pixelY)+0.5)/height)*camera+10, with separate SSE stores/operations. Combine
   camera rows+30/+40/+50 with X,Y,-1; squared XYZ sum,RSQRTPS and TWO Newton refinements normalize
   the four lanes. Endpoint=origin+direction*camera+20. Existing CameraWrap_GetFarClip/SetFarClip
   and10517C50 establish+20 as farClip (setter stores suppliedFloat32 without local clamp);
   projection producer107538A0 uses same field. No
   pixel-bounds,finite-value,near-plane,orthographic-kind or degenerate-vector guard in this
   selected helper. Basis W/camera setup and caller admission remain separate contracts. */

void __cdecl
CAW_BuildCameraPickSegment
          (void *camera,int screenX,int screenY,float *rayOrigin4Out,float *rayEndpoint4Out)

{
  float fVar1;
  float fVar2;
  float fVar3;
  float fVar4;
  float fVar5;
  float fVar6;
  void *this;
  BOOL BVar7;
  float fVar8;
  float fVar9;
  float fVar10;
  float fVar11;
  float fVar12;
  float fVar13;
  float fVar14;
  float fVar15;
  float fVar16;
  float fVar17;
  undefined1 auVar18 [16];
  undefined1 auVar19 [16];
  float fVar20;
  float fVar21;
  int local_30;
  int iStack_2c;
  int iStack_28;
  int iStack_24;
  tagRECT local_20;
  
  this = (void *)FUN_104094c0();
  FUN_1040b140(this,&local_30);
  fVar12 = (float)(iStack_28 - local_30);
  fVar20 = (float)(iStack_24 - iStack_2c);
  if ((*(HWND *)((int)this + 0x28) != (HWND)0x0) &&
     (BVar7 = GetClientRect(*(HWND *)((int)this + 0x28),&local_20), BVar7 != 0)) {
    if ((local_20.right < 1) || (local_20.bottom < 1)) {
                    /* Successful GetClientRect with right<=0 or bottom<=0: dimensions3.0,
                       screenX=screenY=1; this yields centered normalized coordinates. */
      fVar12 = 3.0;
      fVar20 = 3.0;
      screenX = 1;
      screenY = 1;
    }
    else {
      fVar12 = (float)local_20.right;
      fVar20 = (float)local_20.bottom;
    }
  }
  fVar1 = *(float *)((int)camera + 0x60);
  fVar2 = *(float *)((int)camera + 100);
  fVar3 = *(float *)((int)camera + 0x68);
  fVar4 = *(float *)((int)camera + 0x6c);
                    /* Half-pixel center: Float32(screenX)+0.5, divide signed viewport width,
                       subtract0.5; multiply camera width+0C. */
  fVar8 = (((float)screenX + 0.5) / fVar12 - 0.5) * *(float *)((int)camera + 0xc);
  fVar21 = (0.5 - ((float)screenY + 0.5) / fVar20) * *(float *)((int)camera + 0x10);
  *rayOrigin4Out = fVar1;
  rayOrigin4Out[1] = fVar2;
  rayOrigin4Out[2] = fVar3;
  rayOrigin4Out[3] = fVar4;
  fVar20 = *(float *)((int)camera + 0x4c);
  fVar5 = *(float *)((int)camera + 0x3c);
  fVar6 = *(float *)((int)camera + 0x5c);
  fVar9 = fVar21 * *(float *)((int)camera + 0x40) + fVar8 * *(float *)((int)camera + 0x30) +
          *(float *)((int)camera + 0x50) * -1.0;
  fVar10 = fVar21 * *(float *)((int)camera + 0x44) + fVar8 * *(float *)((int)camera + 0x34) +
           *(float *)((int)camera + 0x54) * -1.0;
  fVar11 = fVar21 * *(float *)((int)camera + 0x48) + fVar8 * *(float *)((int)camera + 0x38) +
           *(float *)((int)camera + 0x58) * -1.0;
  fVar13 = fVar9 * fVar9;
  auVar18._4_4_ = fVar13;
  auVar18._0_4_ = fVar10 * fVar10;
  auVar18._8_4_ = fVar13;
  auVar18._12_4_ = fVar13;
  fVar13 = fVar11 * fVar11 + fVar10 * fVar10 + fVar13;
  auVar19._4_4_ = fVar13;
  auVar19._0_4_ = fVar13;
  auVar19._8_4_ = fVar13;
  auVar19._12_4_ = fVar13;
                    /* RSQRTPS seed then two independent Newton corrections; no zero/NaN/Inf guard
                       or orthographic switch. */
  auVar19 = rsqrtps(auVar18,auVar19);
  fVar14 = auVar19._0_4_;
  fVar15 = auVar19._4_4_;
  fVar16 = auVar19._8_4_;
  fVar17 = auVar19._12_4_;
  fVar14 = (1.0 - fVar14 * fVar14 * fVar13) * fVar14 * 0.5 + fVar14;
  fVar15 = (1.0 - fVar15 * fVar15 * fVar13) * fVar15 * 0.5 + fVar15;
  fVar16 = (1.0 - fVar16 * fVar16 * fVar13) * fVar16 * 0.5 + fVar16;
  fVar17 = (1.0 - fVar17 * fVar17 * fVar13) * fVar17 * 0.5 + fVar17;
                    /* camera+20 is FarClip per registered CameraWrap_GetFarClip1098ED30 and
                       setter1098ED10->10517C50; endpoint distance is farClip from camera-origin,
                       not near-plane. */
  fVar12 = *(float *)((int)camera + 0x20);
  *rayEndpoint4Out =
       ((1.0 - fVar14 * fVar14 * fVar13) * fVar14 * 0.5 + fVar14) * fVar9 * fVar12 + fVar1;
  rayEndpoint4Out[1] =
       ((1.0 - fVar15 * fVar15 * fVar13) * fVar15 * 0.5 + fVar15) * fVar10 * fVar12 + fVar2;
  rayEndpoint4Out[2] =
       ((1.0 - fVar16 * fVar16 * fVar13) * fVar16 * 0.5 + fVar16) * fVar11 * fVar12 + fVar3;
  rayEndpoint4Out[3] =
       ((1.0 - fVar17 * fVar17 * fVar13) * fVar17 * 0.5 + fVar17) *
       (fVar21 * fVar20 + fVar8 * fVar5 + fVar6 * -1.0) * fVar12 + fVar4;
  return;
}

