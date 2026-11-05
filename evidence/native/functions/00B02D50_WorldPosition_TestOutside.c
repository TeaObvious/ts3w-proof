/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Original instruction review; analyst name. cdecl worldfloat3 pointer and low-byte mode,
   BooleanAL. Missingworld/containinglot returns true. Converts world position to localXZ plus
   signedinteger level via00adc920. Mode0 checks coverageowner+2ac through00b94bb0; nonzero coverage
   result returns false. Then scans upward to signedlot maximumlevel+180: first nonzero
   LightBlocking room queried with invalid-policy0 returns cached classification00b4c3e0(room,true);
   if current LightBlocking and LoadBearing rooms bothzero returns true; otherwise increments
   integerlevel. Query AX is explicitly MOVZX to unsigned16 for classification. Full coverage and
   classification-cache production remain open. Do not replace this with roomId==0. */

bool __cdecl WorldPosition_TestOutside(float *param_1,char param_2)

{
  void *this;
  int iVar1;
  char cVar2;
  bool bVar3;
  ushort uVar4;
  short sVar5;
  void *lot;
  undefined4 uVar6;
  TS3WPortalXZLevel local_2c;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_011edbc4 == (void *)0x0) {
    return true;
  }
  lot = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,*param_1,param_1[2]);
  if (lot == (void *)0x0) {
    return true;
  }
  fStack_18 = param_1[2];
  fStack_1c = param_1[1];
  local_2c.x = -1.0;
  local_2c.z = -1.0;
  local_20 = *param_1;
  local_2c.level = 0;
  fStack_14 = local_20;
  Lot_WorldPositionToPortalLocalXZLevel(lot,&local_20,&local_2c);
  if (param_2 == '\0') {
    if (*(void **)((int)lot + 0x2ac) == (void *)0x0) goto LAB_00b02e27;
    uVar6 = RoofManager_TestPointCoverage
                      (*(void **)((int)lot + 0x2ac),&local_2c.x,(LPCRITICAL_SECTION)0x0,'\0');
    cVar2 = (char)uVar6;
  }
  else {
    cVar2 = FUN_00aba0d0(lot,&local_2c.x,'\0','\x01');
  }
  if (cVar2 != '\0') {
    return false;
  }
LAB_00b02e27:
  this = *(void **)((int)lot + 0x298);
  iVar1 = *(int *)((int)lot + 0x180);
  if (local_2c.level <= iVar1) {
    do {
      uVar4 = LotRoom_ResolveForLocalLocation(this,&local_2c.x,0,0);
      if (uVar4 != 0) {
        bVar3 = LotRoom_TestOutsideClassification(this,(uint)uVar4,1);
        return bVar3;
      }
      sVar5 = LotRoom_ResolveForLocalLocation(this,&local_2c.x,1,0);
    } while ((sVar5 != 0) && (local_2c.level = local_2c.level + 1, local_2c.level <= iVar1));
  }
  return true;
}

