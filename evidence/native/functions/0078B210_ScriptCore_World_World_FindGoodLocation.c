/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011634d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_FindGoodLocation [assembly=ScriptCore token=0x0600079F; objId:
   System.UInt64, startPosition: Sims3.SimIFace.Vector3, directionToSelect: System.Int32,
   initialsearchDirection: System.Int32, facingMask: System.UInt32, booleanConstraints:
   System.UInt32, requiredRoomID: System.Int32, requiredPlatformRoomID: System.Int32,
   ValidatePlacementDelegate: System.Delegate, objIdsToIgnore: System.UInt64[], outPos:
   Sims3.SimIFace.Vector3&, outOrientation: System.Single&, bTestWorldOnly: System.Boolean,
   offsetScale: System.Int32, maxSearchRadius: System.Single; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   Analyst PC1.67 FindGoodLocation boundary contract. Registered ScriptCore.World name preserved.
   Managed declaration has15logical arguments; UInt64 and by-value12byte Vector3 expand
   to18stackwords. Explicit flattened parameters describe physical ABI, cdecl RET/caller cleanup and
   AL Boolean. Object lookup uses BOTH GUID words; missing object returns AL0 without output writes.
   Valid object is retained at+4 and released on all normal exits. worldOnly LOWBYTE nonzero ->
   B13130 world branch; otherwise containing-lot lookup at XZ selects B0F230, absent lot -> B13130
   with worldOnly0. Ignore array borrowed through hostslot68 ONLY on lot branch, ECXhost+three
   pushed args(handle,dataOut,countOut), callee cleanup. Local float triplet is
   {maxSearchRadius,startX,startZ}; pointer passed synchronously. Borrowed buffer/exception lifetime
   and world-branch algorithm remain unexpanded. Output vector is host handle, yaw direct float
   pointer; no universal failure overwrite or managed-callback acceptance inferred. */

bool __cdecl
ScriptCore.World::World_FindGoodLocation
          (uint objectIdLo,uint objectIdHi,float startX,float startY,float startZ,
          int directionToSelect,int initialSearchDirection,uint facingMask,uint booleanConstraints,
          int requiredRoomId,int requiredPlatformRoomId,void *placementDelegate,
          void *ignoredIdsHandle,void *outPositionHandle,float *outYaw,bool worldOnly,
          int offsetScale,float maxSearchRadius)

{
  int iVar1;
  bool bVar2;
  undefined1 uVar3;
  void *pvVar4;
  undefined4 *object;
  int *piVar5;
  ulonglong *local_14;
  undefined4 *local_10;
  float local_c;
  float local_8;
  float local_4;
  
  local_c = maxSearchRadius;
  local_8 = startX;
  local_4 = startZ;
  pvVar4 = ObjectRegistry_GetGlobal();
  object = ObjectRegistry_FindBorrowed(pvVar4,CONCAT44(objectIdHi,objectIdLo));
  if (object == (undefined4 *)0x0) {
    return false;
  }
  LOCK();
  object[1] = object[1] + 1;
  UNLOCK();
  local_10 = object;
  if (!worldOnly) {
    pvVar4 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,startX,startZ);
    if (pvVar4 == (void *)0x0) {
      uVar3 = FUN_00b13130(object,startX,startY,startZ,directionToSelect,initialSearchDirection,
                           facingMask,booleanConstraints,requiredRoomId,requiredPlatformRoomId,
                           outPositionHandle,outYaw,(int)placementDelegate,'\0',offsetScale,&local_c
                          );
      FUN_007462e0((int *)&local_10);
      return (bool)uVar3;
    }
    local_14 = (ulonglong *)0x0;
    maxSearchRadius = 0.0;
    if (ignoredIdsHandle != (void *)0x0) {
      piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
      (**(code **)(*piVar5 + 0x68))(piVar5,ignoredIdsHandle,&local_14,(uint *)&maxSearchRadius);
    }
                    /* Host wrote rawDWORD count into caller argument storage previously used for
                       float maxSearchRadius. Decompiled (uint)maxSearchRadius is
                       overlapping-storage/type artifact, NOT numeric float->uint conversion;
                       instructions simply MOV/PUSH rawbits. */
    bVar2 = LotFgl_FindWithZeroDepthRange
                      (object,startX,startY,startZ,directionToSelect,initialSearchDirection,
                       facingMask,booleanConstraints,requiredRoomId,requiredPlatformRoomId,
                       placementDelegate,outPositionHandle,outYaw,offsetScale,&local_c,local_14,
                       (uint)maxSearchRadius);
    FUN_007462e0((int *)&local_10);
    return bVar2;
  }
  uVar3 = FUN_00b13130(object,startX,startY,startZ,directionToSelect,initialSearchDirection,
                       facingMask,booleanConstraints,requiredRoomId,requiredPlatformRoomId,
                       outPositionHandle,outYaw,(int)placementDelegate,'\x01',offsetScale,&local_c);
  piVar5 = object + 1;
  LOCK();
  iVar1 = *piVar5;
  *piVar5 = *piVar5 + -1;
  UNLOCK();
  if (iVar1 == 1) {
    LOCK();
    *piVar5 = 1;
    UNLOCK();
    (**(code **)*object)(1);
  }
  return (bool)uVar3;
}

