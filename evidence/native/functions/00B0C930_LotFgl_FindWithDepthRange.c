/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 FindGoodLocation boundary contract. cdecl19physical stackwords, AL success.
   Requires containinglot at XZ; converts world XYZ to local XZ+integerlevel, initializes query via
   AFD980. Stores direction words at query+14/+18; facing BYTE+1C = fullword facingMask==0
   ?1:LOWBYTE(facingMask), so256 stores0. Requiredroom/platform at+20/+24, delegate+28.
   Constraintbits0..6
   ->bytes2C..32;15/16->33/34;11/12->36/37;17/18/19->38/39/3A;22/23/24/25->3B/3C/3D/3E; separate+35
   object-derived predicate requires resourceA4bit14 and9Bbit0. Depthfloats+40/+44, offset+48,
   ignorepointer/count+4C/+50, radiusOrigintriplet+54/+58/+5C copied unchanged. B459B0 supplies
   local location,direction and free-yaw. Only on ALsuccess writes optional vector via
   ADC750/AB7040/B0C5E0/76BF70; missinglot/searchfailure leaves externaloutputs untouched.
   Optionalyaw: constraintbit23 uses returned freeangle; else signed FILD32 direction, FMUL
   storedFLOAT32bits3F490FDA, FSTPfloat, virtual lot+68 returns ST0 then FADD/FSTPfloat.
   Storedfactor0.7853981256484985, not exact pi/4. Positionheight/helper failures, queryctor
   defaults and full candidate semantics remain open. */

bool __cdecl
LotFgl_FindWithDepthRange
          (void *object,float startX,float startY,float startZ,int directionToSelect,
          int initialSearchDirection,uint facingMask,uint booleanConstraints,int requiredRoomId,
          int requiredPlatformRoomId,void *placementDelegate,float minDepth,float maxDepth,
          void *outPositionHandle,float *outYaw,int offsetScale,float *radiusOrigin,
          ulonglong *ignoredIds,uint ignoredCountRaw)

{
  float fVar1;
  bool bVar2;
  int *lot;
  int iVar3;
  byte bVar4;
  float10 fVar5;
  float fVar6;
  int local_e8;
  float local_e4;
  LotPaintPoint local_e0;
  float fStack_d4;
  LotXZLevel local_cc;
  void *local_c0;
  int *local_bc;
  float local_b8;
  float local_b4;
  int local_b0;
  int local_ac;
  int local_a8;
  undefined1 local_a4;
  int local_a0;
  int local_9c;
  void *local_98;
  byte local_94;
  byte local_93;
  byte local_92;
  byte local_91;
  byte local_90;
  byte local_8f;
  byte local_8e;
  byte local_8d;
  byte local_8c;
  undefined1 local_8b;
  byte local_8a;
  byte local_89;
  byte local_88;
  byte local_87;
  byte local_86;
  byte local_85;
  byte local_84;
  byte local_83;
  byte local_82;
  float local_80;
  float local_7c;
  int local_78;
  ulonglong *local_74;
  uint local_70;
  float local_6c;
  float local_68;
  float local_64;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  undefined4 uStack_48;
  undefined4 uStack_44;
  float local_40;
  float fStack_3c;
  undefined4 uStack_38;
  undefined4 uStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20 [7];
  
  lot = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,startX,startZ);
  if (lot == (int *)0x0) {
    return false;
  }
  local_e0.level = (int)startZ;
  fStack_d4 = startX;
  local_e0.x = startX;
  local_e0.z = startY;
  local_30 = startX;
  fStack_2c = startY;
  fStack_28 = startZ;
  fStack_24 = startX;
  local_cc.x = -1.0;
  local_cc.z = -1.0;
  local_cc.level = 0;
  Lot_WorldPositionToLocalLocation(lot,&local_30,&local_cc);
  FUN_00afd980(&local_c0);
  local_b4 = local_cc.z;
  local_a8 = initialSearchDirection;
  local_b8 = local_cc.x;
  local_c0 = object;
  local_b0 = local_cc.level;
  local_ac = directionToSelect;
                    /* Store onlyLOWBYTE facingMask; default1 branch tests FULL32bit argument.
                       Nonzero256 becomeszero storedmask. */
  local_a4 = (undefined1)facingMask;
  if (facingMask == 0) {
    local_a4 = 1;
  }
  local_a0 = requiredRoomId;
  local_9c = requiredPlatformRoomId;
  local_94 = (byte)booleanConstraints & 1;
  local_93 = (byte)(booleanConstraints >> 1) & 1;
  local_92 = (byte)(booleanConstraints >> 2) & 1;
  local_91 = (byte)(booleanConstraints >> 3) & 1;
  local_90 = (byte)(booleanConstraints >> 4) & 1;
  local_8f = (byte)(booleanConstraints >> 5) & 1;
  local_8e = (byte)(booleanConstraints >> 6) & 1;
  local_bc = lot;
  if ((((object == (void *)0x0) ||
       (iVar3 = ObjectCatalog_FindByTypedKey(DAT_011ee034,(uint *)((int)object + 0x18)), iVar3 == 0)
       ) || ((*(uint *)(iVar3 + 0xa4) >> 0xe & 1) == 0)) || ((*(byte *)(iVar3 + 0x9b) & 1) == 0)) {
    local_8b = 0;
  }
  else {
    local_8b = 1;
  }
  local_8a = (byte)(booleanConstraints >> 0xb) & 1;
  local_89 = (byte)(booleanConstraints >> 0xc) & 1;
  local_8d = (byte)(booleanConstraints >> 0xf) & 1;
  local_8c = (byte)(booleanConstraints >> 0x10) & 1;
  local_88 = (byte)(booleanConstraints >> 0x11) & 1;
  local_87 = (byte)(booleanConstraints >> 0x12) & 1;
  local_86 = (byte)(booleanConstraints >> 0x13) & 1;
  local_85 = (byte)(booleanConstraints >> 0x16) & 1;
  local_84 = (byte)(booleanConstraints >> 0x17) & 1;
  local_98 = placementDelegate;
  bVar4 = (byte)(booleanConstraints >> 0x18);
  local_83 = bVar4 & 1;
  local_70 = ignoredCountRaw;
  local_78 = offsetScale;
  local_6c = *radiusOrigin;
  local_74 = ignoredIds;
  local_68 = radiusOrigin[1];
  local_64 = radiusOrigin[2];
  local_80 = minDepth;
  local_7c = maxDepth;
  local_e0.x = -1.0;
  local_e0.z = -1.0;
  local_82 = bVar4 >> 1 & 1;
  local_e0.level = 0;
  local_e4 = 0.0;
  bVar2 = LotFgl_SearchCandidates((int *)&local_c0,&local_e0.x,&local_e8,&local_e4);
  if (!bVar2) {
    return false;
  }
  if (outPositionHandle != (void *)0x0) {
    LotPoint_ResolveLevelPosition((undefined *)lot,&local_e0,local_20);
    Lot_LocalPositionToWorldVector(lot,local_20,&local_50);
    fVar5 = FUN_00b0c5e0(object,lot,(undefined1 (*) [12])&local_e0);
    fStack_54 = (float)fVar5;
    local_60 = fStack_4c + fStack_54;
    fStack_5c = fStack_4c + fStack_54;
    fStack_58 = fStack_4c + fStack_54;
    fStack_54 = fStack_4c + fStack_54;
    local_40 = local_50;
    fStack_3c = fStack_4c;
    uStack_38 = uStack_48;
    uStack_34 = uStack_44;
    FUN_0076bf70(outPositionHandle,local_50,local_60,uStack_48);
  }
  if (outYaw != (float *)0x0) {
    if (local_84 != 0) {
      *outYaw = local_e4;
      return true;
    }
    fVar1 = (float)local_e8 * DAT_011845d4;
                    /* ECXlot, zero stackargs; original return in x87 ST0, not EAX. Directionproduct
                       already rounded to FLOAT32 before addition. */
    fVar6 = (**(code **)(*lot + 0x68))(lot);
    *outYaw = fVar6 + fVar1;
  }
  return true;
}

