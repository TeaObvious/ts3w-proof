/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163588 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetLotLocationAtFloorImpl [assembly=ScriptCore token=0x060007B5;
   worldPos: Sims3.SimIFace.Vector3, location: Sims3.SimIFace.LotLocation&, roomDefinition:
   Sims3.SimIFace.eRoomDefinition; return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 __cdecl
ScriptCore.World::World_GetLotLocationAtFloorImpl
          (float param_1,undefined4 param_2,float param_3,int *param_4,int param_5)

{
  short sVar1;
  void *pvVar2;
  undefined4 uVar3;
  undefined4 local_34;
  LotXZLevel local_2c;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  float fStack_14;
  
  uVar3 = 0;
  local_34 = 0;
  local_2c.x = -1.0;
  local_2c.z = -1.0;
  local_2c.level = 0;
  if (DAT_011edbc4 != (void *)0x0) {
    pvVar2 = LotSpatialIndex_FindContainingLotAtWorldXZ(DAT_011edbc4,param_1,param_3);
    if (pvVar2 != (void *)0x0) {
      local_34 = *(undefined4 *)((int)pvVar2 + 0x4c);
      uVar3 = *(undefined4 *)((int)pvVar2 + 0x48);
      local_20 = param_1;
      uStack_1c = param_2;
      fStack_18 = param_3;
      fStack_14 = param_1;
      Lot_WorldPositionToLocalLocationAtFloor(pvVar2,&local_20,&local_2c);
      if (*(void **)((int)pvVar2 + 0x298) != (void *)0x0) {
        sVar1 = LotRoom_ResolveForLocalLocation
                          (*(void **)((int)pvVar2 + 0x298),&local_2c.x,param_5,0);
        *(short *)((int)param_4 + 10) = sVar1;
      }
    }
  }
  *param_4 = (int)ROUND(local_2c.x) + -1 +
             (uint)((uint)(local_2c.x - (float)(int)ROUND(local_2c.x)) < 0x80000001);
  param_4[1] = (int)ROUND(local_2c.z) + -1 +
               (uint)((uint)(local_2c.z - (float)(int)ROUND(local_2c.z)) < 0x80000001);
  *(undefined1 *)(param_4 + 2) = (undefined1)local_2c.level;
  return CONCAT44(local_34,uVar3);
}

