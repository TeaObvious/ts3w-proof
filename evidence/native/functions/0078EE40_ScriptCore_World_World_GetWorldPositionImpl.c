/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 6; earlier snapshot context. */
/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */



/* Verified PC 1.67 registration table at 0x011635a8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetWorldPositionImpl [assembly=ScriptCore token=0x060007B9; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation, worldPos: Sims3.SimIFace.Vector3&;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl
ScriptCore.World::World_GetWorldPositionImpl
          (int param_1,int param_2,int param_3,int param_4,char param_5,float *param_6)

{
  int *lot;
  float fVar1;
  float fVar2;
  float fVar3;
  LotPaintPoint local_3c;
  float local_30;
  float fStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  float local_20 [7];
  
  local_30 = 0.0;
  fStack_2c = 0.0;
  fStack_28 = 0.0;
  uStack_24 = 0;
  fVar1 = 0.0;
  fVar2 = 0.0;
  fVar3 = 0.0;
  if (DAT_011edbc4 != (void *)0x0) {
    lot = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    if (lot != (int *)0x0) {
      local_3c.level = (int)param_5;
      local_3c.x = (float)param_3 + 0.5;
      local_3c.z = (float)param_4 + 0.5;
      LotPoint_ResolveLevelPosition((undefined *)lot,&local_3c,local_20);
      Lot_LocalPositionToWorldVector(lot,local_20,&local_30);
    }
    fVar1 = local_30;
    fVar2 = fStack_2c;
    fVar3 = fStack_28;
  }
  *param_6 = fVar1;
  param_6[1] = fVar2;
  param_6[2] = fVar3;
  return;
}

