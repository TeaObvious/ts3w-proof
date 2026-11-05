/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 FindGoodLocation boundary contract. cdecl17physical stackwords, caller
   removes44hex bytes. Forwards to B0C930 inserting two FLOAT32 +0.0 depth words via FLDZ/FST/FSTP;
   ADD ESP,4C then RET preserves AL result. Former void decompiler signature was wrong. No search
   implementation or additional validation here; depth semantic names joined to original
   custom-depth managed declaration and adjacent caller layout, full world/custom-depth path remains
   open. */

bool __cdecl
LotFgl_FindWithZeroDepthRange
          (void *object,float startX,float startY,float startZ,int directionToSelect,
          int initialSearchDirection,uint facingMask,uint booleanConstraints,int requiredRoomId,
          int requiredPlatformRoomId,void *placementDelegate,void *outPositionHandle,float *outYaw,
          int offsetScale,float *radiusOrigin,ulonglong *ignoredIds,uint ignoredCountRaw)

{
  bool bVar1;
  
  bVar1 = LotFgl_FindWithDepthRange
                    (object,startX,startY,startZ,directionToSelect,initialSearchDirection,facingMask
                     ,booleanConstraints,requiredRoomId,requiredPlatformRoomId,placementDelegate,0.0
                     ,0.0,outPositionHandle,outYaw,offsetScale,radiusOrigin,ignoredIds,
                     ignoredCountRaw);
  return bVar1;
}

