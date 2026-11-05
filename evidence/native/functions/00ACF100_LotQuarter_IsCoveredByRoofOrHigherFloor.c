/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC1.67 original static instructions. cdecl3DWORDslots lot/packedquarter/countEave, RET,
   lowALBoolean. Signedlevel<-1 returnscovered; failed signedtile/livelotrange check
   returns(level<0). AF81A0 samplepoint atquarteredge-third; check roof atcurrentlevel with
   eavefalse. For eachsuccessivelevel<=lottop, floorpartmask viaA8E230 mode1 thenroofsample
   withsupplied countEave. Centre carriesintegerlevel andincrements withfloors. No global
   currentweather/frost query; this is geometric cover. Explicit host floor/roof projections
   andlive-range source are separate. */

bool __cdecl LotQuarter_IsCoveredByRoofOrHigherFloor(void *param_1,char *param_2,char param_3)

{
  int iVar1;
  void *this;
  bool bVar2;
  char cVar3;
  undefined4 uVar4;
  uint uVar5;
  undefined2 local_14;
  char local_12;
  undefined4 local_11;
  LotXZLevel local_c;
  
  cVar3 = param_2[2];
  if (cVar3 < -1) {
    return true;
  }
  bVar2 = Lot_IsSignedTileInBounds(param_1,param_2);
  if (!bVar2) {
    return cVar3 < '\0';
  }
  local_14 = *(undefined2 *)param_2;
  local_12 = param_2[2];
  iVar1 = *(int *)((int)param_1 + 0x180);
  this = *(void **)((int)param_1 + 0x2ac);
  local_11 = CONCAT31(local_11._1_3_,param_2[3]);
  local_c.x = -1.0;
  local_c.z = -1.0;
  local_c.level = 0;
  TilePart_GetLocalSamplePoint((char *)&local_14,&local_c);
  if (this == (void *)0x0) goto joined_r0x00acf1a8;
  uVar4 = RoofManager_TestPointCoverage(this,&local_c.x,(LPCRITICAL_SECTION)0x0,'\0');
  cVar3 = (char)uVar4;
  do {
    if (cVar3 != '\0') {
      return true;
    }
joined_r0x00acf1a8:
    do {
      if (iVar1 <= local_12) {
        return false;
      }
      local_12 = local_12 + '\x01';
      uVar5 = LotLevelSurface_TestCellMask
                        (*(void **)((int)param_1 + 0x290),(char *)&local_14,(byte)local_11,1);
      if ((char)uVar5 != '\0') {
        return true;
      }
      local_c.level = local_c.level + 1;
    } while (this == (void *)0x0);
    uVar4 = RoofManager_TestPointCoverage(this,&local_c.x,(LPCRITICAL_SECTION)0x0,param_3);
    cVar3 = (char)uVar4;
  } while( true );
}

