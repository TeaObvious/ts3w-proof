/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst static routing contract: Returns INTEGER lot level and optionally writes containing lot
   pointer. Uses lot spatial lookup at world XZ; selects alternate local-location conversion
   when00aff9d0 succeeds, otherwise existing Lot_WorldPositionToLocalLocation. No lot→level0.
   Initial decompiler stack reused LotXZLevel over float4; MOV/EAX/level consumers define the types.
    */

int __cdecl RoutePoint_ResolveLotAndLevel(float *param_1,undefined4 *param_2)

{
  void *pvVar1;
  uint uVar2;
  TS3WPortalXZLevel local_30;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  if (DAT_011edbc4 != (void *)0x0) {
    local_30.x = *param_1;
    local_30.z = param_1[1];
    local_30.level = (int)param_1[2];
    fStack_24 = param_1[3];
    local_20 = local_30.x;
    fStack_1c = local_30.z;
    fStack_18 = (float)local_30.level;
    fStack_14 = fStack_24;
    pvVar1 = LotSpatialIndex_FindContainingLotAtWorldXZ
                       (DAT_011edbc4,local_30.x,(float)local_30.level);
    *param_2 = pvVar1;
    if (pvVar1 != (void *)0x0) {
      local_30.x = -1.0;
      local_30.z = -1.0;
      local_30.level = 0;
      uVar2 = FUN_00aff9d0(pvVar1,param_1,(int *)0x0,1);
      if ((char)uVar2 == '\0') {
        Lot_WorldPositionToLocalLocation((void *)*param_2,param_1,(LotXZLevel *)&local_30);
        return local_30.level;
      }
      Lot_WorldPositionToPortalLocalXZLevel((void *)*param_2,param_1,&local_30);
      return local_30.level;
    }
  }
  return 0;
}

