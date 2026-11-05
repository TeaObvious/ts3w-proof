/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67, instruction-qualified interpretation. cdecl point,outLot,outLocator three words plainRET, AL status. C687D0 containing lot failure leaves output untouched; found lot is written before ADC920 and B0D330, so later failure can retain outLot. No local explicit global-null guard here. Typed decompiler X/Z/level aliases reuse float4 input storage; physical input X at0 and Z at8. Full B0D330 distance/tie/corner/side/error policy remains open. */

undefined1 __cdecl FUN_00b10b60(float *param_1,undefined4 *param_2,undefined4 *param_3)

{
  undefined1 uVar1;
  void *lot;
  TS3WPortalXZLevel local_30;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  local_30.x = *param_1;
  local_30.z = param_1[1];
  local_30.level = (int)param_1[2];
  fStack_24 = param_1[3];
  local_20 = local_30.x;
  fStack_1c = local_30.z;
  fStack_18 = (float)local_30.level;
  fStack_14 = fStack_24;
  lot = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,local_30.x,(float)local_30.level);
  if (lot == (void *)0x0) {
    return 0;
  }
  *param_2 = lot;
  local_30.x = -1.0;
  local_30.z = -1.0;
  local_30.level = 0;
  Lot_WorldPositionToPortalLocalXZLevel(lot,param_1,&local_30);
  uVar1 = FUN_00b0d330((int)lot,&local_30.x,param_3);
  return uVar1;
}
