/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst-assigned name. Native puddle predicate: Seasons gate, optional valid-lot-tile check, sea
   exclusion offlot/waterlot, CPU noise*wetness/255>=.1. Assume-wet selects1. Any admitted lot
   passes after noise; offlot additionally requires world normalY>=.98. Decompiler receiver of
   D6DF30 is unresolved ABI output, not an uninitialized original pointer. */

undefined4 Seasons_HasRainPuddleAtPoint(float *param_1,void *param_2,char param_3,char param_4)

{
  char cVar1;
  undefined3 extraout_var;
  undefined4 *puVar2;
  undefined4 *extraout_EAX;
  undefined4 *extraout_EAX_00;
  float10 fVar3;
  float fVar4;
  float local_38;
  void *local_34;
  TS3WPortalXZLevel local_30;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  cVar1 = CachedGlobalMask8000_Query();
  puVar2 = (undefined4 *)CONCAT31(extraout_var,cVar1);
  if (cVar1 == '\0') goto LAB_00d6e195;
  if (param_2 == (void *)0x0) {
LAB_00d6e09c:
    if (DAT_011edbc4 != (void *)0x0) {
      fVar3 = WorldWater_GetSeaLevel((int)DAT_011edbc4);
      local_38 = (float)fVar3;
      local_20 = param_1[1];
      puVar2 = extraout_EAX;
      local_30.x = local_38;
      if (local_20 < local_38) goto LAB_00d6e195;
    }
  }
  else {
    if (param_3 != '\0') {
      local_30.x = -1.0;
      local_30.z = -1.0;
      local_30.level = 0;
      Lot_WorldPositionToPortalLocalXZLevel(param_2,param_1,&local_30);
      local_38 = -1.714704e+38;
      LotLocation_EncodeCellAndQuadrant(&local_30.x,(char *)&local_38);
      puVar2 = (undefined4 *)FUN_00ab0250(param_2,(char *)&local_38);
      if ((char)puVar2 == '\0') goto LAB_00d6e195;
    }
    if (((*(int *)((int)param_2 + 0x408) == 1) && (*(int *)((int)param_2 + 0x40c) == 0x50)) ||
       (*(char *)((int)param_2 + 0x4b0) != '\0')) goto LAB_00d6e09c;
  }
  fVar3 = FUN_00d6df30(local_34,param_1);
  local_34 = (void *)(float)fVar3;
  if (param_4 == '\0') {
    fVar4 = _DAT_011ef140;
  }
  else {
    fVar4 = 1.0;
  }
  puVar2 = extraout_EAX_00;
  if (0.1 <= fVar4 * (float)local_34 * 0.003921569) {
    if (param_2 != (void *)0x0) {
      return CONCAT31((int3)((uint)extraout_EAX_00 >> 8),1);
    }
    local_30.x = *param_1;
    local_30.z = param_1[1];
    local_30.level = (int)param_1[2];
    fStack_24 = param_1[3];
    local_20 = local_30.x;
    fStack_1c = local_30.z;
    fStack_18 = (float)local_30.level;
    fStack_14 = fStack_24;
    puVar2 = FUN_00c6a9d0(DAT_011edbc4,&local_20,local_30.x,(float)local_30.level);
    if (0.98 <= fStack_1c) {
      return CONCAT31((int3)((uint)puVar2 >> 8),1);
    }
  }
LAB_00d6e195:
  return (uint)puVar2 & 0xffffff00;
}

